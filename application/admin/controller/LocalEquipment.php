<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\LocalEquipment as Model;

class LocalEquipment extends Base
{
    public function index()
    {
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
        $model = new Model();
        $list = $model->where(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
        return $list;
    }
    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $detail = Model::get($id);
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
        /** @var $model Model */
        $model = Loader::model('LocalEquipment');
        $result = $model->data(input('post.'),true)->save();
        if(!empty($result)){
            $this->success('添加终端设备成功！');
        }else{
            $this->error('添加终端设备失败！');
        }
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $detail = Model::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {
        $model = new Model;
        $result = $model->save(input("post."),['lequ_id' => input('post.lequ_id')]);
        if(!empty($result)){
            $this->success('修改终端设备成功！');
        }else{
            $this->error('修改终端设备成功！');
        }
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = Model::destroy($ids);
        if(!empty($result)){
            $this->success('删除终端设备成功！');
        }else{
            $this->error('删除终端设备失败！');
        }
    }

}
