<?php
namespace app\admin\model;

class OutfireFacility extends Base
{
    protected $type = [
        'place_time' => 'timestamp:Y-m-d'
    ];
    protected $auto = [];
    protected $insert = ['ofac_id'];
    protected $update = [];

    protected function setOfacIdAttr()
    {
        return create_guid();
    }

    public function building()
    {
        return $this->belongsTo('building');
    }

    protected function getTypeAttr($value)
    {
        $status = [0=>'灭火器',1=>'消防栓', 2=>'烟雾检测器'];
        return $status[$value];
    }

    protected function getStatusAttr($value)
    {
        $status = [0=>'正常',1=>'故障', 2=>'已移除'];
        return $status[$value];
    }

}