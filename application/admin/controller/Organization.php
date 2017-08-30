<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Organization as SubModel;

class Organization extends Base
{
    public function self()
    {
        $detail = SubModel::get(input('session.user.org_id'));
        $this->assign('detail',$detail);
        $this->assign('title', '单位信息');
        $this->breadCrumb();
        return $this->fetch();
    }

    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '子单位管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $records =model('organization')->alias('org')
            ->field('org.org_id, org.name, org.abbr, org.address, org.status, user.use_id,user.name username,user.phone,user.email')
            ->join('__USER__ user', 'user.org_id=org.org_id and user.rol_id="{C407F15A-F477-8AF4-B830-19FEF9B95F54}"', 'Left')
            ->where(['org.p_org_id'=>input('session.user.org_id')])
            ->select();
//        $records =SubModel::all(['p_org_id'=>input('session.user.org_id')]);
        return $records;
    }
    //新增
    public function add(){
        if ($this->request->isPost()) {
            /* @var $model SubModel*/
            $model = model('organization');
            $userModel = model('system/user');
            $post = input('post.');
            //分离user数据
            $user_data['name'] = $post['username'];
            $user_data['password'] = $post['password'];
            $user_data['password_confirm'] = $post['password_confirm'];
            $user_data['phone'] = $post['phone'];
            $user_data['email'] = $post['email'];
            //验证字段
            $org_val = $this->validate($post, 'Organization', [], true);
            $org_val !== true && $this->error($org_val);
            $user_val = $this->validate($user_data, 'system/User', [], true);
            $user_val !== true && $this->error($user_val);

            $org_result = $model->allowField(true)->save($post);
            if(!empty($org_result)){
                $user_data['org_id'] = $model->org_id;
                $user_data['rol_id'] = '{C407F15A-F477-8AF4-B830-19FEF9B95F54}';
                $user_result = $userModel->allowField(true)->save($user_data);
                empty($user_result)&&$model->delete();//不成功则删除已添加的子单位
            }
            if(!empty($user_result)){
                $this->success('添加子单位成功！', '');
            }else{
                $this->error('添加子单位失败！');
            }
        }
        $this->assign('title', '添加子单位');
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = model('organization');
            $org_id = input('post.org_id');
            $result = $model->validate(true)->save(input('post.'),['org_id' => $org_id]);
            if(!empty($result)){
                $this->success('修改信息成功！', '');
            }else{
                $result === 0 && $this->error('未作任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改信息失败！');
            }
        }
        $this->assign('title', '修改子单位信息');
        $id = input('get.id');
        $detail = SubModel::get($id)->getData();
        $this->assign('detail',$detail);
        return $this->fetch('add');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $find = db('organization')->where(['p_org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在子级单位，不能删除！');
        $find =  db('group')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');
        $find =  db('person')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');
        $find =  db('locator')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');
        $find =  db('location_mark')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');
        $find =  db('local_equipment')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');
        $find =  db('incident')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');
        $find =  db('building')->where(['org_id'=>$ids[0]])->find();
        !empty($find)&&$this->error('此单位下存在业务信息，不能删除！');

        $result = SubModel::destroy($ids);
        if(!empty($result)){
            db('user')->where(['org_id'=>$ids[0]])->delete();
            $rol_ids = db('role')->where(['org_id'=>$ids[0]])->column('rol_id');
            db('rol_nod')->where(['rol_id'=>['in', $rol_ids]])->delete();
            db('role')->where(['org_id'=>$ids[0]])->delete();
            $this->success('删除子单位成功！', '');
        }else{
            $this->error('删除子单位失败！');
        }
    }


    /**
     * 重置子单位超级管理员密码
     *
     * @return mixed
     */
    public function resetPass()
    {
        return parent::resetPass();
    }

}
