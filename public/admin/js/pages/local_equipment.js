/**
 * Created by Administrator on 2017/6/8.
 */

function local_equipment() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
            "dataSrc": 'data'
        },
        "order": [[3, 'asc'],[2, 'asc']],
        "columns": [
            { "data": "lequ_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"名称"},
            { "data": "buy_time","title":"购入时间" },
            { "data": "status" ,"title":"状态"},
            { "data": "lequ_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                "targets": 4,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        var str = '<select name="status" data-id="'+full.lequ_id+'" data-action-set="'+php_url.set+'">',
                            selected = '',
                            status = meta.settings.json.dataMap.status;
                        for(var i = 0; i< status.length; i++){
                            selected = status[i] === data ? ' selected="selected"' : '';
                            str += '<option value="'+i+'"'+selected+'>'+status[i]+'</option>';
                        }
                        str += '</select>';
                        return str;
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
    //添加索引列
    $.table_index($.table);
    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        $("[data-mask]").inputmask();
    });

}
