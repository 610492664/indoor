<?php
namespace app\admin\model;

class Locator extends Base
{
    protected $type = [
        'buy_time' => 'timestamp:Y-m-d'
    ];

    public function getStatusAttr($value)
    {
        $status = [0=>'未使用',1=>'正常使用',2=>'正常停用', 3=>'故障'];
        return $status[$value];
    }

    public function person()
    {
      return $this->hasOne('Person', 'loc_id')->bind(['per_name'=>'name']);
    }

}