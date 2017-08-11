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
        if(request()->isPost()){
            /* @var $model SubModel*/
            $model = Loader::model('user');
            $result = $model->data(input('post.'), true)->save();
            if(!empty($result)){
                $this->success('添加用户成功！', '');
            }else{
                $this->error('添加用户失败！');
            }
        }
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if(request()->isPost()){
            $model = new SubModel;
            $result = $model->save(input("post."),['use_id' => input('post.use_id')]);
            if(!empty($result)){
                $this->success('修改用户信息成功！', '');
            }else{
                $this->error('修改用户信息失败！');
            }
        }
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
     * 用户禁用
     */
    public function forbid() {
        $model = new SubModel;
        $post = input('post.');
        $data = ['use_id' => $post['id'], $post['name'] => $post['value']];
        $result = $model->save($data,['use_id' => input('post.id')]);
        !empty($result) ? $this->success('操作成功！', '') : $this->error('操作失败！');
        /*if (DataService::update($this->table)) {
            $this->success("权限禁用成功！", '');
        }
        $this->error("权限禁用失败，请稍候再试！");*/
    }

}
