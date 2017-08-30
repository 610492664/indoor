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
            $this->assign('title', '用户管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $records = SubModel::all(['org_id'=> $org_id], 'role');
        return $records;
    }
    //获取添加表单
    public function add(){
        if(request()->isPost()){
            /* @var $model SubModel*/
            $model = Loader::model('user');
            $result = $model->validate(true, [], true)->allowField(true)->save(input('post.'));
            if(!empty($result)){
                $this->success('添加用户成功！', '');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加用户失败！');
            }
        }
        $roles = Db::name('role')
            ->where(['status'=>0, 'org_id'=> input('session.user.org_id')])
            ->field('rol_id,name')
            ->select();
        $this->assign('roles',$roles);
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if(request()->isPost()){
            $model = new SubModel;
            $result = $model->validate('User.mod', [], true)->save(input("post."),['use_id' => input('post.use_id')]);
            if(!empty($result)){
                $this->success('修改用户信息成功！', '');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改用户信息失败！');
            }
        }
        $id = input('get.id');
        $model = SubModel::get($id);
        $detail = $model->getData();
        $roles = Db::name('role')
            ->where(['status'=>0, 'org_id'=> input('session.user.org_id')])
            ->field('rol_id,name')
            ->select();
        $this->assign('detail',$detail);
        $this->assign('roles',$roles);
        return $this->fetch();
    }

    //用户修改信息
    public function selfInfo()
    {
        if(request()->isPost()){
            $model = new SubModel;
            $post = input("post.");
            $use_id = input('session.user.use_id');
            $post['use_id'] = $use_id;
            $result = $model->validate('User.self_info', [], true)->save($post, ['use_id' => $use_id]);
            if(!empty($result)){
                $this->success('修改用户信息成功！', '');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改用户信息失败！');
            }
        }
        $id = input('session.user.use_id');
        $model = SubModel::get($id);
        $detail = $model->getData();
        $this->assign('detail',$detail);
        return $this->fetch();
    }

    //用户修改密码
    public function selfPass()
    {
        if(request()->isPost()){
            $post = input("post.");
            $use_id = input('session.user.use_id');
            $model = new SubModel;
            $checkpass = $model->where(['use_id'=>$use_id, 'password'=>password_encrypt($post['oldpassword'])])->find();
            empty($checkpass)&&$this->error('修改失败，旧密码错误！', '');
            $result = $model->validate('User.self_pass', [], true)->allowField(true)->save($post,['use_id' => $use_id]);
            if(!empty($result)){
                $this->success('修改密码成功！', '');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改密码失败！');
            }
        }
        $id = input('session.user.use_id');
        $model = SubModel::get($id);
        $detail = $model->getData();
        $this->assign('detail',$detail);
        return $this->fetch();
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除用户成功！', '');
        }else{
            $this->error('删除用户失败！');
        }
    }

    /**
     * 用户禁用/启用
     */
    public function forbid() {
        $model = new SubModel;
        $post = input('post.');
        $data = ['use_id' => $post['id'], $post['name'] => $post['value']];
        $result = $model->save($data,['use_id' => input('post.id')]);
        !empty($result) ? $this->success('操作成功！', '') : $this->error('操作失败！');
    }

    public function resetPass()
    {
        return parent::resetPass();
    }


}
