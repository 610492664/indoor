<?php
namespace app\admin\model;

class Building extends Base
{
    protected $type = [];
    protected $auto = [];
    protected $insert = ['bui_id','org_id'];
    protected $update = [];

    protected function setBuiIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
    }

    public function outfireFacilitys()
    {
        return $this->hasMany('OutfireFacility', 'bui_id');
    }
}