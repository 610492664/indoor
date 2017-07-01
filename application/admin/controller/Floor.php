<?php
namespace app\admin\controller;

use app\admin\model\Building as BuildingModel;
use \Think\Loader;
use \app\admin\model\Floor as Model;

class Floor extends Base
{
    public function index()
    {
        /**@var $buildingModel BuildingModel */
        $buildingModel = Loader::model('Building');
        $buildings = $buildingModel->field(['bui_id','name'])->where(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
        $this->assign('buildings', $buildings);
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
        $model = new Model();
        $list = $model->where(['bui_id'=>input('get.bui_id')])->select();
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
    public function add(){
        return $this->fetch();
    }
    //添加到数据库
    public function insert()
    {
       /* @var $model Model*/
        $model = Loader::model('Floor');
        $result = $model->data(input('post.'))->save();
        return result($result,'添加楼层成功！', '添加楼层失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $detail = Model::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {
        $model = new Model;
        $result = $model->save(input("post."),['flo_id' => input('post.flo_id')]);
        return result($result,'修改楼层信息成功！', '修改楼层信息失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        return result($result,'删除楼层信息成功！', '删除楼层信息失败！');
    }

}
