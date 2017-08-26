<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Locator as SubModel;

class Locator extends Base
{

    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '定位模块管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $locator = model('locator');
        $records = $locator->alias('loc')
            ->field('loc.loc_id, loc.number, loc.mac, per.name per_name,buy_time,loc.status')
            ->join('__PERSON__ per', 'per.loc_id = loc.loc_id','LEFT')
            ->where(['loc.org_id'=>$org_id])
            ->select();
        return $records;
    }

    //获取添加表单
    public function add(){
        if ($this->request->isPost()) {
            $model = Loader::model('Locator');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post);
            if(!empty($result)){
                $this->success('添加成功！', '');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加失败！');
            }
        }
        $this->assign('title', '添加定位模块');
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = Loader::model('Locator');
            $loc_id = input('post.loc_id');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post,['loc_id' => $loc_id]);
            if(!empty($result)){
                $this->success('修改成功！','');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改失败！');
            }
        }
        $id = input('get.id');
        $record = SubModel::get($id);
        $this->assign('detail',$record);
        $this->assign('title', '修改定位模块信息');
        return $this->fetch('add');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $personModel = model('person');
        $loc_ids = $personModel->where(['loc_id'=>['in', $ids]])->column('loc_id');
        if (!empty($loc_ids)) {
            $this->error('删除的套件已绑定人员，请先解除绑定！');
        }
        $model = Db::name('locator');
        $result = $model->where(['loc_id'=>['in',$ids]])->delete();
        if(!empty($result)){
            $this->success('删除定位模块成功！', '');
        }else{
            $this->error('删除定位模块失败！');
        }
    }

    /*public function _exist()
    {
        $data = input('get.');
        $data['org_id'] = input('session.user.org_id');
        $result = $this->validate($data, 'Locator.exist');
        true !== $result ? abort(400,$result) : $this->result('没有占用', 200);
    }*/
}
