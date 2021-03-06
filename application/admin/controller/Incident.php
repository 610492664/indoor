<?php
namespace app\admin\controller;

use \Think\Loader;
use \app\admin\model\Incident as SubModel;

class Incident extends Base
{
    public function index()
    {
        if(input('?param.view')){
            $this->assign('title', '事件管理');
            $this->breadCrumb();
            return $this->fetch();
        }
        $org_id = input('session.user.org_id');
        $start = strtotime(input('get.start')) ?: strtotime('-29 day midnight');//默认一个月内
        $end = strtotime(input('get.end')) ?: strtotime('1 day midnight');
        /* @var $orgmodel \app\admin\model\Organization */
        $orgmodel = model('organization');
        $children_org_ids = $orgmodel->children($org_id);

        $list = SubModel::all(function ($query) use($children_org_ids, $start, $end) {
            $query->where(['org_id'=>['in', $children_org_ids], 'start_time'=>['between', [$start, $end]]])->order('start_time');
        },'buildings,organization');
        return $list;
    }

    //查看详情
    public function detail()
    {
        $id = input('get.id');
        $detail = SubModel::get($id, 'buildings,persons,organization');
        $this->assign('detail',$detail);
        return $this->fetch();
    }
//    //获取添加表单
//    public function add(){
//        if ($this->request->isPost()) {
//            /* @var $model SubModel*/
//            $model = Loader::model('incident');
//            //测试的建筑，此功能后面会删除
//            $buiding = \app\admin\model\Building::get('{BFF5481F-A3DF-F185-927A-83FF572351DB}');
//            $result = $model->data(input('post.'),true)->save();
//            $model->buildings()->save($buiding,['ibui_id'=>create_guid()] );
//            if(!empty($result)){
//                $this->success('添加事件成功！','');
//            }else{
//                $this->error('添加事件失败！');
//            }
//        }
//        return $this->fetch();
//    }
    //获取修改表单
    public function mod()
    {
        if ($this->request->isPost()) {
            $model = new SubModel;
            $result = $model->save(input("post."),['inc_id' => input('post.inc_id')]);
            if(!empty($result)){
                $this->success('修改事件成功！','');
            }else{
                $this->error('修改事件失败！');
            }
        }
        $id = input('get.id');
        $detail = SubModel::get($id);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
//    //删除
//    public function del()
//    {
//        $ids = input('get.id/a');
//        $result = SubModel::destroy($ids);
//        if(!empty($result)){
//            db('inc_per')->where(['inc_id'=>['in', $ids]])->delete();
//            db('inc_bui')->where(['inc_id'=>['in', $ids]])->delete();
//            $this->success('删除事件成功！','');
//        }else{
//            $this->error('删除事件失败！');
//        }
//    }

}
