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
        return '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
    }

    public function buildings()
    {
        return $this->belongsToMany('Building','inc_bui', 'inc_id');
    }
}