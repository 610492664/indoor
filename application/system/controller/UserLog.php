<?php

namespace app\system\controller;

use app\admin\controller\Base;
use app\system\model\UserLog as SubModel;
use service\NodeService;
use service\ToolsService;
use think\Db;

/**
 * 系统日志管理
 * Class User
 * @package app\admin\controller
 * @author Jan <610492664@qq.com>
 * @date 2017/02/15 18:12
 */
class UserLog extends Base {

    /**
     * 日志列表
     */
    public function index() {
        if(input('?param.view')){
            $this->assign('title', '访问日志管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $records = Db::name('user_log')
            ->alias('log')
            ->where(['org_id'=>$org_id])
            ->order('create_time desc')
            ->select();
//            $records = SubModel::all(['org_id'=> $org_id], 'role');
        return $records;

        /*$this->title = '系统操作日志';
        $this->assign('actions', Db::name($this->table)->group('action')->column('action'));
        $db = Db::name($this->table)->order('id desc');
        $get = $this->request->get();
        foreach (['action', 'content', 'username'] as $key) {
            if (isset($get[$key]) && $get[$key] !== '') {
                $db->where($key, 'like', "%{$get[$key]}%");
            }
        }
        return parent::_list($db);*/
    }

    /**
     * 列表数据处理
     * @param $data
     */
    protected function _index_data_filter(&$data) {
        $ip = new \Ip2Region();
        foreach ($data as &$vo) {
            $result = $ip->btreeSearch($vo['ip']);
            $vo['isp'] = isset($result['region']) ? $result['region'] : '';
            $vo['isp'] = str_replace(['|0|0|0|0', '|'], ['', ' '], $vo['isp']);
        }
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('日志删除成功！');
        }else{
            $this->error('日志删除失败，请稍候再试！');
        }
    }

    //删除
    public function delAll()
    {
        $org_id = input('session.user.org_id');
//        $result = SubModel::destroy(['org_id'=>$org_id]);
        $result = Db::name('user_log')->where(['org_id'=>$org_id])->delete();
        if(!empty($result)){
            $this->success('日志清空成功！',"");
        }else{
            $this->error('日志清空失败，请稍候再试！');
        }
    }

}
