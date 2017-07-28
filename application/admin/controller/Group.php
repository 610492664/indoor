<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Group as SubModel;

class Group extends Base
{

    public function index()
    {
        if(input('?get.action')){
            $model = model('group');
            $records = $model->alias('gro')->field('gro.gro_id, gro.name, per.name per_name,gro.status')->join('__PERSON__ per', 'per.per_id = gro.per_id','LEFT')->select();
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
        /* @var $model SubModel*/
        $model = Loader::model('group');
        $data['gro_id'] = create_guid();
        $data['name'] = input('post.name');
        $data['org_id'] = '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
        $data['status'] = input('post.status');
        $result = $model->data($data)->save();
        return result($result,'添加成功！', '添加失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $record = SubModel::get($id)->getData();
        $this->assign('group',$record);
        return $this->fetch();
    }
    public function update()
    {
        $model = Loader::model('group');
        $gro_id = input('post.gro_id');
        $data['name'] = input('post.name');
        $data['org_id'] = '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
        $data['status'] = input('post.status');
        $result = $model->save($data,['gro_id' => $gro_id]);
        return result($result,'修改成功！', '修改失败！');
    }

    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
//        $result = true;
        return result($result,'删除成功！', '删除失败！');
    }

}
