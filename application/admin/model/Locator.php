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
        $status = [0=>'未使用',1=>'正常使用',2=>'正常停用', 3=>'故障', 4=>'遗失',5=>'报废'];
        return $status[intval($value)];
    }

    protected function setlocIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return'{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
    }

    public function person()
    {
      return $this->hasOne('Person', 'loc_id')->bind(['per_name'=>'name']);
    }

}