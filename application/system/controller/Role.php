<?php

namespace app\system\controller;

use app\admin\controller\Base;
use app\system\model\Role as SubModel;
use service\NodeService;
use service\ToolsService;
use think\Db;

/**
 * 系统权限管理控制器
 * Class Auth
 * @package app\admin\controller
 * @author Jan <610492664@qq.com>
 * @date 2017/02/15 18:13
 */
class Role extends Base {

    /**
     * 权限列表
     */
    public function index() {
        if(input('?param.view')){
            $this->assign('title', '角色管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $records = SubModel::all(['org_id'=> $org_id]);
        return $records;
    }

    /**
     * 权限添加
     */
    public function add() {
        if(request()->isPost()){
            /* @var $model SubModel*/
            $model = model('role');
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true,[], true)->save($post);
            if(!empty($result)){
                $this->success('添加角色成功！', '');
            }else{
                $result === false && $this->error($model->getError());
                $this->error('添加角色失败！');
            }
        }
        return $this->fetch();
    }

    /**
     * 权限编辑
     */
    public function mod() {
        if(request()->isPost()){
            $model = new SubModel;
            $post = input('post.');
            $post['org_id'] = input('session.user.org_id');
            $result = $model->validate(true, [], true)->save($post,['rol_id' => $post('rol_id')]);
            if(!empty($result)){
                $this->success('修改角色成功！', '');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改角色失败！');
            }
        }
        $id = input('get.id');
        $model = SubModel::get($id);
        $detail = $model->getData();
        $this->assign('detail',$detail);
        return $this->fetch('add');
    }

    /**
     * 权限删除
     */
    public function del() {
        $ids = input('get.id/a');
        $userModel = model('user');
        $model = model('role');
        //查询角色是否存在用户
        $rol_ids = $userModel->where(['rol_id'=>['in', $ids]])->column('rol_id');
        if (!empty($rol_ids)) {
            $rol_names = $model->where(['rol_id'=>['in', $rol_ids]])->column('name');
            $this->error('角色名：“'.implode('”，“',$rol_names).'”存在关联用户，请先解除用户关联！');
        }
        if (SubModel::destroy($ids)) {
            //删除角色对应节点权限
            Db::name('rol_nod')->where('rol_id', 'in', $ids)->delete();
            $this->success("删除角色成功！", '');
        }
        $this->error("删除角色失败，请稍候再试！");
    }


    /**
     * 角色权限查看
     * @return string|array
     */
    public function authShow() {
        $rol_id = input('param.id');
        $nodes = NodeService::get();
        $checked = Db::name('rol_nod')->where('rol_id', $rol_id)->column('node');
        foreach ($nodes as $key => &$node) {
            $node['checked'] = in_array($node['node'], $checked);
            if (empty($node['is_auth']) && substr_count($node['node'], '/') > 1) {
                unset($nodes[$key]);
            }
        }
        $nodes = ToolsService::arr2tree($nodes, 'node', 'pnode', '_sub_');
        $nodes = $this->_filterNodes($nodes);
        $nodes = $this->_filterNodes($nodes);
        $this->assign('title', '节点授权');
        $this->breadCrumb();
        $this->assign('rol_id', $rol_id);
        $this->assign('node', json_encode($nodes));
        return $this->fetch();
    }

    public function authSave() {
        $data = [];
        $post = $this->request->post();
        $rol_id = input('get.id');
        foreach (isset($post['nodes']) ? $post['nodes'] : [] as $node) {
            $data[] = ['rnod_id' => create_guid(),'rol_id' => $rol_id, 'node' => $node];
        }
        Db::name('rol_nod')->where('rol_id', $rol_id)->delete();
        Db::name('rol_nod')->insertAll($data);
        $this->success('节点授权更新成功！', '');
    }

    /**
     * 节点数据拼装
     * @param array $nodes
     * @param int $level
     * @return array
     */
    protected function _filterNodes($nodes, $level = 1) {
        foreach ($nodes as $key => &$node) {
            if (!empty($node['_sub_']) && is_array($node['_sub_'])) {
                $node['_sub_'] = $this->_filterNodes($node['_sub_'], $level + 1);
            } elseif ($level < 3) {
                unset($nodes[$key]);
            }
        }
        return $nodes;
    }

    /**
     * 权限禁用
     */
    public function forbid() {
        $model = new SubModel;
        $post = input('post.');
        $data = ['rol_id' => $post['id'], $post['name'] => $post['value']];
        $result = $model->save($data,['rol_id' => input('post.id')]);
        !empty($result) ? $this->success('操作成功！', '') : $this->error('操作失败！');
    }

    /**
     * 权限恢复
     */
   /* public function resume() {
        if (DataService::update($this->table)) {
            $this->success("权限启用成功！", '');
        }
        $this->error("权限启用失败，请稍候再试！");
    }*/


}
