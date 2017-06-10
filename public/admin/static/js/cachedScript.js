/**
 * cashedScirpt
 * 基于jquery，getScript动态加载JavaScript脚本，并记录已加载脚本，避免重复加载
 *
 * @author JAN
 */

//定义一个全局script的标记数组，用来标记是否某个script已经下载到本地
var scriptsArray = new Array();
(function ($) {
    $.getUnloadedScript = function (url, options, callback) {
        // Shift arguments if options argument was omitted
        if ( $.isFunction( options ) ) {
            callback = options;
            options = {};
        }
        //循环script标记数组
        for (var s in scriptsArray) {
            //如果某个数组已经下载到了本地
            if (scriptsArray[s]==url) {
                if (callback && typeof(callback) == "function") {
                    callback();
                }
                return { //则返回一个对象字面量，其中的done之所以叫做done是为了与下面$.ajax中的done相对应
                    done: function (method) {
                        if (typeof method == 'function'){ //如果传入参数为一个方法
                            method();
                        }
                    }
                };
            }
        }
        //这里是jquery官方提供类似getScript实现的方法，也就是说getScript其实也就是对ajax方法的一个拓展
        options = $.extend(options || {}, {
            dataType: "script",
            url: url,
            cache:true, //其实现在这缓存加与不加没多大区别
            success: callback
        });
        scriptsArray.push(url); //将url地址放入script标记数组中
        return $.ajax(options);
    };
    $.getUnloadedScripts = function (urls, options) {
        if ($.isArray(urls)) {
            for (var i=0;i<urls.length;i++){
                $.getUnloadedScript(urls[i], options);
            }
        }
    };
})(jQuery);

