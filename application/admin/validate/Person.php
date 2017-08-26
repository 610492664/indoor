<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class Person extends Validate
{
    protected $rule = [
        'name' => 'require|chs|max:10',
        'birthday'=> 'require|date',
        'join_time'=> 'require|date',
        'pid' => 'require|alphaNum|unique:person',
    ];

    protected $field = [
        'name' => '姓名',
        'birthday'=> '出生日期',
        'join_time'=> '入伍日期',
        'pid' => '证件号',
    ];
}