<?php
namespace app\admin\controller;

class Person extends Base
{
    public function index()
    {
        return $this->fetch();
   }
}
