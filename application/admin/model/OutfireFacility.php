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
}