<?php
namespace app\system\model;

use app\admin\model\Base;

class User extends Base
{
    protected $type = [
        'create_time'=>'timestamp',
        'login_time'=>'timestamp'
    ];
    protected $auto = ['login_ip', 'password'];
    protected $insert = ['use_id','org_id'];
    protected $update = [];

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
    // 关闭自动写入update_time字段
    protected $updateTime = false;

    protected function setUseIdAttr()
    {
        return create_guid();
    }

    protected function setOrgIdAttr($value)
    {
        $value = !empty($value) ? $value : input('session.user.org_id');
        return $value;
    }

    protected function setPasswordAttr($value)
    {
        return password_encrypt($value);
    }

    protected function setLoginIpAttr()
    {
        return request()->ip();
    }

    public function getLoginTimeAttr($value)
    {
        $value = ($value !== 0) ? $this->readTransform($value, 'timestamp'):'从未登录';
        return $value;
    }

    public function role()
    {
        return $this->belongsTo('role', 'rol_id', 'rol_id');
    }
}