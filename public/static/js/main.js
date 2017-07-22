/**
 * Created by Administrator on 2017/6/17.
 * require.js 主入口文件
 */
// 当前资源URL目录
var baseUrl = PUBLIC_PATH;

// RequireJs 配置参数
require.config({
    baseUrl: baseUrl,
    waitSeconds: 0,
    map: {'*': {css: baseUrl + '/static/plugin/require/css.js'}},
    paths: {
        // 自定义插件（源码自创建或已修改源码）
        'template': ['static/js/template'],
        'common': ['static/js/common'],
        'app': ['static/js/app'],
        'listen': ['static/js/listen'],
        // 开源插件（未修改源码）
        'domready': ['static/plugin/require/domReady'],
        'bootbox': ['static/plugin/bootBox/bootbox.min'],
        'bootstrap': ['static/plugin/bootstrap/js/bootstrap'],
        'bootstrap-validator':['static/plugin/bootstrap-validator-1000hz/validator'],
        'bootstrap-dialog': ['static/plugin/bootstrap-dialog/js/bootstrap-dialog'],
        'bootstrap-switch':['static/plugin/bootstrap-switch/js/bootstrap-switch'],
        'html5shiv': ['static/plugin/compatible/html5shiv'],
        'respond': ['static/plugin/compatible/respond.min'],
        'dataTables.bootstrap': ['static/plugin/datatables/dataTables.bootstrap'],
        'jquery.dataTables': ['static/plugin/datatables/jquery.dataTables'],
        'dataTables.input' : ['static/plugin/datatables/plug-ins/ellipses'],
        'dataTables.buttons.bootstrap': ['static/plugin/datatables/extensions/Buttons/js/buttons.bootstrap'],
        'dataTables.buttons': ['static/plugin/datatables/extensions/Buttons/js/dataTables.buttons'],
        'fastclick': ['static/plugin/fastClick/fastclick'],
        'inputmask': ['static/plugin/input-mask/jquery.inputmask'],
        'inputmask.date': ['static/plugin/input-mask/jquery.inputmask.date.extensions'],
        'inputmask.extensions': ['static/plugin/input-mask/jquery.inputmask.extensions'],
        'jquery.slimscroll': ['static/plugin/slimScroll/jquery.slimscroll'],
        'jquery': ['static/plugin/jQuery/2.2.4/jquery'],
        'jquery.form': ['static/plugin/jquery-form/jquery.form'],
        'select2': ['static/plugin/select2/js/select2.full'],
    },
    shim: {
        'app': {deps: ['jquery','bootstrap']},
        'common': {deps: ['jquery','bootbox']},
        'bootbox': {deps: ['jquery','bootstrap']},
        'bootstrap': {deps: ['jquery']},
        'bootstrap-validator': {deps: ['bootstrap']},
        'bootstrap-switch': {deps: ['bootstrap', 'css!' + baseUrl + '/static/plugin/bootstrap-switch/css/bootstrap-switch.css']},
        'bootstrap-dialog': {deps: ['bootstrap','css!' + baseUrl + '/static/plugin/bootstrap-dialog/css/bootstrap-dialog.css']},
        'dataTables.bootstrap': {deps: ['jquery','bootstrap','jquery.dataTables','css!' + baseUrl + '/static/plugin/datatables/dataTables.bootstrap.css']},
        'dataTables.input':  {deps: ['dataTables.bootstrap']},
        'inputmask': {deps: ['jquery']},
        'inputmask.extensions': {deps: ['jquery','inputmask']},
        'inputmask.date': {deps: ['jquery','inputmask','inputmask.extensions']},
        'jquery.slimscroll': {deps: ['jquery']},
        'jquery.form': {deps: ['jquery']},
        'dataTables.buttons': {deps: ['dataTables.bootstrap']},
        'dataTables.buttons.bootstrap': {deps: ['dataTables.buttons','css!' + baseUrl + '/static/plugin/datatables/extensions/Buttons/css/buttons.bootstrap.css']},
        'select2':{deps: ['css!' + baseUrl + '/static/plugin/select2/css/select2.css', 'css!' + baseUrl + '/static/plugin/select2/css/AdminLTE.css']}
    },
    deps: ['css!//cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css'],
    // 开启debug模式，不缓存资源
    // urlArgs: "ver=" + (new Date()).getTime()
});


// UI框架初始化
require(['bootbox','bootstrap-dialog','bootstrap-switch', 'fastclick', 'jquery.slimscroll','app','listen'],
function (bootbox,BootstrapDialog) {
   window.bootbox = bootbox;
   window.BootstrapDialog = BootstrapDialog;
   window.onhashchange();
});
