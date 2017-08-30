<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class OutfireFacility extends Validate
{
    protected $rule = [
        'number' => 'require|chsDash|max:30|unique:outfire_facility',
    ];

    protected $field = [
        'number' => '编号',
    ];

    protected $scene = [
        'exist' => [
            'number' => 'unique:outfire_facility'
        ]
    ];
}