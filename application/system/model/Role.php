<?php
namespace app\system\model;

use app\admin\model\Base;

class Role extends Base
{
    protected $type = [
        'create_time'=>'timestamp'
    ];
    protected $auto = [];
    protected $insert = ['rol_id','org_id', 'create_by'];
    protected $update = [];

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
    // 关闭自动写入update_time字段
    protected $updateTime = false;

    protected function setRolIdAttr()
    {
        return create_guid();
    }

    protected function setCreateByAttr()
    {
        return input('session.user.use_id');
    }

    protected function setOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    public function users()
    {
        return $this->hasMany('User', 'rol_id');
    }

    public function nodes()
    {
        return $this->belongsToMany('Node', 'rol_nod', 'node', 'rol_id');
    }

    /**
     * 获取超级管理员角色id
     * @return mixed
     */
    public function getSuperRole()
    {
        return $this->where(['org_id'=>0])->value('rol_id');
    }
}