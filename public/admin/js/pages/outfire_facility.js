/**
 * Created by Administrator on 2017/6/8.
 */

function outfire_facility() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
            "dataSrc" : 'data'
        },
        "order": [[4, 'asc'],[2, 'asc']],
        "columns": [
            { "data": "ofac_id","title":"<input type='checkbox' e-check-name = 'checkList'>", "searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "number","title":"编码" },
            { "data": "name","title":"名称" },
            { "data": "type","title":"类型" },
            { "data": "bui_name","title":"所属建筑"},
            { "data": "flo_number","title":"所在楼层"},
            { "data": "coordinate","title":"坐标" },
            { "data": "place_time","title":"安装日期" },
            { "data": "status" ,"title":"状态"},
            { "data": "ofac_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
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
                "targets": 6,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        return '第' + data + '层';
                    }
                    return data;
                }
            },
            {
                "targets": 9,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display'&& php_url.set!=="false") {
                        var str = '<select name="status" data-id="'+full.ofac_id+'" data-action-set="'+php_url.set+'">',
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
                "targets": 10,
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
                this.api().columns([10]).visible(false);
            }
            php_url.del === 'false'&& this.api().columns([0]).visible(false);
        }
    });
    //添加索引列
    $.table_index($.table);

    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        if ($("#form").length > 0) {
            $("[data-mask]").inputmask();
            require(['select2'],function () {
                require(['static/plugin/select2/js/i18n/zh-CN'], function () {
                    var $building = $("select[name='bui_id']");
                    $building.select2({
                       /* placeholder: {
                            id: '-1',
                            text: "选择建筑"
                        },*/
                        language: "zh-CN"
                    });
                    $building.on("change", function (e) {
                        var bui_id = $(this).val();
                        var $floor = $("select[name='flo_id']");
                        if($floor.attr("disabled") == "disabled"){
                            $floor.attr("disabled", false);
                        }
                        $floor.empty();
                        if(bui_id !== ''){
                            $.ajax({
                                url: "/indoor/public/floorlist/"+bui_id,
                                // data: {"bui_id": bui_id},
                                success: function (data) {
                                    $floor.append(data);
                                }
                            });
                        }else{
                            $floor.attr("disabled", "disabled");
                        }
                    });
                });
            });
        }
    });
}
