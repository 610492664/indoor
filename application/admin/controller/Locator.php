<?php
namespace app\admin\controller;

use think\Db;
use \Think\Loader;
use \app\admin\model\Locator as SubModel;

class Locator extends Base
{

    public function index()
    {
        if(input('?get.action')){
            $org_id = input('session.user.org_id');
            $locator = model('locator');
            $records = $locator->alias('loc')
                ->field('loc.loc_id, loc.number, loc.mac, per.name per_name,buy_time,loc.status')
                ->join('__PERSON__ per', 'per.loc_id = loc.loc_id','LEFT')
                ->where(['loc.org_id'=>$org_id])
                ->select();
            return $records;
        }
        return $this->fetch();
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $record = SubModel::get($id);
        $this->assign('record',$record);
        return $this->fetch();
    }
    //获取添加表单
    public function add(){
        return $this->fetch();
    }
    //添加到数据库
    public function insert()
    {
        $model = Loader::model('Locator');
        $result = $model->data(input('post.'), true)->save();
        if(!empty($result)){
            $return['code'] = 1;
            $return['msg'] = '添加成功！';
        }else{
            $return['code'] = 0;
            $return['msg'] = '添加失败！';
        }
        return $return;
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $record = SubModel::get($id);
        $this->assign('record',$record);
        return $this->fetch();
    }
    public function update()
    {
        /* @var $model SubModel*/
        $model = Loader::model('Locator');
        $loc_id = input('post.loc_id');
        $result = $model->save(input('post.'),['loc_id' => $loc_id]);
        if(!empty($result)){
            $this->success('修改成功！','');
        }else{
            $this->error('修改失败！');
        }
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        if(!empty($result)){
            $this->success('删除定位模块成功！');
        }else{
            $this->error('删除删除定位模块失败！');
        }
    }

}
