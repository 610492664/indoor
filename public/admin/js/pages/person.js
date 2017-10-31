/**
 * Created by Administrator on 2017/6/8.
 */
function person() {
    var target = 'self';
    $.table = $('#table').DataTable({
        "lengthMenu": [[10, 25, 50, 100, -1], ["10", "25", "50", "100", "全部"]],
        "ajax": {
            "url": php_url.index,
        },
        "order": [[5, 'desc'],[2, 'asc']],
        "columns": [
            { "data": "per_id", "title": '<input type="checkbox" e-check-name="checkList">',"searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title": "序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name" , "title": "姓名"},
            { "data": "pidtype" , "title": "证件类型"},
            { "data": "pid" , "title": "证件号"},
            { "data": "birthday" , "title": "出生日期"},
            { "data": "orgname" , "title": "单位", "visible": false},
            { "data": "position" , "title": "职务"},
            { "data": "rank" , "title": "警衔"},
            { "data": "loc_id" , "title": "定位模块"},
            { "data": "per_id", "title": "操作", "searchable": false,"orderable": false, "width": "150px"}
        ],
        "columnDefs": [
            {
                "targets": 0,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        return '<input type="checkbox" name="checkList" value="' + data + '">';
                    }
                    return data;
                }
            },
            {
                "targets": 9,
                "render": function ( data, type, full, meta ) {
                    return (data != '') ? full.loc_number :'无';
                }
            },
            {
                "targets": 10,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        var detail =  php_url.detail === 'false' ? "" : '<button class="btn btn-link " e-action-modal="'+php_url.detail+'" e-data="'+data+'" ><i class="fa fa-search"></i></button>';
                        var mod = php_url.mod === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>';
                        var del =   php_url.del === 'false' ? "" : '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>';
                        var str = '<div class="btn-group">';
                        str += detail;
                        if(target !== 'all'){
                            str += mod + del;
                        }
                        return str +  '</div>'
                    }
                    return data;
                }
            }
        ],
        "preDrawCallback": function( settings ) {
            if (php_url.detail === 'false' && ((php_url.del === 'false' && php_url.mod === 'false')|| target === 'all')) {
                this.api().columns([10]).visible(false);
            }else{
                this.api().columns([10]).visible(true);
            }
            php_url.del === 'false'&& this.api().columns([0]).visible(false);
        }
    });
    //添加索引列
    $.table_index($.table);

    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        if ($("#form").length > 0) {
            require(['bootstrap-validator'],function () {
                $("[data-mask]").inputmask();
                $('#pic').change(function () {
                    var file = this;
                    $('.alert').alert('close');
                    var ireg = /image\/.*/i;
                    var hmsg = '<div class="alert alert-warning"><a href="#" class="close" data-dismiss="alert">&times;</a>'
                        ,msg;
                    if (file.files && file.files[0]) {
                        var f = file.files[0];
                        if (!f.type.match(ireg)) {
                            //设置错误信息
                            msg = hmsg+'<strong>警告！</strong>' + f.name + '图片类型不对。</div>';
                            $(".modal-body").prepend(msg);
                            return false;
                        } else if (f.size >= 512000) {
                            msg = hmsg+'<strong>警告！</strong>' + f.name + '图片大小过大，应小于500k。</div>';
                            $(".modal-body").prepend(msg);
                            return false;
                        } else if (!(window.File && window.FileList && window.FileReader && window.Blob)) {
                            msg = hmsg+'<strong>警告！</strong>' + f.name + '您的浏览器不支持图片预览。</div>';
                            $(".modal-body").prepend(msg);
                            $('#thumb').attr('alt', file.name);
                            return true;
                        }
                        var reader = new FileReader();
                        reader.onload = (function (file) {
                            return function (e) {
                                $('#thumb').attr('src', this.result);
                                $('#thumb').attr('alt', file.name);
                            };
                        })(f);
                        reader.readAsDataURL(f);
                    }
                });
                //表单头像
                $("button[type=reset]").click(function () {
                    var pic_url = $("#pic").prop("defaultValue")||IMG_PATH+"/headpic.png";
                    $("#thumb").attr('src',pic_url);
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
                });
            });
        }
    });

    //tab切换
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var $this = $(this);
        target = $this.data('id');
        var $buttons = $('#buttons');
        if (target === 'self'){
            $buttons .show();
            $.table.columns([0]).visible(true);
            $.table.columns([6]).visible(false);

        }else if(target === 'all'){
            $buttons .hide();
            $.table.columns([0]).visible(false);
            $.table.columns([6]).visible(true);
        }
        $.table.settings()[0].ajax.data = {
            "target" :target
        };
        $.table.ajax.reload();
    })
}
