<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Group as SubModel;

class GroupPerson extends Base
{

    public function index()
    {
        $gro_id = input('param.id');
        if(input('?param.view')){
            $model = model('group');

            $detail = $model->alias('gro')
                ->field('gro.gro_id, gro.name, per.name leader')
                ->join('__PERSON__ per', 'per.per_id = gro.per_id','LEFT')
                ->where(['gro.gro_id'=>$gro_id])
                ->find();
            $this->assign('title', '组成员管理');
            $this->assign('detail', $detail);
            return $this->fetch();
        }
       /* $records = Db('person')->where(['gro_id'=>$gro_id])->select();
        return $records;*/
        $records = \app\admin\model\Person::all(function($query)use($gro_id){
            $query->where(['gro_id'=>$gro_id]);
        },'locator');
        return $records;
    }

    //获取添加表单
    public function add(){
        if ($this->request->isPost()) {
            $result = db('person')->where(['per_id'=>['in', input('post.per_ids/a')]])->update(['gro_id'=>input('post.gro_id')]);
            if(!empty($result)){
                $this->success('添加成员成功！','');
            }else{
                $this->error('添加成员失败！');
            }
        }
        $org_id = input('session.user.org_id');
        $records = model('person')->field('per_id, pid, pidtype, name')->where(['org_id'=>$org_id, 'status'=>0, 'gro_id'=>''])->select();
        $this->assign('records', $records);
        return $this->fetch();
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $gro_id = input('param.id');
        $result = db('person')->where(['per_id'=>['in', $ids]])->update(['gro_id'=>'']);
        if(!empty($result)){
            $per_id = Db::name('group')->where(['gro_id'=>$gro_id])->value('per_id');
            if (in_array($per_id, $ids )){
                Db::name('group')->where(['gro_id'=>$gro_id])->update(['per_id'=>""]);
                $this->success('移除成员成功！','/'); //刷新页面
            }
            $this->success('移除成员成功！','');//仅table  reload
        }else{
            $this->error('移除成员失败！');
        }
    }

    public function set()
    {
        $ids = input('post.id/a');
        $gro_id = input('param.id');
        $result =  db('group')->where(['gro_id'=>$gro_id])->update(['per_id'=>$ids[0]]);
        if(!empty($result)){
            $this->success('设置组长成功！','/');
        }else{
            $this->error('设置组长失败！');
        }
    }
}
