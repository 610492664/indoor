<?php
namespace app\admin\model;

class Group extends Base
{
    protected $type = [];

    protected $insert = ['gro_id', 'org_id'];

    public function getStatusAttr($value)
    {
        $status = self::$dataMap['group']['status'];
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