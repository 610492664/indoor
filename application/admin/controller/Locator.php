<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Locator as MLocator;

class Locator extends Base
{

    public function index()
    {
        return $this->fetch();
    }
    //获取列表
    public function getList()
    {
//        $org_id = input('session.org_id');
//       $records = MLocator::all(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'], 'person');
//       dump($records);exit;
        $locator = model('locator');
        $records = $locator->alias('loc')->field('loc.loc_id, loc.name, per.name per_name,buytime,loc.status')->join('__PERSON__ per', 'per.loc_id = loc.loc_id','LEFT')->select();
        return $records;
    }
    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $record = MLocator::get($id);
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
        $data['loc_id'] = create_guid();
        $data['name'] = input('post.name');
        $data['org_id'] = '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
        $data['buytime'] = input('post.buytime/s');
        $data['status'] = input('post.status');
        $result = $model->data($data)->save();
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
        $record = MLocator::get($id);
        $record = $record->getData();
        $this->assign('record',$record);
        return $this->fetch();
    }
    public function update()
    {
        $model = Loader::model('Locator');
        $loc_id = input('post.loc_id');
        $data['name'] = input('post.name');
        $data['org_id'] = '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
        $data['buytime'] = input('post.buytime/s');
        $data['status'] = input('post.status');
        $result = $model->save($data,['loc_id' => $loc_id]);
        if(!empty($result)){
            $return['code'] = 1;
            $return['msg'] = '修改成功！';
        }else{
            $return['code'] = 0;
            $return['msg'] = '修改失败！';
        }
        return $return;
    }

    //删除
    public function del()
    {

    }

}
