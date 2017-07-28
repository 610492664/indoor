<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Incident as SubModel;

class Incident extends Base
{
    public function index()
    {
        if(input('?get.action')){
            $org_id = input('session.user.org_id');
            $list = SubModel::all(function ($query) use($org_id) {
                $query->where('org_id',$org_id)->order('start_time');
            },'buildings');
            return $list;
        }
        return $this->fetch();
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
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
        $model = Loader::model('incident');
        $buiding = \app\admin\model\Building::get('{BFF5481F-A3DF-F185-927A-83FF572351DB}');
        $result = $model->data(input('post.'),true)->save();
        $model->buildings()->save($buiding,['ibui_id'=>create_guid()] );
        return result($result,'添加事件成功！', '添加事件失败！');
    }
    //获取修改表单
    public function mod()
    {
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
    //修改更新
    public function update()
    {
        $model = new SubModel;
        $result = $model->save(input("post."),['inc_id' => input('post.inc_id')]);
        return result($result,'修改事件成功！', '修改事件失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        return result($result,'删除事件成功！', '删除事件失败！');
    }

}
