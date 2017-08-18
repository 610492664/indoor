<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\system\validate;

use think\Validate;

class Role extends Validate
{
    protected $rule = [
        'name' => 'require|chsDash|max:20|unique:role,name^org_id|notIn:系统超级管理员',
        'desc'=> 'max:255',
    ];

    protected $field = [
        'name' => '角色名',
        'desc'=> '描述'
    ];

    protected $message = [
        'name.notIn'=>'添加失败，系统超级管理员为系统内置角色！'
    ];
}