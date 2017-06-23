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
        return'{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
    }

    public function getPicAttr($value)
    {
        $directory = '/indoor/public' . DS . 'admin' . DS .'static'. DS .'upload/';
        return (empty($value)) ? ('/indoor/public/admin/static/img/headpic.png') : ($directory.$value);
    }
}