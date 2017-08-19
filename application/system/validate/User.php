<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/15
 * Time: 13:54
 */

namespace app\system\validate;

use think\Validate;

class User extends Validate
{
    protected $rule = [
        'name' => 'require|alphaDash|length:3,20|unique:user',
        'password'=> 'require|confirm|length:6,20',
        'email'=> 'require|email',
        'phone'=> 'isMobile',
    ];

    protected $field = [
        'name' => '用户名',
        'password'=> '密码',
        'email'=> 'E-mail',
        'phone'=> '手机号',
    ];

    protected $scene = [
        'self_info' => ['name','email','phone'],
        'self_pass' => ['password'],
        'mod' => ['name', 'email', 'phone']
    ];

    /**
     * 验证手机号是否正确
     */
    protected function isMobile($mobile) {
        if (!is_numeric($mobile)) {
            return false;
        }
        return preg_match('#^13[\d]{9}$|^14[5,7]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0,6,7,8]{1}\d{8}$|^18[\d]{9}$#', $mobile) ? true : false;
    }
}