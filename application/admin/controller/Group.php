<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Group as SubModel;

class Group extends Base
{

    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '组管理');
            return $this->fetch();
        }
        $model = model('group');
        $records = $model->alias('gro')->field('gro.gro_id, gro.name, per.name per_name,gro.status')->join('__PERSON__ per', 'per.per_id = gro.per_id','LEFT')->select();
        return $records;
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
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = Loader::model('group');
            $data['gro_id'] = create_guid();
            $data['name'] = input('post.name');
            $data['org_id'] = input('session.user.org_id');
            $data['status'] = input('post.status');
            $result = $model->data($data)->save();
            if(!empty($result)){
                $this->success('添加成功！','');
            }else{
                $this->error('添加失败！');
            }
        }
        return $this->fetch();
    }
    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = Loader::model('group');
            $gro_id = input('post.gro_id');
            $data['name'] = input('post.name');
            $data['org_id'] = input('session.user.org_id');
            $data['status'] = input('post.status');
            $result = $model->save($data,['gro_id' => $gro_id]);
            if(!empty($result)){
                $this->success('修改成功！','');
            }else{
                $this->error('修改失败！');
            }
        }
        $id = input('get.id');
        $record = SubModel::get($id)->getData();
        $this->assign('group',$record);
        return $this->fetch();
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
//        $result = true;
        if(!empty($result)){
            $this->success('删除成功！','');
        }else{
            $this->error('删除失败！');
        }
    }

}
