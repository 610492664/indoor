/**
 * Created by Administrator on 2017/6/8.
 */

function organization() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "order": [[7, 'asc'],[1, 'asc']],
        "columns": [
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "5em", "defaultContent": ""},
            { "data": "name","title":"单位名"},
            { "data": "abbr","title":"单位简称" },
            { "data": "address","title":"单位地址" },
            { "data": "username","title":"管理员" },
            { "data": "phone","title":"手机号" },
            { "data": "email","title":"E-mail" },
            { "data": "status" ,"title":"状态"},
            { "data": "org_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
        ],
        "columnDefs": [
            {
                "targets": 8,
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
    $.table_index($.table, 0);

    //add、mod模态框初始化，添加页面个性化表单事件
    $('#myModal').on('show.bs.modal', function () {

    });
}
