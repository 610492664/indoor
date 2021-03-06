<?php
namespace app\admin\model;

class LocationMark extends Base
{
    protected $type = [];
    protected $auto = [];
    protected $insert = ['lmar_id','org_id'];
    protected $update = [];


    protected function setLmarIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    public function getStatusAttr($value)
    {
        $status = self::$dataMap['location_mark']['status'];
        return $status[intval($value)];
    }

    public function getTypeAttr($value)
    {
        $status = self::$dataMap['location_mark']['type'];
        return $status[intval($value)];
    }
}