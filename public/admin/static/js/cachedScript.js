/**
 * cashedScirpt
 * 基于jquery，ajax动态加载JavaScript脚本，并记录已加载脚本，避免重复加载
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
        if(url.indexOf('/pages/')==-1){
            scriptsArray.push(url); //将url地址放入script标记数组中,(排除pages目录中的页面js文件，页面js需要都每次执行)
        }
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

function person() {
    $('#table').DataTable({
        "dom": 'rt<"bottom"ifpl><"clear">',
        "paging": true,
        // "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
    });
    //Money Euro
    $("[data-mask]").inputmask();
    $("#pidtypename a").on('click',function (e) {
        $("#pidtypename").prev().text($(this).text());
        $("input[name='pidtype']").val($(this).attr('data-value'));
        e.preventDefault();
    });
    $("button[type=reset]").click(function () {
        $("#thumb").attr('src',IMG_PATH+"/headpic.png");
        $('#thumb').attr('alt','请上传头像');
        return true;
    });

    $("div.picbox").hover(function () {
        $(this).children('span').show();
    },function () {
        $(this).children('span').hide();
    });
    $("div.picbox span").click(function () {
        $("#thumb").attr('src',IMG_PATH+"/headpic.png");
        $('#thumb').attr('alt','请上传头像');
        $("#pic").val("");
    })
}
//人员图片预览
function addpic(file){
    $("div.picbox").next().empty();
    var ireg = /image\/.*/i;
    if(file.files && file.files[0]){
        var f = file.files[0];
        if(!f.type.match(ireg)) {
            //设置错误信息
            $("div.picbox").next().append( '<li>' + f.name +'图片类型不对.</li>');
            return false;
        }else if (f.size >= 512000) {
            $("div.picbox").next().append('<li>图片大小过大，应小于500k</li>');
            return false;
        }else if (!(window.File && window.FileList && window.FileReader && window.Blob)){
            $("div.picbox").next().html( '<li>您的浏览器不支持图片预览</li>');
            $('#thumb').attr('alt',file.name);
            return true;
        }
        var reader = new FileReader();
        reader.onload = (function(file) {
            return function(e) {
                $('#thumb').attr('src',this.result);
                $('#thumb').attr('alt',file.name);
            };
        })(f);
        reader.readAsDataURL(f);
    }
}
