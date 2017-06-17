/**
 * cashedScirpt
 * 基于jquery，ajax动态加载JavaScript脚本，并记录已加载脚本，避免重复加载
 *
 * @author JAN
 */
(function ($) {
    $('section.content').on('click','[diy-action]', function () {
        var action = $(this).attr('diy-action'), data = {};
        data.id = $(this).attr('diy-id');
        $.ajax({
            url: MODULE+'/'+action,
            type: "get",
            data: data,
            success: function(data){
                $('#myModal div.modal-content').html(data);
                $("[data-mask]").inputmask();
                //表单上传
                $("#form").ajaxForm({
                    type: 'post',
                    success: function(data) {
                        alert(data.msg);
                        if (data.code = 1) {

                        }
                    }
                });
            }
        });
    } );
})(jQuery);

