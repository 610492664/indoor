/**
 *
 * 公共函数文件
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

    var $body = $('body');

    //监听全选事件（自定义属性 e-check-name)
    $body.on('click', '[e-check-name]', function () {
        var checked = !!this.checked;
        var targetname = $(this).attr('e-check-name');
        $("input[name='"+targetname+"']").map(function () {
            this.checked = checked;
        });
    });

    //监听删除事件（定义属性e-atcion-del、单删e-data)
    $body.on('click', '[e-action-del]', function () {
        $this =$(this);
        var id = [], row = [];
        if(typeof ($this.attr('e-data')) !== 'undefined'){
            id.push($this.attr('e-data'));
            row.push($this.parents('tr'));
        } else {
            var targetname = $("[e-check-name]").attr('e-check-name');
            $("input[name='"+targetname+"']:checked").map(function () {
                id.push(this.value);
                row.push($(this).parents('tr'));
            })
        }
        if(id.length < 1) {
            var warn = bootbox.alert({
                size: "small",
                title: "提示：",
                message: '请选择需要操作的数据！'
            });
            setTimeout(function(){warn.modal("hide")},1000);
            return false;

        }
        var flag = bootbox.confirm({
            size: "small",
            title: "提示：",
            message: "确认删除？",
            callback: function (result) {
                if (result){
                    var url = $this.attr('e-action-del');
                    $.ajax({
                        url: url,
                        type: "get",
                        data: {"id": id},
                        success: function(data){
                            if (data.code == 1) {
                                bootbox.alert({
                                    size: "small",
                                    title: "提示：",
                                    message: data.msg,
                                    callback: function(){
                                        $.table.rows(row).remove().draw( false );
                                    }
                                });
                            }else{
                                bootbox.alert({
                                    size: "small",
                                    title: "提示：",
                                    message: data.msg
                                });
                            }
                        }
                    });
                }
            }
        } );
    });

    //监听模态框add,mod,detail事件
    $body.on('click','[e-action-modal]', function () {
        var url = $(this).attr('e-action-modal'), data = {},callback;
        data.id = $(this).attr('e-data');
        callback = $(this).attr('e-callback');
        var $modal =  $('#myModal');
        $.ajax({
            url: url,
            type: "get",
            data: data,
            success: function(data){
                $('#myModal div.modal-content').html(data);
            },
            complete: function () {
                $modal.modal({"backdrop":"static"});
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
                            $(".modal-body").prepend(msg);
                        },
                        success: function(data) {
                            if (data.code = 1) {
                                $modal.modal('hide');
                                $.table.ajax.reload();
                                bootbox.alert(data.msg);
                            }
                        }
                    });
                }
            }
        });
    });
})(jQuery);