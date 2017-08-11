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
        $status = [1=>'职务一',2=>'职务二', 3=>'职务三'];
        return $status[$value];
    }

    public function getPidtypeAttr($value)
    {
        $status = [0=>'士官证',1=>'身份证'];
        return $status[$value];
    }

    public function getRankAttr($value)
    {
        $status = [1=>'警衔一',2=>'警衔二', 3=>'警衔三'];
        return $status[$value];
    }

    public function getPicAttr($value)
    {
        $directory = '/indoor/public' . DS . 'admin' . DS .'static'. DS .'upload/';
        return (empty($value)) ? ('/indoor/public/admin/static/img/headpic.png') : ($directory.$value);
    }

    public function locator()
    {
        return $this->belongsTo('Locator', 'loc_id')->bind(['loc_number'=>'number']);
    }
}