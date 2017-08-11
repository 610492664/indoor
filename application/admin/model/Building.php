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
        return input('session.user.org_id');
    }

    public function outfireFacilitys()
    {
        return $this->hasMany('OutfireFacility', 'bui_id');
    }
}