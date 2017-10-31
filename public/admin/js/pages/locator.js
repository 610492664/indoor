/**
 * Created by Administrator on 2017/6/8.
 */

function locator() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
            "dataSrc": 'data'
        },
        "order": [[4, 'asc'],[1, 'asc']],
        "columns": [
            { "data": "loc_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": "number","title":"编号"},
            { "data": "mac","title":"物理标识码"},
            { "data": "buy_time","title":"购入日期" },
            { "data": "status" ,"title":"状态"},
            { "data": "per_name","title":"当前使用人" },
            { "data": "loc_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                    if (type === 'display'&& php_url.set!=="false") {
                        var str = '<select name="status" data-id="'+full.loc_id+'" data-action-set="'+php_url.set+'">',
                            selected = '',
                            status = meta.settings.json.dataMap.status;
                        if(data === status[1])return data;
                        for(var i = 0; i< status.length; i++){
                            if(i === 1) continue;
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
                "targets": 6,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        var mod = php_url.mod === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>';
                        var del =   php_url.del === 'false' ? "" : '<button class="btn btn-link" e-action-del="'+php_url.del+'" e-data="'+data+'" ><i class="fa fa-trash-o"></i></button>';
                        return '<div class="btn-group">'+ mod+ del+ '</div>';
                    }
                    return data;
                }
            }
        ],
        "preDrawCallback": function( settings ) {
            if(php_url.mod === 'false'&&php_url.del === 'false'){
                this.api().columns([6]).visible(false);
            }
            php_url.del === 'false'&& this.api().columns([0]).visible(false);
        }
    });

    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        $("[data-mask]").inputmask();
    });
}
