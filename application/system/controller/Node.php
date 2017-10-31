<?php
namespace app\system\controller;

use \Think\Loader;
use \app\system\model\Node as SubModel;
use \app\admin\controller\Base;
use service\NodeService;
use service\ToolsService;


class Node extends Base
{

    /**
     * 显示节点列表
     */
    public function index() {
        $this->breadCrumb();
        $this->assign('title', '系统节点管理');
        $this->assign('nodes', ToolsService::arr2table(NodeService::get(), 'node', 'pnode'));
        return $this->fetch();
    }

    /**
     * 保存节点变更
     */
    public function save() {
        if ($this->request->isPost()){
            $post = input('post.');
            if (isset($post['id']) && isset($post['name']) && isset($post['value'])) {
                $data = ['node' => $post['id'], $post['name'] => $post['value']];
                $model = model('node');
                $result = $model->save($data,['node' => $post['id']]);
                if(!empty($result)){
                    $post['name'] === 'is_auth' && cache('need_access_node', null); //清除需要权限控制的节点 缓存
                    $post['name'] === 'is_log' && cache('need_log_node', null); //清除需要日志记录的节点 缓存
                    $this->success('参数保存成功！','');
                }
            }
        } else {
            $this->error('访问异常，请重新进入...');
        }
    }

}
