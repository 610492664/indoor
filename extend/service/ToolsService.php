<?php

namespace service;

/**
 * 系统工具服务
 * Class ToolsService
 * @package service
 * @author Jan <610492664@qq.com>
 * @date 2016/10/25 14:49
 */
class ToolsService {

    /**
     * 一维数据数组生成数据树
     * @param array $list 数据列表
     * @param string $id 父ID Key
     * @param string $pid ID Key
     * @param string $son 定义子数据Key
     * @return array
     */
    public static function arr2tree($list, $id = 'id', $pid = 'pid', $son = 'sub') {
        $tree = $map = array();
        foreach ($list as $item) {
            $map[$item[$id]] = $item;
        }
        foreach ($list as $item) {
            if (isset($item[$pid]) && isset($map[$item[$pid]])) {
                $map[$item[$pid]][$son][] = &$map[$item[$id]];
            } else {
                $tree[] = &$map[$item[$id]];
            }
        }
        unset($map);
        return $tree;
    }

    /**
     * 一维数据数组生成数据树
     * @param array $list 数据列表
     * @param string $id ID Key
     * @param string $pid 父ID Key
     * @param string $path
     * @return array
     */
    public static function arr2table($list, $id = 'id', $pid = 'pid') {
        $tree = array();
        foreach ($list as $_tree) {
            $_tree['spl'] = str_repeat("&nbsp;&nbsp;&nbsp;├&nbsp;&nbsp;", substr_count($_tree[$id], '/'));
            $tree[] = $_tree;
        }
        return $tree;
    }

    /**
     * 获取数据树子ID
     * @param array $list 数据列表
     * @param int $id 起始ID
     * @param string $key 子Key
     * @param string $pkey 父Key
     * @return array
     */
    public static function getArrSubIds($list, $id = 0, $key = 'id', $pkey = 'pid') {
        $ids = array(intval($id));
        foreach ($list as $vo) {
            if (intval($vo[$pkey]) > 0 && intval($vo[$pkey]) == intval($id)) {
                $ids = array_merge($ids, self::getArrSubIds($list, intval($vo[$key]), $key, $pkey));
            }
        }
        return $ids;
    }

}
