<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Person as SubModel;

class Person extends Base
{
    public function index()
    {
        if(input('?param.view')){
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $persons = SubModel::all(function($query)use($org_id){
            $query->where(['org_id'=>$org_id]);
        },'locator');
        return $persons;
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $person = SubModel::get($id , 'locator');
        $this->assign('person',$person);
        return $this->fetch();
    }
    //获取添加表单
    public function add()
    {
        $locators = Db::name('locator')
            ->where(['status'=>0])
            ->field('loc_id,number')
            ->select();
        $this->assign('locators', $locators);
        return $this->fetch();
    }
    //添加到数据库
    public function insert()
    {
        // 获取表单上传文件 例如上传了001.jpg
        $file = $this->request->file('pic');
        if(!empty($file)){
            $info = $file->validate(['size'=>512000,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'admin' . DS .'static'. DS .'upload');
            if($info){
                $this->request->post(['pic'=>$info->getSaveName()]);
            }else{
                $return['code'] = 0;
                $return['msg'] = $file->getError();
                return $return;
            }
        }
        /* @var $person SubModel*/
        $person = Loader::model('Person');
        $result = $person->data(input('post.'),true)->save();
        !empty($result)&&!empty($person->loc_id)&&Db::name('locator')->update(['status'=>1, 'loc_id'=>$person->loc_id]);
        return result($result,'添加人员成功！', '添加人员失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $person = SubModel::get($id);
        $this->assign('person',$person->getData());
        $locators = Db::name('locator')
            ->where(['status'=>0])
            ->whereOr(['loc_id'=>$person->loc_id])
            ->field('loc_id,number')
            ->select();
        $this->assign('locators', $locators);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {
        $file = $this->request->file('pic');
        $data = input('post.');
        if(!empty($file)){
            $info = $file->validate(['size'=>512000,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'admin' . DS .'static'. DS .'upload');
            if($info){
                $data['pic'] = $info->getSaveName();
            }else{
                $return['code'] = 0;
                $return['msg'] = $file->getError();
                return $return;
            }
        }else{
            unset($data['pic']);
        }
        $model  = SubModel::get($data['per_id']);
        $old_loc_id = $model->loc_id;
        $result = $model->save($data, ['per_id'=>$data['per_id']]);
        if(!empty($result)){
            if(!empty($model->loc_id)){
                Db::name('locator')->update(['status'=>1, 'loc_id'=>$model->loc_id]);
            }
            if(!empty($old_loc_id)){
                Db::name('locator')->update(['status'=>0, 'loc_id'=>$old_loc_id]);
            }
            $return['code'] = 1;
            $return['msg'] = '修改成功！';
        }else{
            $return['code'] = 0;
            $return['msg'] = '修改失败！';
        }
        return $return;
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
//        $result = true;
        if(!empty($result)){
            $return['code'] = 1;
            $return['msg'] = '删除人员成功！';
        }else{
            $return['code'] = 0;
            $return['msg'] = '删除人员失败！';
        }
        return $return;
    }

}
