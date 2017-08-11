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
            $this->assign('title', '人员管理');
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
        if ($this->request->isPost()) {
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
            if(!empty($result)){
                $this->success('添加人员成功！', '');
            }else{
                $this->error('添加人员失败！');
            }
        }
        $locators = Db::name('locator')
            ->where(['status'=>0])
            ->field('loc_id,number')
            ->select();
        $this->assign('locators', $locators);
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
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
                $this->success('修改成功！', '');
            }else{
                $this->error('修改失败！');
            }
        }
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
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
//        $result = true;
        if(!empty($result)){
            $this->success('删除人员成功！', '');
        }else{
            $this->error('删除人员失败！');
        }
    }

}
