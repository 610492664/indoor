<?php
namespace app\admin\controller;

class Person extends Base
{
    public function index()
    {
        $where['id'] = session('userid');
        $user = M('web_userinfo')->where($where)->find();

        if ($user != null){
            $map['deleteflag'] = 0;
            $this->persons = $this->allPeople();
            $this->dutys = M('duty')->where($map)->field('name')->select();
            $this->idtypes = M('idtype')->where($map)->field('name')->select();
            $this->levels = M('level')->where($map)->field('name')->select();
            $this->nativePlaces = M('nativeplace')->where($map)->field('name')->order('name')->select();
            $this->propertys = M('property')->where($map)->field('name')->select();
            $this->user = $user['name'];
            $this->display('index');
        }else{
            $this->redirect('./Login');
        }
        return $this->fetch();
    }
    public function add()
    {

    }
    public function insert()
    {

    }
    public function mod()
    {

    }
    public function update()
    {

    }
    public function del()
    {

    }

}
