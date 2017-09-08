<?php
namespace app\admin\model;

class Locator extends Base
{
    protected $type = [
        'buy_time' => 'timestamp:Y-m-d'
    ];
    protected $insert = ['loc_id','org_id'];

    public function getStatusAttr($value)
    {
        $status = self::$dataMap['locator']['status'];
        return $status[intval($value)];
    }

    protected function setlocIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    public function person()
    {
      return $this->hasOne('Person', 'loc_id')->bind(['per_name'=>'name']);
    }

}