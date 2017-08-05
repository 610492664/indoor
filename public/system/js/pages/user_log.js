/**
 * Created by Administrator on 2017/6/8.
 */

function user_log() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.getList,
        },
        "columns": [
            { "data": "ulog_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "module","title":"类别"},
            { "data": "controller","title":"对象" },
            { "data": "action" ,"title":"行为"},
            { "data": "result" ,"title":"结果"},
            { "data": "username" ,"title":"用户"},
            { "data": "create_time" ,"title":"访问时间"},
            { "data": "ip" ,"title":"访问ip"},
            { "data": "ulog_id","title":"操作", "width": "25%"}
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
                        return '<div class="btn-group">'+
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
