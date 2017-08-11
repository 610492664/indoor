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
            return $this->fetch();
        }
        $model = new SubModel();
        $list = $model->where(['bui_id'=>input('get.bui_id')])->select();
        return $list;
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
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = Loader::model('Floor');
            $result = $model->data(input('post.'))->save();
            if(!empty($result)){
                $this->success('添加楼层成功！', '');
            }else{
                $this->error('添加楼层失败！');
            }
        }
        return $this->fetch();
    }
    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = new SubModel;
            $result = $model->save(input("post."),['flo_id' => input('post.flo_id')]);
            if(!empty($result)){
                $this->success('修改楼层信息成功！','');
            }else{
                $this->error('修改楼层信息失败！');
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
            $this->success('删除楼层信息成功！','');
        }else{
            $this->error('删除楼层信息失败！');
        }
    }

}
