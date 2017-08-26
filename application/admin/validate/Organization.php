<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class Organization extends Validate
{
    protected $rule = [
        'name' => 'require|max:30|unique:organization',
        'abbr' => 'max:20',
        'address' => 'max:50'
    ];

    protected $scene = [
        'add' => [],
        'exist' => [
            'name' => 'unique:organization',
            'abbr'=> 'unique:organization'
        ]
    ];

    protected $field = [
        'name' => '单位名称',
        'abbr' => '单位简称',
        'address' => '单位地址'
    ];
}