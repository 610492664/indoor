<?php
namespace app\admin\model;

class Organization extends Base
{
    protected $type = [];
    protected $insert = ['org_id','p_org_id'];

    protected function setOrgIdAttr()
    {
        return create_guid();
    }

    protected function setPOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    public function getStatusAttr($value)
    {
        $status = [0=>'正常',1=>'撤销',2=>'合并'];
        return $status[$value];
    }

    public function organization()
    {
      return $this->belongsTo('Organization', 'p_org_id', 'org_id');
    }

}