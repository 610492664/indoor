/**
 * Created by Administrator on 2017/6/17.
 * require.js 主入口文件
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
        'bootstrap': ['plugin/bootstrap/js/bootstrap'],
        'bootstrap-validator':['plugin/bootstrap-validator-1000hz/validator'],
        'bootstrap-dialog': ['plugin/bootstrap-dialog/js/bootstrap-dialog'],
        'html5shiv': ['plugin/compatible/html5shiv'],
        'respond': ['plugin/compatible/respond.min'],
        'dataTables.bootstrap': ['plugin/datatables/dataTables.bootstrap'],
        'jquery.dataTables': ['plugin/datatables/jquery.dataTables'],
        'dataTables.input' : ['plugin/datatables/plug-ins/ellipses'],
        'dataTables.buttons.bootstrap': ['plugin/datatables/extensions/Buttons/js/buttons.bootstrap'],
        'dataTables.buttons': ['plugin/datatables/extensions/Buttons/js/dataTables.buttons'],
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
        'bootstrap-validator': {deps: ['bootstrap']},
        'bootstrap-dialog': {deps: ['bootstrap','css!' + baseUrl + 'plugin/bootstrap-dialog/css/bootstrap-dialog.css']},
        'dataTables.bootstrap': {deps: ['jquery','bootstrap','jquery.dataTables','css!' + baseUrl + 'plugin/datatables/dataTables.bootstrap.css']},
        'dataTables.input':  {deps: ['dataTables.bootstrap']},
        'inputmask': {deps: ['jquery']},
        'inputmask.extensions': {deps: ['jquery','inputmask']},
        'inputmask.date': {deps: ['jquery','inputmask','inputmask.extensions']},
        'jquery.slimscroll': {deps: ['jquery']},
        'jquery.form': {deps: ['jquery']},
        'dataTables.buttons': {deps: ['dataTables.bootstrap']},
        'dataTables.buttons.bootstrap': {deps: ['dataTables.buttons','css!' + baseUrl + 'plugin/datatables/extensions/Buttons/css/buttons.bootstrap.css']}
    },
    deps: ['css!//cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css'],
    // 开启debug模式，不缓存资源
    urlArgs: "ver=" + (new Date()).getTime()
});


// UI框架初始化
require(['bootbox','bootstrap-dialog', 'fastclick', 'jquery.slimscroll','app','common'],
function (bootbox,BootstrapDialog) {
   window.bootbox = bootbox;
   window.BootstrapDialog = BootstrapDialog;
});
