<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Building as SubModel;

class Building extends Base
{
    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '建筑管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $model = new SubModel();
        $list = $model->where(['org_id'=>$org_id])->select();
        return $list;
    }
    //获取添加表单
    public function add(){
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = Loader::model('Building');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post);
            if(!empty($result)){
                $this->success('添加建筑成功！', '');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加建筑失败！');
            }
        }
        $this->assign('title', '添加建筑');
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = Loader::model('Building');
            $bui_id = input('post.bui_id');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post,['bui_id' => $bui_id]);
            if(!empty($result)){
                $this->success('修改建筑信息成功！','');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改建筑信息失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        $this->assign('title', '修改建筑信息');
        return $this->fetch('add');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除建筑信息成功！', '');
        }else{
            $this->error('删除建筑信息失败！');
        }
    }

}
