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

    public function buildings()
    {
        return $this->belongsToMany('Building','inc_bui', 'bui_id', 'inc_id');
    }
}