<?php
namespace app\admin\model;

use think\Loader;
use think\Model;

class Base extends Model
{
    protected static $dataMap = []; //保存相关数据代码映射表

    protected static function init()
    {
        parent::init();
        $class = get_called_class();
        $str = preg_replace('/.*\\\\/', '',$class);
        $filename = Loader::parseName($str);//驼峰转换成下划线
        self::$dataMap[$filename] = get_data($filename);//添加数据代码映射表
    }
}