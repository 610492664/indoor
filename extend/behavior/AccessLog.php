<?php

// +----------------------------------------------------------------------
// | Think.Admin
// +----------------------------------------------------------------------
// | 版权所有 2014~2017 广州楚才信息科技有限公司 [ http://www.cuci.cc ]
// +----------------------------------------------------------------------
// | 官方网站: http://think.ctolog.com
// +----------------------------------------------------------------------
// | 开源协议 ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | github开源项目：https://github.com/zoujingli/Think.Admin
// +----------------------------------------------------------------------

namespace behavior;

use think\Db;
use think\Request;

/**
 * 操作日志服务
 * Class AccessLog
 * @package behavior
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/03/24 13:25
 */
class AccessLog {
    /**
     * 当前请求对象
     * @var Request
     */
    protected $request;


    /**
     * 写入操作日志
     * @param string $action
     * @param string $content
     * @return bool
     */
    public function run(&$params){
        $unlog = [];
        $request = Request::instance();
        list($module, $controller, $action) = [strtolower($request->module()), strtolower($request->controller()), strtolower($request->action())];
        if($module !== '' && $controller !== '' && $action !== '') {
            $node = strtolower(join('/', [$module, $controller, $action]));
            $post_action = ['in', 'add', 'mod'];
            //$action 为index时，只在获取数据列表时记录log，登录post记录log
            if ((($action === 'index') && input('?param.view'))|| (in_array($action, $post_action) && !$request->isPost())) {
                return true;
            }
            $data = $params->getData();
            $result = (isset($data['code']) && $data['code'] === 0 ) ? '失败' : '成功';
            $data = [
                'ulog_id'=>create_guid() ,
                'ip' => $request->ip(),
                'module' => $module,
                'controller' => $controller,
                'action' => $action,
                'result' => $result,
                'use_id' => session('user.use_id') . '',
                'username' => session('user.name') . '',
                'org_id' => session('user.org_id') . ''
            ];
            return db('user_log')->insert($data) !== false;
            }
    }

}
