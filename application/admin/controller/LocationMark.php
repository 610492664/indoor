<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\LocationMark as Model;

class LocationMark extends Base
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
        $model = Loader::model('LocationMark');
        $result = $model->data(input('post.'))->save();
        return result($result,'添加信标成功！', '添加信标失败！');
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
        $result = $model->save(input("post."),['lmar_id' => input('post.lmar_id')]);
        return result($result,'修改信标成功！', '修改信标失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        return result($result,'删除信标成功！', '删除信标失败！');
    }

}
