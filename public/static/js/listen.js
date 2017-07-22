define(['jquery','common'],function ($) {
    var $body = $('body');

    $body.on('draw.dt', '#table', function () {
        var $switch = $('input.switch')
        $switch.bootstrapSwitch();
        $switch.on('switchChange.bootstrapSwitch',function (event,state) {
            return false;
            var id = $(this).attr('e-data'), url = $(this).attr('e-action-mod');
            var ret =  $.form.load(url, {id: id, name: this.name, value: state ? 1 : 0}, 'POST', false, function (res) {
                if (res.code === 0) {
                    return false;
                }
            });
            return ret;
        });
    })

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
            $("input[name='"+targetname+"']:checked").each(function () {
                id.push(this.value);
                row.push($(this).parents('tr'));
            })
        }
        if(id.length < 1) {
            $.msg.error('请选择需要操作的数据！',2000 );
            return false;
        }
        $.msg.confirm("确认删除？",function () {
            var url = $this.attr('e-action-del');
            $.ajax({
                url: url,
                type: "get",
                data: {"id": id},
                success: function(data){
                    if (data.code == 1) {
                        $.msg.success(data.msg,1000, function () {
                            $.table.rows(row).remove().draw( false );
                        });
                    }else{
                        $.msg.error(data.msg,1000);
                    }
                }
            });
        });
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
            beforeSend:  function () {
               $.msg.loading();
            },
            success: function(data){
                $.msg.close();
                $('#myModal div.modal-content').html(data);
            },
            complete: function () {
                $modal.modal('show');
                if ($("#form").length > 0) {
                    $modal.on('hide.bs.modal',function (e) {
                        $.msg.confirm('确定取消？',function () {
                            $modal.off('hide.bs.modal');
                            $modal.modal('hide');
                        })
                        e.preventDefault();
                    });
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
                            if (data.code == 1) {
                                $.msg.success(data.msg,1000, function () {
                                    $modal.off('hide.bs.modal');
                                    $modal.modal('hide');
                                    $.table.ajax.reload(null, false);
                                });
                            }else {
                                $.msg.error(data.msg,1000);
                            }
                        }
                    });
                }
            }
        });
    });


    //监听url hash处理
    window.onhashchange = function () {
        var hash = (window.location.hash).substring(1)||'/admin/index/dashboard.html';
        hash = APP + hash;
        $.content_load(hash, $.AdminLTE.layout.fix);
    }
});