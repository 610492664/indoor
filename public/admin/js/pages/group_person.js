/**
 * Created by Administrator on 2017/6/8.
 */

function group_person() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index
        },
        "order": [[5, 'desc'],[2, 'asc']],
        "columns": [
            { "data": "per_id", "title": '<input type="checkbox" e-check-name="checkList">',"searchable": false,"orderable": false, "width": "3px" },
            { "data": null, "title": "序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "name" , "title": "姓名"},
            { "data": "pidtype" , "title": "证件类型"},
            { "data": "pid" , "title": "证件号"},
            { "data": "birthday" , "title": "出生日期"},
            { "data": "loc_id" , "title": "定位模块"},
            { "data": "per_id", "title": "操作", "searchable": false,"orderable": false, "width": "25%"}
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
                        return (data != '') ? full.loc_number :'无';
                    }
                    return data;
                }
            },
            {
                "targets": 7,
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
    //add、mod模态框初始化，添加页面个性化表单事件
    $('#myModal').on('show.bs.modal', function () {
        var $modal = $(this);
        var $add = $('#add');
        var add = $add.DataTable({
            "ajax": null
        });
        $.table_index(add, 0);
        $add.find('tbody').on( 'click', 'tr', function () {
            $(this).toggleClass('selected');
        });
        $('#checkedAll').click(function () {
            var $span = $(this).children('span');
            if($span.text() == '全选') {
                $(add.rows({
                    page: 'current'
                }).nodes()).addClass('selected');
                $span.text('取消全选');
            } else {
                $(add.rows({
                    page: 'current'
                }).nodes()).removeClass('selected');
                $span.text('全选');
            }
        });
        $modal.find('button[type="submit"]').click(function () {
            var per_ids = [];
            add.rows('.selected').data().each(function (data) {
                per_ids.push(data[0]);
            });
            if(per_ids.length<1){
                $.msg.error('未选中任何行！');
                return false;
            }
            $.form.load(MODULE+'/Group_person/add', {"gro_id": PHP_DATA.gro_id, "per_ids": per_ids}, "post", true, function () {
                $modal.off('hide.bs.modal');
                $modal.modal('hide');
            });
        });
        $modal.on('hide.bs.modal',function (e) {
            $.msg.confirm('确定取消？',function () {
                $modal.off('hide.bs.modal');
                $modal.modal('hide');
            });
            e.preventDefault();
        });
        $add.on( 'draw.dt', function () {
            var $span = $('#checkedAll').children('span');
            if($('#add tbody tr').not('tr.selected').length > 0){
                $span.text('全选');
            }else {
                $span.text('取消全选');
            }
        } );
    });

}
