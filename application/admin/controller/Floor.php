<?php
namespace app\admin\controller;

use app\admin\model\Building as BuildingModel;
use \Think\Loader;
use \app\admin\model\Floor as SubModel;

class Floor extends Base
{
    public function index()
    {
        if(input('?param.view')){
            /**@var $buildingModel BuildingModel */
            $buildingModel = Loader::model('Building');
            $buildings = $buildingModel->field(['bui_id','name'])->where(['org_id'=>'{3033D1DB-3C92-6624-DCDE-0435498BB60D}'])->select();
            $this->assign('buildings', $buildings);
            return $this->fetch();
        }
        $model = new SubModel();
        $list = $model->where(['bui_id'=>input('get.bui_id')])->select();
        return $list;
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
        $model = Loader::model('Floor');
        $result = $model->data(input('post.'))->save();
        return result($result,'添加楼层成功！', '添加楼层失败！');
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
        $result = $model->save(input("post."),['flo_id' => input('post.flo_id')]);
        return result($result,'修改楼层信息成功！', '修改楼层信息失败！');
    }
    //删除
    public function del()
    {
        $ids = input('get.id/a');
        $result = SubModel::destroy($ids);
        return result($result,'删除楼层信息成功！', '删除楼层信息失败！');
    }

}
