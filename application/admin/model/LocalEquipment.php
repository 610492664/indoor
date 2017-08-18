<?php
namespace app\admin\model;

class LocalEquipment extends Base
{
    protected $type = [
        'buy_time'=>'timestamp:Y-m-d'
    ];
//    protected $auto = [];
    protected $insert = ['lequ_id','org_id'];
//    protected $update = [];

    protected function setLequIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    public function getStatusAttr($value)
    {
        $status = [0=>'正常可用',1=>'正常停用',2=>'故障停用', 3=>'报废', 4=>'遗失'];
        return $status[$value];
    }
}