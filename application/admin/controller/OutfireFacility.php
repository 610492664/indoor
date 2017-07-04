<?php
namespace app\admin\controller;

use app\admin\model\Building as BuildingModel;
use think\Db;
use \Think\Loader;
use \app\admin\model\OutfireFacility as Model;

class OutfireFacility extends Base
{
    public function index()
    {
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
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
            ->where(['bui.org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])
            ->select();
        return $list;
    }
    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $detail = Model::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //获取添加表单
    public function add()
    {
//        Db::name('building')->where(['orgid'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
//        BuildingModel::all(['orgid'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}']);
        $buildings = Db::name('building')->field('bui_id, name')->where(['org_id'=> '{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
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

    //添加到数据库
    public function insert()
    {
        $model = Loader::model('OutfireFacility');
        $result = $model->data(input('post.'))->save();
        return result($result,'添加消防设施成功！', '添加消防设施失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $detail = Model::get($id);
        $buildings = Db::name('building')->field('bui_id, name')->where(['org_id'=> '{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
        $buildings = Db::name('floor')->field('flo_id, number')->where(['org_id'=> '{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
        $this->assign('buildings', $buildings);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {
        $model = new Model;
        $result = $model->save(input("post."),['lmar_id' => input('post.lmar_id')]);
        return result($result,'修改消防设施成功！', '修改消防设施失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        return result($result,'删除消防设施成功！', '删除消防设施失败！');
    }

}
