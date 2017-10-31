<?php

namespace behavior;

use think\Config;
use think\exception\HttpResponseException;
use think\Request;
use think\View;

/**
 * 访问权限管理
 * Class AccessAuth
 * @package hook
 * @author Jan <610492664@qq.com>
 * @date 2017/05/12 11:59
 */
class AccessAuth {

    /**
     * 当前请求对象
     * @var Request
     */
    protected $request;

    /**
     * 行为入口
     * @param $params
     */
    public function run(&$params) {
        $this->request = Request::instance();
        list($module, $controller, $action) = [$this->request->module(), $this->request->controller(), $this->request->action()];
        $unchecklogin = ['login/in'];
        // 用户登录状态检查
        if ((!in_array(strtolower("{$controller}/{$action}"), $unchecklogin)) && !session('user')) {
            if ($this->request->isAjax()) {
                $result = ['code' => 0, 'msg' => '抱歉, 您还没有登录获取访问权限!', 'data' => '', 'url' => '@system/login/in', 'wait' => 3];
                throw new HttpResponseException(json($result));
            }
            throw new HttpResponseException(redirect('system/login/in'));
        }

        // 访问权限节点检查
        if ((!in_array(strtolower("{$controller}/{$action}"), $unchecklogin)) && !auth("{$module}/{$controller}/{$action}")) {
            $result = ['code' => 0, 'msg' => '抱歉, 您没有访问该模块的权限!', 'data' => '', 'url' => '', 'wait' => 3];
            throw new HttpResponseException(json($result));
        }
    }

}
