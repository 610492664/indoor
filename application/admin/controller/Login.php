<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/7/3
 * Time: 16:49
 */

namespace app\admin\controller;


class Login extends Base
{
    public function index()
    {
        if ($this->request->isGet()) {
            $this->assign('title', '用户登录');
            return $this->fetch();
        } else {
            $username = $this->request->post('username', '', 'trim');
            $password = $this->request->post('password', '', 'trim');
            (empty($username) || strlen($username) < 4) && $this->error('登录账号长度不能少于4位有效字符!');
            (empty($password) || strlen($password) < 4) && $this->error('登录密码长度不能少于4位有效字符!');
            $user = Db::name('SystemUser')->where('username', $username)->find();
            empty($user) && $this->error('登录账号不存在，请重新输入!');
            ($user['password'] !== md5($password)) && $this->error('登录密码与账号不匹配，请重新输入!');
            Db::name('SystemUser')->where('id', $user['id'])->update(['login_at' => ['exp', 'now()'], 'login_num' => ['exp', 'login_num+1']]);
            session('user', $user);
//            !empty($user['authorize']) && NodeService::applyAuthNode();
//            LogService::write('系统管理', '用户登录系统成功');
            $this->success('登录成功，正在进入系统...', '@admin');
        }
    }

    //注销登录
    public function out()
    {
        session('user', null);
        session_destroy();
        $this->success('退出登录成功！', '@admin/login');
    }
}