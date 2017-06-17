<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Person as MPerson;

class Person extends Base
{
    public function index()
    {
        $persons = MPerson::all(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}']);
        $this->assign('data',json_encode($persons));
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
        $persons = MPerson::all(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}']);
        return $persons;
    }
    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $person = MPerson::get($id);
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
        $data['name'] = input('post.name');
        $data['sex'] = input('post.sex');
        $data['org_id'] = create_guid();
        $data['birthday'] = strtotime(input('post.birthday/s'));
        $data['pid'] = input('post.pid');
        $data['pidtype'] = input('post.pidtype');
        $data['pic'] = $picname;
        $data['position'] = input('post.position');
        $data['rank'] = input('post.rank');
        $data['status'] = 0;
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
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $person = MPerson::get($id);
        $this->assign('person',$person);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {

    }
    //删除
    public function del()
    {

    }

}
