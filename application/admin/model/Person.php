<?php
namespace app\admin\model;

class Person extends Base
{
    protected $type = [
        'birthday' => 'timestamp:Y-m-d',
        'join_time' => 'timestamp:Y-m-d',
    ];
    protected $auto = [];
    protected $insert = ['per_id', 'org_id'];
    protected $update = [];

    protected function setPerIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    public function getPositionAttr($value)
    {
        $status = self::$dataMap['person']['position'];
        return $status[$value];
    }

    public function getPidtypeAttr($value)
    {
        $status = self::$dataMap['person']['pidtype'];
        return $status[$value];
    }

    public function getSexAttr($value)
    {
        $status = [0=>'男',1=>'女'];
        return $status[$value];
    }

    public function getRankAttr($value)
    {
        $status = self::$dataMap['person']['rank'];
        return $status[$value];
    }

    public function getPicAttr($value)
    {
        $directory = '/indoor/public'. DS .'static'. DS .'upload/';
        return (empty($value)) ? ('/indoor/public/static/img/headpic.png') : ($directory.$value);
    }

    public function locator()
    {
        return $this->belongsTo('Locator', 'loc_id')->bind(['loc_number'=>'number']);
    }
    public function organization()
    {
        return $this->belongsTo('Organization', 'org_id')->bind(['orgname'=>'name']);
    }
}