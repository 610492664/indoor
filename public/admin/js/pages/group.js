/**
 * Created by Administrator on 2017/6/8.
 */

function group() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "order": [[5, 'asc'],[2, 'asc']],
        "columns": [
            { "data": "gro_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"组名"},
            { "data": "per_name","title":"组长" },
            { "data": "count","title":"成员总数" },
            { "data": "status" ,"title":"状态"},
            { "data": "gro_id","title":"操作","searchable": false,"orderable": false, "width": "25%"}
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
                        var mod = php_url.mod === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>';
                        var del =   php_url.del === 'false' ? "" : '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>';
                        var groupperson =   php_url.groupperson === 'false' ? "" :  '<a class="btn btn-link" href="'+php_url.groupperson.replace('__ID__', data)+'" title="组成员管理" ><i class="fa fa-fw fa-navicon"></i></a>'
                        return '<div class="btn-group">' + mod + del + groupperson+ '</div>';
                    }
                    return data;
                }
            }
        ],
        "preDrawCallback": function( settings ) {
            if(php_url.mod === 'false'&&php_url.del === 'false'&&php_url.groupperson==='false'){
                this.api().columns([6]).visible(false);
            }
            php_url.del === 'false'&& this.api().columns([0]).visible(false);
        }
    });
    $.table.buttons().container()
        .appendTo( $('.col-sm-6:eq(0)', $.table.table().container() ) );
    //添加索引列
    $.table_index($.table);

    //add、mod模态框初始化，添加页面个性化表单事件
    $('#myModal').on('show.bs.modal', function () {
        //todo 显示回调
    });
}
