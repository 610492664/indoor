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
        /*$this->assign('alert', [
            'type'    => 'danger',
            'title'   => '安全警告',
            'content' => '结构为系统自动生成，状态数据请勿随意修改！'
        ]);
        $this->assign('title', '系统节点管理');*/
        $this->assign('title', '系统节点管理');
        $this->assign('nodes', ToolsService::arr2table(NodeService::get(), 'node', 'pnode'));
        return $this->fetch();
    }

    /**
     * 保存节点变更
     */
    public function save() {
        if ($this->request->isPost()) {
            $post = input('post.');
            if (isset($post['id']) && isset($post['name']) && isset($post['value'])) {
                $data = ['node' => $post['id'], $post['name'] => $post['value']];
                $model = model('node');
                $result = $model->save($data,['node' => $post['id']]);
                if(!empty($result)){
                    $this->success('参数保存成功！','');
                }
            }
        } else {
            $this->error('访问异常，请重新进入...');
        }
    }

}
