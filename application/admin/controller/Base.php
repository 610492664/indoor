<?php
namespace app\admin\controller;

use think\Controller;
use think\Db;
use \app\system\model\User;

class Base extends Controller
{
    protected function breadCrumb()
    {
        list($module, $controller, $action) = [strtolower($this->request->module()), strtolower($this->request->controller()), strtolower($this->request->action())];
        $node = [$module, "$module/$controller", "$module/$controller/$action"];
        $titles = Db::name('node')->field('node, title')->where(['node'=>['in', $node]])->order('node asc')->select();
        $this->assign('titles', $titles);
    }

    /**
     * 管理员重置密码
     *
     * @return mixed
     */
    protected function resetPass()
    {
        if(request()->isPost()){
            $post = input("post.");
            $use_id = $post['use_id'];
            $model = new User;
            $result = $model->validate('system/User.self_pass', [], true)->allowField(true)->save($post,['use_id' => $use_id]);
            if(!empty($result)){
                $this->success('重置密码成功！', '');
            }else{
                $result === 0 && $this->error('密码未更改！');
                $result === false && $this->error($model->getError());
                $this->error('重置密码失败！');
            }
        }
        $id = input('get.id');
        $model = User::get($id);
        $detail = $model->getData();
        $this->assign('detail',$detail);
        return $this->fetch('system@user/resetpass');
    }

    public function _exist()
    {
        $controller = $this->request->controller();
        $module = $this->request->module();
        $data = input('param.');
        !isset($data['org_id']) && $data['org_id'] = input('session.user.org_id');
        $result = $this->validate($data, $module.'/'.$controller.'.exist');
        true !== $result ? abort(400,$result) : $this->result('没有占用', 200);
    }


}