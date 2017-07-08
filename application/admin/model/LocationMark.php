<?php
namespace app\admin\model;

class LocationMark extends Base
{
    protected $type = [];
    protected $auto = [];
    protected $insert = ['lmar_id','org_id'];
    protected $update = [];


    protected function setLmarIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
    }
}