<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Building as Model;

class Building extends Base
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
        $list = $model->where(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
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
        $model = Loader::model('Building');
        $result = $model->data(input('post.'))->save();
        return result($result,'添加建筑成功！', '添加建筑失败！');
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
        $result = $model->save(input("post."),['bui_id' => input('post.bui_id')]);
        return result($result,'修改建筑信息成功！', '修改建筑信息失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        return result($result,'删除建筑信息成功！', '删除建筑信息失败！');
    }

}
