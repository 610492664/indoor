<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\LocationMark as SubModel;

class LocationMark extends Base
{
    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '信标管理');
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
            $model = Loader::model('LocationMark');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post);
            if(!empty($result)){
                $this->success('添加信标成功！','');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加信标失败！');
            }
        }
        return $this->fetch();
    }
    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = Loader::model('location_mark');
            $lmar_id = input('post.lmar_id');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post,['lmar_id' => $lmar_id]);
            if(!empty($result)){
                $this->success('修改信标成功！','');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改信标失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除信标成功！');
        }else{
            $this->error('删除信标失败！');
        }
    }

}
