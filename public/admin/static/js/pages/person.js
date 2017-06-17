/**
 * Created by Administrator on 2017/6/8.
 */
function person() {
    var table = $('#table').DataTable({
        "language":  {"url": "http://cdn.datatables.net/plug-ins/e9421181788/i18n/Chinese.json"},
        "lengthMenu": [[10, 25, 50, 100, -1], ["10", "25", "50", "100", "全部"]],
        "autoWidth": false,
        "ajax": {
            "url": MODULE+"/person/getList",
            "type":'get',
            "data": {
                "org_id": "123"
            },
            "dataSrc": ""
        },
        "columns": [
            { "data": "per_id", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "searchable": false,"orderable": false, "width": "3px"},
            { "data": "name" },
            { "data": "pid" },
            { "data": "birthday" },
            { "data": "position" },
            { "data": "loc_id" },
            { "data": "rank" },
            { "data": "per_id", "width": "25%"}
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
                            '<button class="btn btn-default " data-toggle="modal" data-target="#myModal" diy-action="person/detail" diy-id="'+data+'" ><i class="fa fa-search"></i></button>'+
                            '<button class="btn btn-default" data-toggle="modal" data-target="#myModal" diy-action="person/mod" diy-id="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>'+
                            '<button class="btn btn-default" diy-id="'+data+'" ><i class="fa fa-trash-o"></i></button>'+
                            '</div>';
                    }
                    return data;
                }
            }
        ]
    });
    //添加索引列
    table.on('order.dt search.dt',
        function () {
            table.column(1, {
                search: 'applied',
                order: 'applied'
            }).nodes().each(function (cell, i) {
                cell.innerHTML = i + 1;
            });
        }).draw();
    //checkbox全选
    $("#checkAll").on("click", function () {
        if ($(this).prop("checked") === true) {
            $("input[name='checkList']").prop("checked", $(this).prop("checked"));
        } else {
            $("input[name='checkList']").prop("checked", false);
        }
    });

    $('section.content').off('click','[diy-action]').on('click','[diy-action]', function () {
        var action = $(this).attr('diy-action'), data = {};
        data.id = $(this).attr('diy-id');
        $.ajax({
            url: MODULE+'/'+action,
            type: "get",
            data: data,
            success: function(data){
                $('#myModal div.modal-content').html(data);
                form_init();
            }
        });
    } );
    function form_init() {
        $("[data-mask]").inputmask();
        $("#pidtypename a").on('click',function (e) {
            $("#pidtypename").prev().text($(this).text());
            $("input[name='pidtype']").val($(this).attr('data-value'));
            e.preventDefault();
        });
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
        });
        //表单上传
        $("#form").ajaxForm({
            url: MODULE+'/person/insert',
            type: 'post',
            success: function(data) {
                alert(data.msg);
                if (data.code = 1) {

                }
            }
        });
    }
}
