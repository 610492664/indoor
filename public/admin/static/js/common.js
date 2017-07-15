/**
 *
 * 公共函数文件
 * 定义全局方法
 *
 * @author JAN
 */
(function ($) {
    //表格添加索引列方法
    $.table_index = function (table, column_num) {
        column_num = column_num || 1 ;
        table.on('order.dt search.dt',
            function () {
                table.column(column_num, {
                    search: 'applied',
                    order: 'applied'
                }).nodes().each(function (cell, i) {
                    cell.innerHTML = i + 1;
                });
            }).draw();
    };

    //加载content内容
    $.content_load = function (href, layout_fix) {
        $.ajax({
            url: href,
            type: "get",
            beforeSend: function () {
                $.msg.close();
                $.msg.loading();
            },
            error: function () {
                $.msg.close();
                $.msg.error('页面未找到！',1000, function () {
                    history.back();
                });
            },
            success: function(data){
                $.msg.close();
                $("section.content").html(data);
                if ($("#form").length > 0) {
                    //激活公共表单验证
                    require(['bootstrap-validator'],function () {
                        $('#form').validator();
                    });
                    //激活表单上传事件
                    $("#form").ajaxForm({
                        type: 'post',
                        error: function () {
                            var msg = $('<div class="alert alert-warning"><a href="#" class="close" data-dismiss="alert">&times;</a></div>')
                                .append('服务器错误！请稍后再试！');
                            $(".box-body").prepend(msg);
                        },
                        success: function(data) {
                            if (data.code == 1) {
                                $.msg.success(data.msg,1000, function () {
                                    window.onhashchange();
                                });
                            }else {
                                $.msg.error(data.msg,1000);
                            }
                        }
                    });
                }
                layout_fix();
            },
        });
    }

    /**
     * 定义消息处理构造方法
     */
    function msg() {
        this.version = '2.0';
        this.shade = [0.02, '#000'];
        this.closeIndexs = {};
    }

    /**
     * 关闭消息框
     */
    msg.prototype.close = function () {
        return typeof this.index !== 'undefined' && this.index.modal('hide');
    };

    /**
     * 弹出警告消息框
     * @param msg 消息内容
     * @param callback 回调函数
     * @return {*|undefined}
     */
    msg.prototype.alert = function (msg, callback) {
        // this.close();
        return this.index;
    };

    /**
     * 确认对话框
     * @param msg 提示消息内容
     * @param srcdata 回调函数操作的源数据
     * @param ok 确认的回调函数
     * @param no 取消的回调函数
     * @return {undefined|*}
     */
    msg.prototype.confirm = function (msg, ok, no) {
        return this.index = bootbox.confirm({
            title: "消息",
            message: msg,
            size: "small",
            buttons: {
                cancel: {
                    label: '<i class="fa fa-times"></i> 取消'
                },
                confirm: {
                    label: '<i class="fa fa-check"></i> 确定'
                }
            },
            backdrop: true,
            callback: function (result) {
                if (result == true){
                    typeof ok === 'function' && ok();
                }else if(result == false){
                   typeof no === 'function' && no();
                }
            }
        });
    };

    /**
     * 显示成功类型的消息
     * @param msg 消息内容
     * @param time 延迟关闭时间
     * @param callback 回调函数
     * @return {common_L11._msg|*}
     */
    msg.prototype.success = function (msg, time, callback) {
        // this.close();
        var dialog = bootbox.dialog({
            message: '<h4><i class="icon fa fa-check"></i> '+msg+'</h4>',
            size: 'small',
            backdrop: true,
            onEscape: true,
            closeButton: false
        });
        setTimeout(function () {
            dialog.modal('hide');
            typeof callback === 'function' && callback();
        },time || 3000);
        return this.index = dialog;
    };

    /**
     * 显示失败类型的消息
     * @param msg 消息内容
     * @param time 延迟关闭时间
     * @param callback 回调函数
     * @return {common_L11._msg|*}
     */
    msg.prototype.error = function (msg, time, callback) {
        // this.close();
        var dialog = bootbox.dialog({
            message:  '<h4><i class="icon fa fa-warning"></i> '+msg+'</h4>',
            size: 'small',
            backdrop: true,
            onEscape: true,
            closeButton: false
        });
        setTimeout(function () {
            dialog.modal('hide');
            typeof callback === 'function' && callback();
        },time || 3000 );
        return this.index = dialog;
    };

    /**
     * 状态消息提示
     * @param msg 消息内容
     * @param time 显示时间s
     * @param callback 回调函数
     * @return {common_L11._msg|*}
     */
    msg.prototype.tips = function (msg, time, callback) {
        // this.close();
        var dialog = bootbox.dialog({
            message:  '<h4><i class="icon fa fa-info"></i> '+msg+'</h4>',
            size: 'small',
            backdrop: true,
            onEscape: true,
            closeButton: false
        });
        setTimeout(function () {
            dialog.modal('hide');
            typeof callback === 'function' && callback();
        },time || 3000 );
        return this.index = dialog;
    };

    /**
     * 显示正在加载中的提示
     * @param msg 提示内容
     * @param callback 回调方法
     * @return {common_L11._msg|*}
     */
    msg.prototype.loading = function (msg, callback) {
        // this.close();
        return this.index = bootbox.dialog({
            className: "loading",
            message: '<div class="text-center"><i class="fa fa-spinner fa-pulse"></i></div>' ,
            closeButton: false,
            animate: false
        });
       /* return this.index = msg
            ? layer.msg(msg, {icon: 16, scrollbar: false, shade: this.shade, time: 0, end: callback})
            : layer.load(2, {time: 0, scrollbar: false, shade: this.shade, end: callback});*/
    };


    /**
     * 自动处理显示Think返回的Json数据
     * @param data JSON数据对象
     * @param time 延迟关闭时间
     * @return {common_L11._msg|*}
     */
    msg.prototype.auto = function (data, time) {
        var self = this;
        if (parseInt(data.code) === 1) {
            return self.success(data.msg, time, function () {
                !!data.url ? (window.location.href = data.url) : $.form.reload();
                if (self.autoSuccessCloseIndexs && self.autoSuccessCloseIndexs.length > 0) {
                    for (var i in self.autoSuccessCloseIndexs) {
                        layer.close(self.autoSuccessCloseIndexs[i]);
                    }
                    self.autoSuccessCloseIndexs = [];
                }
            });
        }
        self.error(data.msg, 3, function () {
            !!data.url && (window.location.href = data.url);
        });
    };

    /**
     * auto处理成功的自动关闭
     * @param index
     */
    msg.prototype.addAutoSuccessCloseIndex = function (index) {
        this.autoSuccessCloseIndexs = this.autoSuccessCloseIndexs || [];
        this.autoSuccessCloseIndexs.push(index);
    };

    /**
     * 将消息对象挂载到Jq
     */
    $.msg = new msg();

})(jQuery);