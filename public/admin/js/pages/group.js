/**
 * Created by Administrator on 2017/6/8.
 */

function group() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "columns": [
            { "data": "gro_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"组名"},
            { "data": "per_name","title":"组长" },
            { "data": "status" ,"title":"状态"},
            { "data": "gro_id","title":"操作", "width": "25%"}
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
                "targets": 5,
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
    $.table.buttons().container()
        .appendTo( $('.col-sm-6:eq(0)', $.table.table().container() ) );
    //添加索引列
    $.table_index($.table);

    //add、mod模态框初始化，添加页面个性化表单事件
    $('#myModal').on('show.bs.modal', function () {

    });
}
