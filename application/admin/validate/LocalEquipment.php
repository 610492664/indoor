<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class LocalEquipment extends Validate
{
    protected $rule = [
        'name' => 'require|chsDash|max:30|unique:local_equipment,name^org_id',
        'buy_time' => 'require|date'
    ];

    protected $field = [
        'name' => '名称',
        'buy_time'=> '购入日期'
    ];
}