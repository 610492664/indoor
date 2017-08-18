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
        $status = [0=>'正常',1=>'故障',2=>'报废', 3=>'遗失'];
        return $status[intval($value)];
    }

    public function getTypeAttr($value)
    {
        $status = [0=>'一般',1=>'紧急'];
        return $status[intval($value)];
    }
}