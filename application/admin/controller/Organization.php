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
        return $this->fetch();
    }

    public function index()
    {
        if(input('?get.action')){
            $records =SubModel::all(['p_org_id'=>input('session.user.org_id')]);
            return $records;
        }
        return $this->fetch();
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $record = SubModel::get($id);
        $this->assign('record',$record);
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
//        $model = Loader::model('group');
        $result = model('organization')->data(input('post.'),true)->save();
        if(!empty($result)){
            $this->success('添加子单位成功！');
        }else{
            $this->error('添加子单位失败！');
        }
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $detail = SubModel::get($id)->getData();
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    public function update()
    {
        $model = model('organization');
        $org_id = input('post.org_id');
        $result = $model->save(input('post.'),['org_id' => $org_id]);
        return result($result,'修改信息成功！', '修改信息失败！');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除子单位成功！');
        }else{
            $this->error('删除子单位失败！');
        }
    }

}
