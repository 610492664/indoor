<?php
namespace app\admin\model;

class User extends Base
{
    protected $type = ['create_time'=>'timestamp'];
    protected $auto = ['login_ip'];
    protected $insert = ['id','org_id'];
    protected $update = [];

    // 关闭自动写入时间戳
    protected $autoWriteTimestamp = true;
    // 关闭自动写入update_time字段
    protected $updateTime = false;

    protected function setIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr()
    {
        return '{3033D1DB-3C92-6624-DCDE-0435498BB60D}';
    }

    protected function setLoginIpAttr()
    {
        return request()->ip();
    }

    public function getLoginTimeAttr($value)
    {
        $value = $value !== 0 ?:'从未登录';
        return $value;
    }
}