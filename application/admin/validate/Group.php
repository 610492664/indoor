<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\admin\validate;

use think\Validate;

class Group extends Validate
{
    protected $rule = [
        'name' => 'require|max:30|unique:group,name^org_id',
        'org_id' => 'require'
    ];

    protected $scene = [
        'add' => [],
        'exist' => [
            'name' => 'unique:group,name^org_id'
        ]
    ];

    protected $field = [
        'name' => '组名',
        'org_id' => '单位id',
    ];
}