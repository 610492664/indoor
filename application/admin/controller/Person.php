<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Person as PersonModel;

class Person extends Base
{
    public function index()
    {
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
        $model = new PersonModel();
        $persons = $model->where(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
        return $persons;
    }
    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $person = PersonModel::get($id);
        $this->assign('person',$person);
        return $this->fetch();
    }
    //获取添加表单
    public function add(){
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
        $person = Loader::model('Person');
        $result = $person->data(input('post.'))->save();
        return result($result,'添加人员成功！', '添加人员失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $person = PersonModel::get($id);
        $this->assign('person',$person);
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
        $model = new PersonModel;
        $result = $model->save($data,['per_id' => $data['per_id']]);
        if(!empty($result)){
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
//        $result = PersonModel::destroy($ids);
        $result = true;
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
