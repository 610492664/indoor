<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Person as MPerson;

class Person extends Base
{
    public function index()
    {
        $persons = \app\admin\model\Person::all(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}']);
        $this->assign('data',json_encode($persons));
        return $this->fetch();
    }
    public function getList()
    {
//        $org_id = input('session.org_id');
        $persons = \app\admin\model\Person::all(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}']);
        return $persons;
    }
    public function add(){
        return $this->fetch();
    }
    public function insert()
    {
        // 获取表单上传文件 例如上传了001.jpg
        $file = $this->request->file('pic');
        $picname = '';
        if(!empty($file)){
            $info = $file->validate(['size'=>512000,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'admin' . DS .'static'. DS .'upload');
            if($info){
                $picname =  $info->getSaveName();
            }else{
                $return['code'] = 0;
                $return['msg'] = $file->getError();
                return $return;
            }
        }
        $person = Loader::model('Person');
        $data['per_id'] = create_guid();
        $data['per_name'] = input('post.per_name');
        $data['sex'] = input('post.sex');
        $data['org_id'] = create_guid();
        $data['birthday'] = strtotime(input('post.birthday/s'));
        $data['pid'] = input('post.pid');
        $data['pidtype'] = input('post.pidtype');
        $data['per_pic'] = $picname;
        $data['position'] = input('post.position');
        $data['rank'] = input('post.rank');
        $data['per_status'] = 0;
        $data['loc_id'] = input('post.loc_id');
        $data['jointime'] = strtotime(input('post.jointime/s'));
        $result = $person->data($data)->save();
        if(!empty($result)){
            $return['code'] = 1;
            $return['msg'] = '添加人员成功！';
        }else{
            $return['code'] = 0;
            $return['msg'] = '添加人员失败！';
        }
        return $return;
    }
    public function detail()
    {
        $id = input('get.id');
        $person = MPerson::get($id);
        $this->assign('person',$person);
        return $this->fetch();
    }
    public function mod()
    {
        return $this->fetch();
    }
    public function update()
    {

    }
    public function del()
    {

    }

}
