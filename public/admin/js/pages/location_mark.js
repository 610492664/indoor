/**
 * Created by Administrator on 2017/6/8.
 */

function location_mark() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
            "dataSrc": "data",
        },
        "order": [[3, 'asc'],[2, 'asc']],
        "columns": [
            { "data": "lmar_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name","title":"名称"},
            { "data": "type","title":"类型" },
            { "data": "mac","title":"mac地址" },
            { "data": "status" ,"title":"状态"},
            { "data": "lmar_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                "targets": 5,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display'&& php_url.set!=="false") {
                        var str = '<select name="status" data-id="'+full.lmar_id+'" data-action-set="'+php_url.set+'">',
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
    //添加索引列
    $.table_index($.table);
}
