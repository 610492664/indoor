<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\LocationMark as SubModel;

class LocationMark extends Base
{
    public function index()
    {
        if(input('?param.view')){
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $model = new SubModel();
        $list = $model->where(['org_id'=>$org_id])->select();
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
        return $this->fetch();
    }
    //添加到数据库
    public function insert()
    {
        $model = Loader::model('LocationMark');
        $result = $model->data(input('post.'))->save();
        if(!empty($result)){
            $this->success('添加信标成功！');
        }else{
            $this->error('添加信标失败！');
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
        $result = $model->save(input("post."),['lmar_id' => input('post.lmar_id')]);
        if(!empty($result)){
            $this->success('修改信标成功！');
        }else{
            $this->error('修改信标失败！');
        }
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
