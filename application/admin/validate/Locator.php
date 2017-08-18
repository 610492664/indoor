<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class Locator extends Validate
{
    protected $rule = [
        'number' => 'require|chsDash|max:30|unique:locator,number^org_id',
        'mac'=> 'require|alphaNum|max:30|unique:locator,mac^org_id',
        'buy_time'=> 'require|date',
    ];

    protected $field = [
        'number' => '编号',
        'mac'=> '物理标识码',
        'buy_time'=> '购入日期',
    ];
}