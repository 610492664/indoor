<?php
namespace app\admin\model;

class Incident extends Base
{
    protected $type = [
        'start_time' => 'timestamp',
        'end_time' => 'timestamp'
    ];
    protected $auto = [];
    protected $insert = ['inc_id','org_id'];
    protected $update = [];

    protected function setIncIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    protected function getTypeAttr($value)
    {
        $status = [0=>'演习',1=>'实战'];
        return $status[$value];
    }

    public function buildings()
    {
        return $this->belongsToMany('Building','inc_bui', 'bui_id', 'inc_id');
    }
    public function persons()
    {
        return $this->belongsToMany('Person','inc_per', 'per_id', 'inc_id');
    }
}