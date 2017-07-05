<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Incident as Model;

class Incident extends Base
{
    public function index()
    {
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
        $model = new Model();
        $org_id = '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
        $list = $model->where(['org_id'=> $org_id])->select();
        Model::all();
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
        $model = Loader::model('incident');
        $buiding = \app\admin\model\Building::get('{BFF5481F-A3DF-F185-927A-83FF572351DB}');
        $result = $model->data(input('post.'))->save();
        $model->buildings()->save($buiding);
        return result($result,'添加事件成功！', '添加事件失败！');
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
        $result = $model->save(input("post."),['inc_id' => input('post.inc_id')]);
        return result($result,'修改事件成功！', '修改事件失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        return result($result,'删除事件成功！', '删除事件失败！');
    }

}
