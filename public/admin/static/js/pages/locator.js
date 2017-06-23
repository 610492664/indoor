/**
 * Created by Administrator on 2017/6/8.
 */

function locator() {
    $.table = $('#table').DataTable({
        "language":  {"url": "http://cdn.datatables.net/plug-ins/e9421181788/i18n/Chinese.json"},
        "lengthMenu": [[1, 25, 50, 100, -1], ["10", "25", "50", "100", "全部"]],
        "autoWidth": false,
        "ajax": {
            "url": MODULE+"/locator/getList",
            "type":'get',
            "data": {
                "org_id": "123"
            },
            "dataSrc": ""
        },
        "columns": [
            { "data": "loc_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"名称"},
            { "data": "buy_time","title":"购入日期" },
            { "data": "status" ,"title":"状态"},
            { "data": "per_name","title":"当前使用人" },
            { "data": "loc_id","title":"操作", "width": "25%"}
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
                            '<button class="btn btn-default" data-toggle="modal" data-target="#myModal" e-action-modal="'+php_url.locator_mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>'+
                            '<button class="btn btn-default" e-action-del="'+php_url.locator_del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>'+
                            '</div>';
                    }
                    return data;
                }
            }
        ]
    });
    //添加索引列
    $.table_index($.table);
}
