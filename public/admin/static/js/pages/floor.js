/**
 * Created by Administrator on 2017/6/8.
 */

function floor() {
    $.table = $('#table').DataTable({
        "language":  {"url": PLUGIN_PATH+"/datatables/Chinese.json"},
        "lengthMenu": [[10, 25, 50, 100, -1], ["10", "25", "50", "100", "全部"]],
        "autoWidth": false,
        "processing": true,
        "ajax": {
            "url": php_url.getList,
            "type":'get',
            "data": {
                "bui_id": "123"
            },
            "dataSrc": "",
        },
        "columns": [
            { "data": "flo_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "number","title":"楼层号"},
            { "data": "height","title":"层高" },
            { "data": "layout","title":"三维模型" },
            { "data": "comment" ,"title":"备注"},
            { "data": "flo_id","title":"操作", "width": "25%"}
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
        require(['plugin/select2/js/i18n/zh-CN'], function () {
            var $select = $("#build").select2({
                placeholder: "选择建筑",
                // language: "zh-CN",
                allowClear: true
            });
            $("#build").on("change", function (e) {
                var bui_id = $(this).val()
                $('span[bui_id]').attr('bui_id',bui_id);
                $('span[bui_id]').text($(this).find("option:selected").text());
                $.table.settings()[0].ajax.data = {"bui_id" :bui_id};
                $.table.ajax.reload();
            });
            if (typeof ($('span[bui_id]').attr('bui_id')) != 'undefind'){
                $select.val($('span[bui_id]').attr('bui_id')).trigger("change");
            }
        });
    });
    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        $('input[name="bui_id"]').val($('span[bui_id]').attr('bui_id'));
    });
}
