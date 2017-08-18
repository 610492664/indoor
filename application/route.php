<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Db;
use think\Route;

Route::get('floorlist/:bui_id', function ($bui_id){
    $floors = Db::name('floor')->field('flo_id, number')->where(['bui_id'=>$bui_id])->order('number')->select();
    $floorStr = "";
    foreach ($floors as $floor){
        $floorStr .= '<option value="'.$floor['flo_id'].'">第'.$floor['number'].'层</option>';
    }
    return $floorStr;
});

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],

];
