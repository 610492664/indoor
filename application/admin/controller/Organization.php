<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Organization as SubModel;

class Organization extends Base
{
    public function self()
    {
        $detail = SubModel::get(input('session.user.org_id'));
        $this->assign('detail',$detail);
        $this->assign('title', '单位信息');
        $this->breadCrumb();
        return $this->fetch();
    }

    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '子单位管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $records =SubModel::all(['p_org_id'=>input('session.user.org_id')]);
        return $records;
    }
    //新增
    public function add(){
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = model('organization');
            $result = $model->validate(true)->save(input('post.'));
            if(false === $result){
                $this->error($model->getError());
            }
            if(!empty($result)){
                $this->success('添加子单位成功！', '');
            }else{
                $this->error('添加子单位失败！');
            }
        }
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = model('organization');
            $org_id = input('post.org_id');
            $result = $model->validate(true)->save(input('post.'),['org_id' => $org_id]);
            if(false === $result){
                $this->error($model->getError());
            }
            if(!empty($result)){
                $this->success('修改信息成功！', '');
            }else{
                if($result === 0 ) {
                    $this->error('未作任何修改！');
                }
                $this->error('修改信息失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id)->getData();
        $this->assign('detail',$detail);
        return $this->fetch();
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除子单位成功！', '');
        }else{
            $this->error('删除子单位失败！');
        }
    }

}
