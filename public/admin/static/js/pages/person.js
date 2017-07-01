/**
 * Created by Administrator on 2017/6/8.
 */
function person() {
    $.table = $('#table').DataTable({
        "language":  {"url": PLUGIN_PATH+"/datatables/Chinese.json"},
        "lengthMenu": [[10, 25, 50, 100, -1], ["10", "25", "50", "100", "全部"]],
        "autoWidth": false,
        "processing": true,
        "ajax": {
            "url": php_url.getList,
            "type":'get',
            "data": {
                "org_id": "123"
            },
            "dataSrc": ""
        },
        "columns": [
            { "data": "per_id", "title": '<input type="checkbox" e-check-name="checkList">',"searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title": "姓名", "searchable": false,"orderable": false, "width": "3px"},
            { "data": "name" , "title": "姓名"},
            { "data": "pid" , "title": "证件"},
            { "data": "birthday" , "title": "出生日期"},
            { "data": "position" , "title": "职务"},
            { "data": "loc_id" , "title": "定位模块"},
            { "data": "rank" , "title": "是否在岗"},
            { "data": "per_id", "title": "操作", "width": "25%"}
        ],
        "columnDefs": [ {
            "targets": 0,
            "render": function ( data, type, full, meta ) {
                if (type === 'display') {
                    return '<input type="checkbox" name="checkList" value="' + data + '">';
                }
                return data;
            }
        },
            {
                "targets": 8,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        return '<div class="btn-group">'+
                            '<button class="btn btn-default " e-action-modal="'+php_url.detail+'" e-data="'+data+'" ><i class="fa fa-search"></i></button>'+
                            '<button class="btn btn-default" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>'+
                            '<button class="btn btn-default" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>'+
                            '</div>';
                    }
                    return data;
                }
            }
        ]
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

}
