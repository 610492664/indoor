<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Person as SubModel;

class Person extends Base
{
    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '人员管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $target = input('get.target');
        $org_id = input('session.user.org_id');
        if($target === 'all'){
            /* @var $orgmodel \app\admin\model\Organization */
            $orgmodel = model('organization');
            $org_ids = $orgmodel->children($org_id);
        }else{
            $org_ids = [$org_id];
        }
        $persons = SubModel::all(function($query)use($org_ids){
            $query->where(['org_id'=>['in', $org_ids]]);
        },'locator,organization');
        return $persons;
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $person = SubModel::get($id , 'locator');
        $this->assign('person',$person);
        return $this->fetch();
    }
    //获取添加表单
    public function add()
    {
        if ($this->request->isPost()) {
            // 获取表单上传文件 例如上传了001.jpg
            $file = $this->request->file('pic');
            if(!empty($file)){
                $info = $file->validate(['size'=>512000,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS .'static'. DS .'upload');
                if($info){
                    $this->request->post(['pic'=>$info->getSaveName()]);
                }else{
                    $return['code'] = 0;
                    $return['msg'] = $file->getError();
                    return $return;
                }
            }
            /* @var $person SubModel*/
            $person = Loader::model('Person');
            $result = $person->validate(true, [], true)->save(input('post.'));
            if(!empty($result)){
                //修改locator使用状态
                !empty($person->loc_id)&&Db::name('locator')->update(['status'=>1, 'loc_id'=>$person->loc_id]);
                $this->success('添加人员成功！', '');
            }else{
                $result === false && $this->error($person->getError());
                $this->error('添加人员失败！');
            }
        }
        $org_id = input('session.user.org_id');
        $locators = Db::name('locator')
            ->where(['status'=>0, 'org_id'=>$org_id])
            ->field('loc_id,number')
            ->select();
        $this->assign('locators', $locators);
        $this->assign('person', get_data('person'));//person相关数据映射表
        $this->assign('title', '添加人员信息');
        return $this->fetch();
    }

    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $file = $this->request->file('pic');
            $data = input('post.');
            if(!empty($file)){
                $info = $file->validate(['size'=>512000,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS .'static'. DS .'upload');
                if($info){
                    $data['pic'] = $info->getSaveName();
                }else{
                    $return['code'] = 0;
                    $return['msg'] = $file->getError();
                    return $return;
                }
            }else{
                unset($data['pic']);
            }
            $model  = SubModel::get($data['per_id']);
            $old_loc_id = $model->loc_id;
            $result = $model->validate(true, [], true)->save($data, ['per_id'=>$data['per_id']]);
            if(!empty($result)){
                //修改locator使用状态
                !empty($model->loc_id)&&Db::name('locator')->update(['status'=>1, 'loc_id'=>$model->loc_id]);
                !empty($old_loc_id)&&Db::name('locator')->update(['status'=>0, 'loc_id'=>$old_loc_id]);
                $this->success('修改成功！', '');
            }else{
                $result === 0 && $this->error('未做任何修改！');
                $result === false && $this->error($model->getError());
                $this->error('修改失败！');
            }
        }
        $id = input('get.id');
        $person = SubModel::get($id);
        $this->assign('detail',$person);
        $org_id = input('session.user.org_id');
        $locators = Db::name('locator')
            ->where(['status'=>0, 'org_id'=>$org_id])
            ->whereOr(['loc_id'=>$person->loc_id])
            ->field('loc_id,number')
            ->select();
        $this->assign('locators', $locators);
        $this->assign('person', get_data('person'));//person相关数据映射表
        $this->assign('title', '修改人员信息');
        return $this->fetch('add');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $model = model('person');
        //记录删除人员所绑定的定位模块，删除人员后修改定位模块的占用状态
        $arr = $model->field('loc_id,pic')->where(['per_id'=>['in', $ids]])->select();
        $loc_ids = array_column($arr, 'loc_id');
        $pics = array_column($arr, 'pic');
        $result = $model->where(['per_id'=>['in',$ids]])->delete();
        if(!empty($result)){
            $root = $this->request->root();
            foreach ($pics as $pic){
                $pic_path = $root. DS .'static'. DS .'upload/'.$pic;
                is_file($pic_path) && unlink($pic_path);
            }
            !empty($loc_ids)&&Db::name('locator')->where(['loc_id'=>['in',$loc_ids]])->setField('status', 0);
            $this->success('删除人员成功！', '');
        }else{
            $this->error('删除人员失败！');
        }
    }

}
