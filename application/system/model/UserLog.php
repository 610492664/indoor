<?php
namespace app\system\model;

use app\admin\model\Base;

class UserLog extends Base
{
    protected $type = [
        'create_time'=>'timestamp'
    ];
    protected $auto = ['login_ip'];
    protected $insert = ['ulog_id','org_id'];
    protected $update = [];

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
    // 关闭自动写入update_time字段
    protected $updateTime = false;

    protected function setUlogIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    protected function setIpAttr()
    {
        return request()->ip();
    }
}