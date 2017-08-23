/**
 * Created by Administrator on 2017/6/8.
 */

function floor() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "order": [[2, 'asc']],
        "columns": [
            { "data": "flo_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "number","title":"楼层号"},
            { "data": "height","title":"层高" },
            { "data": "layout","title":"三维模型" },
            { "data": "comment" ,"title":"备注"},
            { "data": "flo_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                "targets": 6,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        return '<div class="btn-group">'+
                            '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>'+
                            '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>'+
                            '</div>';
                    }
                    return data;
                }
            }
        ]
    });
    //添加索引列
    $.table_index($.table);
    require(['select2'],function () {
        // $.fn.select2.defaults.set('amdBase', STATIC_PATH +'/');
        // $.fn.select2.defaults.set('amdLanguageBase',);
        require(['static/plugin/select2/js/i18n/zh-CN'], function () {
            var $select = $("#build").select2({
                placeholder: "选择建筑",
                // language: "zh-CN",
                // allowClear: true
            });
            $("#build").on("change", function (e) {
                var bui_id = $(this).val()
                $.table.settings()[0].ajax.data = {"bui_id" :bui_id};
                $.table.ajax.reload();
            });
            $select.trigger("change");
        });
    });
    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        $('input[name="bui_id"]').val($("#build").val());
    });
}
