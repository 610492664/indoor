<?php
namespace app\system\model;

use app\admin\model\Base;

class Node extends Base
{
    protected $type = [
        'create_time'=>'timestamp'
    ];
    protected $auto = [];
    protected $insert = ['nod_id'];
    protected $update = [];

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
    // 关闭自动写入update_time字段
    protected $updateTime = false;

    protected function setNodIdAttr()
    {
        return create_guid();
    }
}