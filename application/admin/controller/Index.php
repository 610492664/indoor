<?php
namespace app\admin\controller;

use think\Db;

class Index extends Base
{
    public function index()
    {
        $data = [[]];
        $this->assign('menuData', $data);
        $userinfo = ['username'=>'admin','nickname'=>'管理员','regTime'=>time()];
        $this->assign('userInfo', $userinfo);
        $this->assign('title', '首页');
        $this->breadCrumb();
        return $this->fetch();
   }
    public function dashBoard()
    {
        $this->assign('title', '首页');
        $_version = Db::query('select version() as ver');
        $version = array_pop($_version);
        $this->assign('mysql_ver', $version['ver']);
        return $this->fetch();
    }
}
