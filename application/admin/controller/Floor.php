<?php
namespace app\admin\controller;

use app\admin\model\Building as BuildingModel;
use \Think\Loader;
use \app\admin\model\Floor as SubModel;

class Floor extends Base
{
    public function index()
    {
        if(input('?param.view')){
            /**@var $buildingModel BuildingModel */
            $buildingModel = Loader::model('Building');
            $org_id = input('session.user.org_id');
            $buildings = $buildingModel->field(['bui_id','name'])->where(['org_id'=> $org_id])->select();
            $this->assign('title', '楼层管理');
            $this->assign('bui_id', input('param.bui_id'));
            $this->assign('buildings', $buildings);
            $this->breadCrumb();
            return $this->fetch();
        }
        $model = new SubModel();
        $list = $model->where(['bui_id'=>input('get.bui_id')])->select();
        return $list;
    }

    //获取添加表单
    public function add(){
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = Loader::model('Floor');
            $result = $model->validate(true, [], true)->save(input('post.'));
            if(!empty($result)){
                $this->success('添加楼层成功！', '');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加楼层失败！');
            }
        }
        $this->assign('title', '添加楼层信息');
        return $this->fetch();
    }
    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = new SubModel;
            $post = input("post.");
            $result = $model->validate(true, [], true)->save($post,['flo_id' => $post['flo_id']]);
            if(!empty($result)){
                $this->success('修改楼层信息成功！','');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改楼层信息失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        $this->assign('title', '修改楼层信息');
        return $this->fetch('add');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        foreach ($ids as $id) {
            $find = db('outfire_facility')->where(['flo_id'=>$id])->find();
            if(!empty($find)){
                $flo_number = db('floor')->where('flo_id',$id)->value('number');
                $this->error('失败，“第'.$flo_number.'层”存在消防设施信息！');
            }
        }
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除楼层信息成功！','');
        }else{
            $this->error('删除楼层信息失败！');
        }
    }

}
