<?php
namespace app\system\controller;

use \Think\Loader;
use \app\system\model\User as SubModel;
use \app\admin\controller\Base;
use \think\Db;

class User extends Base
{

    public function index()
    {
        if(input('?param.view')){
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $records = SubModel::all(['org_id'=> $org_id], 'role');
        return $records;
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
    public function add(){
        return $this->fetch();
    }
    //添加到数据库
    public function insert()
    {
        /* @var $model SubModel*/
        $model = Loader::model('user');
        $result = $model->data(input('post.'), true)->save();
        return result($result,'添加用户成功！', '添加用户失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $model = SubModel::get($id);
        $detail = $model->getData();
        $roles = Db::name('role')
            ->where(['status'=>1, 'org_id'=> input('session.user.org_id')])
            ->field('rol_id,name')
            ->select();
        $this->assign('detail',$detail);
        $this->assign('roles',$roles);
        return $this->fetch();
    }

    public function update()
    {
        $model = new SubModel;
        $result = $model->save(input("post."),['use_id' => input('post.use_id')]);
        return result($result,'修改用户信息成功！', '修改用户信息失败！');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        return result($result,'删除用户成功！', '删除用户失败！');
    }

}
