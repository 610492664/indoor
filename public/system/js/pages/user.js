/**
 * Created by Administrator on 2017/6/8.
 */

function user() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
            "dataSrc": "data",
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
            { "data": "status" ,"title":"状态" ,"width": "120px"},
            { "data": "use_id","title":"操作", "searchable": false,"orderable": false, "width": "100px"}
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
                    if (full.rol_id === meta.settings.json.super_rol_id) {
                        return '';
                    }
                    if (type === 'display') {
                        if(php_url.forbid === "false") return data === 1 ? '已禁用' : '正常';
                        var checked = (data === 1) ? 'checked' : '';
                        return '<input class="switch" type="checkbox" '+checked+ ' name="status" data-size="small" data-on-text="启用" data-off-text="禁用" e-action-mod="'+php_url.forbid+'" e-data="'+full.use_id+'"/>'
                    }
                    return data;
                }
            },
            {
                "targets": 10,
                "render": function ( data, type, full, meta ) {
                    if (full.rol_id === meta.settings.json.super_rol_id) {
                        return '';
                    }
                    if (type === 'display') {
                        var mod = php_url.mod === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>';
                        var del = php_url.del === 'false' ? "" : '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>';
                        var resetpass = php_url.resetpass === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.resetpass+'" e-data="'+data+'"  title="重置密码"><i class="fa fa-key"></i></button>';
                        return '<div class="btn-group">' + resetpass + mod+ del+ '</div>';
                    }
                    return data;
                }
            }
        ],
        "preDrawCallback": function( settings ) {
            if(php_url.mod === 'false'&&php_url.del === 'false'&&php_url.resetpass === 'false'){
                this.api().columns([10]).visible(false);
            }
            php_url.del === 'false'&& this.api().columns([0]).visible(false);
        }
    });
    //添加索引列
    $.table_index($.table);
}
