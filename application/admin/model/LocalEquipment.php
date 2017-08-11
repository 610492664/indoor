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
        $status = [0=>'未使用',1=>'正常使用',2=>'正常停用', 3=>'故障'];
        return $status[$value];
    }
}