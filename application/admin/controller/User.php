<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\User as Model;

class User extends Base
{

    public function index()
    {
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
        $org_id = '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
        $records = Model::all(['org_id'=> $org_id]);
//       dump($records);exit;
        return $records;
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
        $model = Loader::model('user');
        $result = $model->data(input('post.'), true)->save();
        return result($result,'添加用户成功！', '添加用户失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $model = Model::get($id);
        $detail = $model->getData();
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    public function update()
    {
        $model = new Model;
        $result = $model->save(input("post."),['id' => input('post.id')]);
        return result($result,'修改用户信息成功！', '修改用户信息失败！');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        return result($result,'删除用户成功！', '删除用户失败！');
    }

}
