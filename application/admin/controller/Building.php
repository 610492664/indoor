<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Building as SubModel;

class Building extends Base
{
    public function index()
    {
        if(input('?get.action')){
            $org_id = input('session.user.org_id');
            $model = new SubModel();
            $list = $model->where(['org_id'=>$org_id])->select();
            return $list;
        }
        return $this->fetch();
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
        $model = Loader::model('Building');
        $result = $model->data(input('post.'))->save();
        if(!empty($result)){
            $this->success('添加建筑成功！');
        }else{
            $this->error('添加建筑失败！');
        }
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {
        $model = new SubModel;
        $result = $model->save(input("post."),['bui_id' => input('post.bui_id')]);
        if(!empty($result)){
            $this->success('修改建筑信息成功！');
        }else{
            $this->error('修改建筑信息失败！');
        }
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除建筑信息成功！');
        }else{
            $this->error('删除建筑信息失败！');
        }
    }

}
