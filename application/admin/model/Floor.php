<?php
namespace app\admin\model;

class Floor extends Base
{
    protected $type = [];
    protected $auto = [];
    protected $insert = ['flo_id'];
    protected $update = [];

    protected function setFloIdAttr()
    {
        return create_guid();
    }
}