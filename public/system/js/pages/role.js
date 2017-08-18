/**
 * Created by Administrator on 2017/6/8.
 */

function role() {
    $.table = $('#table').DataTable({
        "lengthMenu": [[10, 25, 50, 100, -1], ["10", "25", "50", "100", "全部"]],
        "ajax": {
            "url": php_url.getList,
        },
        "order": [[2, 'asc']],
        "columns": [
            { "data": "rol_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"角色名"},
            { "data": "desc","title":"描述" },
            { "data": "status" ,"title":"修改状态"},
            { "data": "rol_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                "targets": 4,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        var checked = (data === 1) ? 'checked' : '';
                        return '<input class="switch" type="checkbox" '+checked+ ' name="status" data-size="small" data-on-text="启用" data-off-text="禁用" e-action-mod="'+php_url.forbid+'" e-data="'+full.rol_id+'"/>'
                    }
                    return data;
                }
            },
            {
                "targets": 5,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        return '<div class="btn-group">'+
                            '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>'+
                            '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>'+
                            '<a class="btn btn-link" href="'+php_url.authShow.replace('__ID__', data)+'" ><i class="fa fa-cog"></i></a>'+
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
