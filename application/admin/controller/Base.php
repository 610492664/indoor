<?php
namespace app\admin\controller;

use think\Controller;
use think\Db;

class Base extends Controller
{
    protected function breadCrumb()
    {
        list($module, $controller, $action) = [strtolower($this->request->module()), strtolower($this->request->controller()), strtolower($this->request->action())];
        $node = [$module, "$module/$controller", "$module/$controller/$action"];
        $titles = Db::name('node')->field('node, title')->where(['node'=>['in', $node]])->order('node asc')->select();
        $this->assign('titles', $titles);
    }
}