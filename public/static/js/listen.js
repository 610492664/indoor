define(['jquery','common'],function ($) {
    var $body = $('body');

    $body.on( 'draw.dt', "#table", function () {
        var $table = $(this);
        var $checked = $table.find('th input[type="checkbox"]');
        var $tbody_checked = $table.find('tbody input[type="checkbox"]');
        if( $tbody_checked.length === 0 || $tbody_checked.not(':checked').length > 0){
            $checked.prop("checked",false);
        }else {
            $checked.prop("checked",true);
        }
    } );

    $body.on('draw.dt', '#table', function () {
        var $switch = $(this).find('input.switch');
        $switch.bootstrapSwitch({
            onSwitchChange: function (event, state) {
                var id = $(this).attr('e-data'), url = $(this).attr('e-action-mod'), ret = false;
                $.form.load(url, {id: id, name: this.name, value: state ? 1 : 0}, 'POST', false, function (res) {
                    if(res.code === 1) {
                        ret = true;
                    }
                    return false;
                },false,false);
                return ret;
            }
        });
    });

    $body.on('change', '[data-action-set]', function () {
        var $this = $(this);
        var url = $this.attr('data-action-set'),
            id = $this.data('id'),
            name = this.name,
            value = $this.val(),
            text = $this.find('option:selected').text();
        $.form.load(url, {id: id, name: name, value: value}, 'POST', false, function (res) {
            if(res.code === 1) {
                $.table.cell( $this.parent()).data(text);//更新datatable存储的值
            }else{
                $.table.cell( $this.parent()).invalidate().draw();//还原原来的值
                return true;
            }
            return false;
        }, false, false);
    });

    //监听全选事件（自定义属性 e-check-name)
    $body.on('click', '[e-check-name]', function () {
        var checked = !!this.checked;
        var targetname = $(this).attr('e-check-name');
        $("input[name='"+targetname+"']").map(function () {
            this.checked = checked;
        });
    });


    $body.on('click', '[e-action-set]', function () {
        $this =$(this);
        var url = $(this).attr('e-action-set'), type = $(this).attr('e-type'), value = $(this).attr('e-value');
        type = (typeof(type) === 'undefined') ? "" : type;
        value = (typeof(type) === 'undefined') ? "" : value;
        var id = [], row = [];
        var targetname = $("[e-check-name]").attr('e-check-name');
        $("input[name='"+targetname+"']:checked").each(function () {
            id.push(this.value);
            row.push($(this).parents('tr'));
        });
        if(id.length < 1) {
            $.msg.error('请选择需要操作的数据！',2000 );
            return false;
        }
        if(id.length > 1) {
            $.msg.error('本操作只能选择一行数据！',2000 );
            return false;
        }
        $.form.load(url, {id: id, type: type, value: value}, 'POST', true, function (res) {});
    });

    //监听删除事件（定义属性e-atcion-del、单删e-data)
    $body.on('click', '[e-action-del]', function () {
        $this =$(this);
        var id = [], row = [];
        var url = $this.attr('e-action-del');
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
            $.form.load(url, {id: id}, 'get', true, function () {
                $.table.rows(row).remove().draw( false );
            },false);
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
            statusCode: {
                404: function () {
                    $.msg.tips( 'E404 该访问地址不存在！ ');
                },
                500: function () {
                    $.msg.tips('E500 服务器错误');
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $.msg.tips('请求出错！');
            },
            success: function(data){
                $.msg.close();
                $('#myModal div.modal-content').html(data);
                $modal.modal('show');
                var $form = $("#form");
                if ($form.length > 0) {
                    $modal.on('hide.bs.modal',function (e) {
                        $.msg.confirm('确定取消？',function () {
                            $modal.off('hide.bs.modal');
                            $modal.modal('hide');
                        });
                        e.preventDefault();
                    });
                    //激活公共表单验证
                    require(['bootstrap-validator'],function () {
                        $form.validator().on('submit', function (e) {
                            if (e.isDefaultPrevented()) {
                                // handle the invalid form...
                            } else {
                                var $that = $(this);
                                $that.validator('destroy');
                                $that.ajaxSubmit({
                                    type: 'post',
                                    error: function () {
                                        var msg = $('<div class="alert alert-warning"><a href="#" class="close" data-dismiss="alert">&times;</a></div>')
                                            .append('服务器错误！请稍后再试！');
                                        $(".modal-body").prepend(msg);
                                    },
                                    success: function(data) {
                                        $.msg.auto(data, 1000, true, function () {
                                                $modal.off('hide.bs.modal');
                                                $modal.modal('hide');
                                                // $.table.ajax.reload(null, false);
                                            },
                                            function () {
                                                $that.validator();
                                            });
                                    }
                                });
                            }
                            return false;
                        });
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