<?php
namespace app\admin\controller;

use app\admin\model\Building as BuildingModel;
use think\Db;
use \Think\Loader;
use \app\admin\model\OutfireFacility as SubModel;

class OutfireFacility extends Base
{
    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '消防设备管理');
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $model = model('outfire_facility');
        $list = $model->alias('ofac')
            ->field('
            ofac.ofac_id,
            ofac.number,
            ofac.name,
            ofac.type,
            flo.number flo_number,
            bui.name bui_name,
            ofac.coordinate,
            ofac.place_time,
            ofac.status
          ')
            ->join('__BUILDING__ bui', 'ofac.bui_id = bui.bui_id','LEFT')
            ->join('__FLOOR__ flo', 'ofac.flo_id = flo.flo_id','LEFT')
            ->where(['bui.org_id'=>$org_id])
            ->select();
        return $list;
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //获取添加表单
    public function add()
    {
        if ($this->request->isPost()) {
            $model = Loader::model('OutfireFacility');
            $result = $model->data(input('post.'))->save();
            if(!empty($result)){
                $this->success('添加消防设施成功！', '');
            }else{
                $this->error('添加消防设施失败！');
            }
        }
//        Db::name('building')->where(['orgid'=>input('session.user.org_id')])->select();
//        BuildingModel::all(['orgid'=>input('session.user.org_id')]);
        $buildings = Db::name('building')->field('bui_id, name')->where(['org_id'=> input('session.user.org_id')])->select();
        $this->assign('buildings', $buildings);
        return $this->fetch();
    }
    //获取楼层
    public function floors()
    {
        $floors = Db::name('floor')->field('flo_id, number')->where(['bui_id'=>input('get.bui_id')])->order('number')->select();
        $floorStr = "";
        foreach ($floors as $floor){
            $floorStr .= '<option value="'.$floor['flo_id'].'">第'.$floor['number'].'层</option>';
        }
        return $floorStr;
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = new SubModel;
            $result = $model->save(input("post."),['lmar_id' => input('post.lmar_id')]);
            if(!empty($result)){
                $this->success('修改消防设施成功！', '');
            }else{
                $this->error('修改消防设施失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id);
        $buildings = Db::name('building')->field('bui_id, name')->where(['org_id'=> input('session.user.org_id')])->select();
        $buildings = Db::name('floor')->field('flo_id, number')->where(['org_id'=> input('session.user.org_id')])->select();
        $this->assign('buildings', $buildings);
        $this->assign('detail',$detail);
        return $this->fetch();
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除消防设施成功！', '');
        }else{
            $this->error('删除消防设施失败！');
        }
    }

}
