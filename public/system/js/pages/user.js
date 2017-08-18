/**
 * Created by Administrator on 2017/6/8.
 */

function user() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "order": [[7, 'asc'],[2, 'asc']],
        "columns": [
            { "data": "use_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"用户账号"},
            { "data": function (row, type, set, meta) {
                if (row.role !== null) {
                    return row.role.name;
                } else {
                    return '';
                }
            },"title":"角色"},
            { "data": "phone","title":"手机号" },
            { "data": "email","title":"email" },
            { "data": "login_num","title":"登录次数" },
            { "data": "login_time","title":"最后登录日期" },
            { "data": "login_ip","title":"最后登录ip" },
            { "data": "status" ,"title":"状态"},
            { "data": "use_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                    if (type === 'display') {
                        var checked = (data === 1) ? 'checked' : '';
                        return '<input class="switch" type="checkbox" '+checked+ ' name="status" data-size="small" data-on-text="启用" data-off-text="禁用" e-action-mod="'+php_url.forbid+'" e-data="'+full.use_id+'"/>'
                    }
                    return data;
                }
            },
            {
                "targets": 10,
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
}
