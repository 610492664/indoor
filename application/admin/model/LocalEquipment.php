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
        $status = self::$dataMap['local_equipment']['status'];
        return $status[$value];
    }
}