<?php
namespace app\admin\controller;

class Index extends Base
{
    public function index()
    {
        $data = [[]];
        $this->assign('menuData', $data);
        $userinfo = ['username'=>'admin','nickname'=>'管理员','regTime'=>time()];
        $this->assign('userInfo', $userinfo);
        $this->assign('title', '首页');
        return $this->fetch();
   }
}
