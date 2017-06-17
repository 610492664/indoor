/**
 * Created by Administrator on 2017/6/17.
 */
// 当前资源URL目录
var baseUrl = STATIC_PATH +'/';

// RequireJs 配置参数
require.config({
    baseUrl: baseUrl,
    waitSeconds: 0,
    map: {'*': {css: baseUrl + 'plugin/require/css.js'}},
    paths: {
        // 自定义插件（源码自创建或已修改源码）
        'template': ['js/template'],
        'common': ['js/common'],
        'app': ['js/app'],
        // 开源插件（未修改源码）
        'domready': ['plugin/require/domReady'],
        'bootbox': ['plugin/bootBox/bootbox.min'],
        'bootstrap': ['plugin/bootstrap/js/bootstrap.min'],
        'html5shiv': ['plugin/compatible/html5shiv'],
        'respond': ['plugin/compatible/respond.min'],
        'dataTables.bootstrap': ['plugin/datatables/dataTables.bootstrap'],
        'jquery.dataTables': ['plugin/datatables/jquery.dataTables'],
        'fastclick': ['plugin/fastClick/fastclick'],
        'inputmask': ['plugin/input-mask/jquery.inputmask'],
        'inputmask.date': ['plugin/input-mask/jquery.inputmask.date.extensions'],
        'inputmask.extensions': ['plugin/input-mask/jquery.inputmask.extensions'],
        'jquery.slimscroll': ['plugin/slimScroll/jquery.slimscroll'],
        'jquery': ['plugin/jQuery/2.2.4/jquery'],
        'jquery.form': ['plugin/jquery-form/jquery.form']
    },
    shim: {
        'app': {deps: ['jquery','bootstrap']},
        'common': {deps: ['jquery','bootbox']},
        'bootbox': {deps: ['jquery','bootstrap']},
        'bootstrap': {deps: ['jquery']},
        'dataTables.bootstrap': {deps: ['jquery','bootstrap','jquery.dataTables','css!' + baseUrl + 'plugin/datatables/dataTables.bootstrap.css']},
        'inputmask': {deps: ['jquery']},
        'inputmask.extensions': {deps: ['jquery','inputmask']},
        'inputmask.date': {deps: ['jquery','inputmask','inputmask.extensions']},
        'jquery.slimscroll': {deps: ['jquery']},
        'jquery.form': {deps: ['jquery']}
    },
    deps: ['css!//cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css'],
    // 开启debug模式，不缓存资源
    urlArgs: "ver=" + (new Date()).getTime()
});


// UI框架初始化
require(['bootbox','fastclick', 'jquery.slimscroll','app','common']);
