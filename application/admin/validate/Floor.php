<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class Floor extends Validate
{
    protected $rule = [
        'number' => 'require|number|between:1,200|unique:floor,number^bui_id',
        'height' => 'require|number|between:0,9.99',
        'bui_id' => 'require'
    ];

    protected $field = [
        'number' => '楼层',
        'height' => '层高',
        'bui_id' => '所属建筑'
    ];

    protected $scene = [
        'exist' => [
            'number' => 'unique:floor,number^bui_id'
        ]
    ];
}