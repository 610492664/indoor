<?php
namespace app\admin\controller;

class Locator extends Base
{
    public function index()
    {
//        $org_id = input('session.org_id');
        $persons = \app\admin\model\Person::all(['org_id'=>'a123456789123456789123456789123456789a']);
        $this->assign('persons',$persons);
        echo $this->fetch();
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
