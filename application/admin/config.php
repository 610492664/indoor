<?php
//配置文件
return [
// 视图输出字符串内容替换
    'view_replace_str'  => [
       request()->root().'/'.request()->module()=>'',
        '__IMG__'=>'/indoor/public/admin/static/img',
        '__PLUGIN__'=>'/indoor/public/admin/static/plugin',
    ],
];