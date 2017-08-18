<?php
namespace app\admin\model;

class Group extends Base
{
    protected $type = [
        'buy_time' => 'timestamp:Y-m-d'
    ];

    protected $insert = ['gro_id', 'org_id'];

    public function getStatusAttr($value)
    {
        $status = [0 => '正常', 1 => '撤销'];
        return $status[$value];
    }

    protected function setGroIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }
}