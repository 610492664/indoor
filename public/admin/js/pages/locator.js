/**
 * Created by Administrator on 2017/6/8.
 */

function locator() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "columns": [
            { "data": "loc_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": "number","title":"编号"},
            { "data": "mac","title":"物理标识码"},
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
                            '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>'+
                            '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>'+
                            '</div>';
                    }
                    return data;
                }
            }
        ]
    });

    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        $("[data-mask]").inputmask();
    });
}
