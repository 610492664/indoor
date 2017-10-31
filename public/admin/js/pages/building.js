/**
 * Created by Administrator on 2017/6/8.
 */

function building() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "order": [[2, 'asc']],
        "columns": [
            { "data": "bui_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"名称"},
            { "data": "height","title":"高度(米)" },
            { "data": "totalfloor","title":"层数" },
            { "data": "address","title":"地址" },
            { "data": "comment" ,"title":"备注"},
            { "data": "bui_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                "targets": 7,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        var mod = php_url.mod === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>';
                        var del =   php_url.del === 'false' ? "" : '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>';
                        var floor =  php_url.floor === 'false' ? "" : '<a class="btn btn-link" href="'+php_url.floor.replace('__ID__', data)+'" title="楼层管理" ><i class="fa fa-fw fa-navicon"></i></a>';
                        return '<div class="btn-group">' + mod + del +floor +  '</div>';
                    }
                    return data;
                }
            }
        ],
        "preDrawCallback": function( settings ) {
            if(php_url.mod === 'false'&&php_url.del === 'false'&&php_url.floor === 'false'){
                this.api().columns([7]).visible(false);
            }
            php_url.del === 'false'&& this.api().columns([0]).visible(false);
        }
    });
    //添加索引列
    $.table_index($.table);
}
