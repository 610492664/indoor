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
            $this->breadCrumb();
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
        return ["data"=>$list, "dataMap"=> get_data('outfire_facility')];
    }

    //获取添加表单
    public function add()
    {
        if ($this->request->isPost()) {
            $model = Loader::model('OutfireFacility');
            $result = $model->validate(true, [], true)->save(input('post.'));
            if(!empty($result)){
                $this->success('添加消防设施成功！', '');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加消防设施失败！');
            }
        }
        $buildings = Db::name('building')->field('bui_id, name')->where(['org_id'=> input('session.user.org_id')])->select();
        $this->assign('buildings', $buildings);
        $this->assign('title', '添加消防设施信息');
        return $this->fetch();
    }
    /*//获取楼层
    public function floors()
    {
        $floors = Db::name('floor')->field('flo_id, number')->where(['bui_id'=>input('get.bui_id')])->order('number')->select();
        $floorStr = "";
        foreach ($floors as $floor){
            $floorStr .= '<option value="'.$floor['flo_id'].'">第'.$floor['number'].'层</option>';
        }
        return $floorStr;
    }*/

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = new SubModel;
            $result = $model->validate(true, [], true)->save(input("post."),['ofac_id' => input('post.ofac_id')]);
            if(!empty($result)){
                $this->success('修改消防设施成功！', '');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改消防设施失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id);
        $buildings = Db::name('building')->field('bui_id, name')->where(['org_id'=> input('session.user.org_id')])->select();
        $floors = Db::name('floor')->field('flo_id, number')->where(['bui_id'=>$detail['bui_id']])->order('number')->select();
        $this->assign('buildings', $buildings);
        $this->assign('floors', $floors);
        $this->assign('detail',$detail);
        $this->assign('title', '修改消防设施信息');
        return $this->fetch('add');
    }

    public function set()
    {
        $model = new SubModel;
        $pk = $model->getPk();
        $post = input('post.');
        $data = [$pk => $post['id'], $post['name'] => $post['value']];
        $result = $model->isUpdate()->data($data)->save();
        !empty($result) ? $this->success('操作成功！', '') : $this->error('操作失败！');
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
