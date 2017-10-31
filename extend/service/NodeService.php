<?php

namespace service;

use think\App;
use think\Db;

/**
 * 系统权限节点读取器
 * Class NodeService
 * @package extend
 * @author Jan <610492664@qq.com>
 * @date 2017/07/20 11:28
 */
class NodeService {

    /**
     * 获取授权节点
     * @return array
     */
    public static function getAuthNode() {
        $nodes = cache('need_access_node');
        if (empty($nodes)) {
            $nodes = Db::name('node')->where('is_auth', '1')->column('node');
            cache('need_access_node', $nodes);
        }
        return $nodes;
    }

    /**
     * 获取日志节点
     * @return array
     */
    public static function getLogNode() {
        $nodes = cache('need_log_node');
        if (empty($nodes)) {
            $nodes = Db::name('node')->where('is_log', '1')->column('node');
            cache('need_log_node', $nodes);
        }
        return $nodes;
    }

    /**
     * 检查用户节点权限
     * @param string $node 节点
     * @return bool
     */
    public static function checkAuthNode($node) {
        list($module, $controller, $action) = explode('/', str_replace(['?', '=', '&'], '/', $node . '///'));
        $auth_node = strtolower(trim("{$module}/{$controller}/{$action}", '/'));
        $rol_id = model('system/role')->getSuperRole();//超级管理员角色rol_id
        if( stripos($auth_node, 'system/node') === 0&&(session('user.rol_id') !== $rol_id||session('user.p_org_id') !== 0)){
            return false;
        }
        if (session('user.rol_id') === $rol_id|| stripos($node, 'admin/index') === 0) {
            return true;
        }
        if (!in_array($auth_node, self::getAuthNode())) {
            return true;
        }
        return in_array($auth_node, (array) session('user.nodes'));
    }

    /**
     * 获取系统代码节点
     * @return array
     */
    public static function get() {
        $alias = [];
        $nodes = Db::name('Node')->order('node asc')->select();
        if (App::$debug) {
            foreach ($nodes as $vo) {
                $alias["{$vo['node']}"] = $vo;
            }
            $ignore = [
                'index',
                'admin/index', 'system/login', 'system/node',
            ];
            $exist_nodes = [];
            foreach (self::getNodeTree(APP_PATH) as $thr) {
                foreach ($ignore as $str) {
                    if (stripos($thr, $str) === 0) {
                        continue 2;
                    }
                }
                $tmp = explode('/', $thr);
                $exist_nodes[] = $one = $tmp[0];
                $exist_nodes[] = $two = "{$tmp[0]}/{$tmp[1]}";
                $exist_nodes[] = $thr;

                if(!isset($alias[$one]) && !isset( $new_nodes[$one])) {
                    $new_nodes[$one] = ['node' => $one, 'title' => '', 'is_menu' => 0, 'is_auth' => 0, 'is_log' => 0, 'pnode' =>''];
                }
                if(!isset($alias[$two]) && !isset( $new_nodes[$two])) {
                    $new_nodes[$two] = ['node' => $two, 'title' => '', 'is_menu' => 0, 'is_auth' => 0, 'is_log' => 0, 'pnode' => $one];
                }
                if(!isset($alias[$thr]) && !isset( $new_nodes[$thr])) {
                    $new_nodes[$thr] = ['node' => $thr, 'title' => '', 'is_menu' => 0, 'is_auth' => 0, 'is_log' => 0, 'pnode' => $two];
                }
            }
            $model = model('node');
            if(!empty($new_nodes)){
                $model->saveAll($new_nodes, false);
            }
            $del = $model->where('node', 'not in', $exist_nodes)->delete();
            if (!empty($new_nodes) || !empty($del)){
                cache('need_access_node', null); //清除需要权限控制的节点 缓存
                cache('need_log_node', null); //清除需要日志记录的节点 缓存
            }
            Db::name('rol_nod')->where('node', 'not in', $exist_nodes)->delete();
            $nodes = $model->order('node asc')->select();
            if($nodes) {
                $nodes = collection($nodes)->toArray();
            }
        }
        return $nodes;
    }

    /**
     * 获取节点列表
     * @param string $path 路径
     * @param array $nodes 额外数据
     * @return array
     */
    public static function getNodeTree($path, $nodes = []) {
        foreach (glob($path.'*/controller/*.php') as $vo) {
            if (!preg_match('|/(\w+)/controller/(\w+)|', $vo, $matches) || count($matches) !== 3) {
                continue;
            }
            $className = config('app_namespace') . str_replace('/', '\\', $matches[0]);
            if (!class_exists($className)) {
                continue;
            }
            foreach (get_class_methods($className) as $actionName) {
                if ($actionName[0] !== '_') {
                    $nodes[] = strtolower("{$matches[1]}/{$matches[2]}/{$actionName}");
                }
            }
        }
        return $nodes;
    }

}
