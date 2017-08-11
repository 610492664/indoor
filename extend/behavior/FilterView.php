<?php

namespace behavior;

use think\Request;

/**
 * 视图输出过滤
 * Class FilterView
 * @package hook
 * @author Jan <610492664@qq.com>
 * @date 2017/04/25 11:59
 */
class FilterView {

    /**
     * 当前请求对象
     * @var Request
     */
    protected $request;

    /**
     * 行为入口
     * @param $params
     */
    public function run(&$params) {
        $this->request = Request::instance();
        $appRoot = $this->request->root();
        $module = $this->request->module();
        $public = strpos($appRoot, EXT) ? ltrim(dirname($appRoot), DS) : $appRoot;
        $replace = [
            '__APP__'    => $appRoot,
            '__SELF__'   => $this->request->url(),
            '__PUBLIC__' => $public,
            '#'.request()->root() =>'#',
            '__MSTATIC__'=>$public.'/'.$module,
            '__MODULE__'=>$appRoot.'/'.$module
        ];
        $params = str_replace(array_keys($replace), array_values($replace), $params);
//        !IS_CLI && $this->baidu($params);
    }

    /**
     * 百度统计实现代码
     * @param $params
     */
    public function baidu(&$params) {
        if (($key = sysconf('tongji_baidu_key'))) {
            $script = <<<SCRIPT
        <script>
            var _hmt = _hmt || [];
            (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?{$key}";
                var s = document.getElementsByTagName("script")[0]; 
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
SCRIPT;
            $params = preg_replace('|</body>|i', "{$script}\n    </body>", $params);
        }
    }

}
