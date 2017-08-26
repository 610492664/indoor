<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class Building extends Validate
{
    protected $rule = [
        'name' => 'require|chsDash|max:30|unique:building,name^org_id'
    ];

    protected $field = [
        'name' => '建筑名称'
    ];

    protected $scene = [
        'exist' => [
            'name' => 'unique:building,name^org_id'
        ]
    ];
}