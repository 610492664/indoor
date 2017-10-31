/**
 * Created by Administrator on 2017/6/8.
 */

function incident() {
    $.table = $('#table').DataTable({
        "ajax": {
            "url": php_url.index,
        },
        "order": [[6, 'desc'], [3, 'asc']],
        "columns": [
            { "data": null, "title":"序号", "searchable": false,"orderable": false, "width": "2em"},
            { "data": "organization.abbr","title":"主管单位"},
            { "data": "name","title":"名称"},
            { "data": "type","title":"类型" },
            { "data": "start_time" ,"title":"开始时间"},
            { "data": "end_time" ,"title":"结束时间"},
            { "data": "buildings[, ].name","title":"地点" },
            { "data": "description","title":"描述" },
            { "data": "inc_id","title":"操作", "searchable": false,"orderable": false, "width": "25%"}
        ],
        "columnDefs": [
            {
                "targets": 8,
                "render": function ( data, type, full, meta ) {
                    if (type === 'display') {
                        var detail =  php_url.detail === 'false' ? "" : '<button class="btn btn-link " e-action-modal="'+php_url.detail+'" e-data="'+data+'" ><i class="fa fa-search"></i></button>';
                        var mod = php_url.mod === 'false' ? "" : '<button class="btn btn-link" e-action-modal="'+php_url.mod+'" e-data="'+data+'" ><i class="fa fa-pencil-square-o"></i></button>';
                        return '<div class="btn-group">'+ detail + mod + '</div>';
                    }
                    return data;
                }
            }
        ],
        "preDrawCallback": function( settings ) {
            if(php_url.mod === 'false'&&php_url.detail === 'false'){
                this.api().columns([8]).visible(false);
            }
        }
    });
    //添加索引列
    $.table_index($.table, 0);

    //add、mod模态框初始化
    $('#myModal').on('show.bs.modal', function () {
        $("[data-mask]").inputmask();
    });

    $('#daterange').daterangepicker(
        {
            ranges: {
                '今天': [moment(), moment()],
                '昨天': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                '近7天': [moment().subtract(6, 'days'), moment()],
                '近30天': [moment().subtract(29, 'days'), moment()],
                '本月': [moment().startOf('month'), moment().endOf('month')],
                '上月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                '本年': [moment().startOf('year'), moment().endOf('year')]
            },
            startDate: moment().subtract(29, 'days'),
            endDate: moment(),
            maxDate: moment(),
            showDropdowns: true,
            locale: {
                format: "YYYY/MM/DD",
                applyLabel: '确定',
                cancelLabel: '取消',
                customRangeLabel: '自定义',
                daysOfWeek: ['日','一','二','三','四','五','六'],
                monthNames: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
            }
        },
        function (start, end) {
            $.table.settings()[0].ajax.data = {
                "start" :start.format('YYYY-MM-DD HH:mm:ss'),
                "end" : end.format('YYYY-MM-DD HH:mm:ss')
            };
            $.table.ajax.reload();
        }
    );
}