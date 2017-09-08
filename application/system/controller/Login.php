<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/7/3
 * Time: 16:49
 */

namespace app\system\controller;

use \think\Db;
use app\admin\controller\Base;

class Login extends Base
{
    public function in()
    {
        if ($this->request->isGet()) {
            $this->assign('title', '用户登录');
            $this->assign('data', []);
            return $this->fetch();
        } else {
            $msg = '<div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-warning"></i>警告！</h4>';
            $code = $this->request->post('code', '', 'trim');
            $name = $this->request->post('name', '', 'trim');
            $password = $this->request->post('password', '', 'trim');
            $data['name'] = $name;
            $data['password'] = $password;
            $this->assign('title', '用户登录');
            if(!captcha_check($code)){
                $data['msg'] = $msg.'验证码错误！'.'</div>';
                $this->assign('data', $data);
                return $this->fetch();
            };
            $user = Db::name('User')->where('name', $name)->find();
            if (empty($user)) {
                $data['msg'] = $msg.'登录账号不存在，请重新输入!'.'</div>';
                $this->assign('data', $data);
                return $this->fetch();
            }
            if ($user['password'] !== password_encrypt($password)) {
                $data['msg'] = $msg.'登录密码与账号不匹配，请重新输入!'.'</div>';
                $this->assign('data', $data);
                return $this->fetch();
            }
            if($user['status'] === 1){
                $data['msg'] = $msg.'该用户已被禁用，暂时不能登录!'.'</div>';
                $this->assign('data', $data);
                return $this->fetch();
            }
            Db::name('User')->where('use_id', $user['use_id'])->update(['login_time' => time(), 'login_num' => ['exp', 'login_num+1']]);
            $user['rol_name'] = Db::name('role')->where(['rol_id'=>$user['rol_id']])->value('name');
            $user['org_name'] = Db::name('organization')->where(['org_id'=>$user['org_id']])->value('name');
            $user['nodes'] = Db::name('user')
                ->alias('user')
                ->join('__ROLE__ role', 'role.rol_id=user.rol_id')
                ->join('__ROL_NOD__ auth', 'auth.rol_id=user.rol_id', 'LEFT')
                ->where(['use_id'=>$user['use_id'],'role.status'=>0])
                ->column('node');
            session('user', $user);
            $url = url('/#/admin/index/dashBoard.html','',false);
            $this->redirect($url);
        }
    }

    //注销登录
    public function out()
    {
        session('user', null);
        if (ini_get("session.use_cookies")) {
            $params = session_get_cookie_params();
            setcookie(session_name(), '', time() - 42000,
                $params["path"], $params["domain"],
                $params["secure"], $params["httponly"]
            );
        }
        session_destroy();
        $this->success('退出登录成功！', '@system/login/in');
    }
}