<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class LocationMark extends Validate
{
    protected $rule = [
        'name' => 'require|chsDash|max:30|unique:location_mark,name^org_id',
        'mac'=> 'require|alphaNum|max:50|unique:location_mark,mac^org_id',
    ];

    protected $field = [
        'name' => '名称',
        'mac'=> 'mac地址',
    ];
}