$(document).ready(function(){

    $('.dd').on('change', function(e) {
        var list = e.length ? e : $(e.target), output;

        if (window.JSON) {
            output = window.JSON.stringify(list.nestable('serialize'));



        } else {
            output='JSON browser support required for this demo.';
        }
        $.ajax({
            type: 'POST',
            url: '/admin/menu-items/change-position',
            data: { 'output' : output },
            dataType: 'json',
            success: function(data) {
                console.log(data)
            }
        });
    } );

    $('.dd').nestable({group: 1}) ;


    $('.remove-item-js').on('click', function(e) {

        if(!confirm("Вы действительно хотите удалить данный элемент?")){
            return false;
        }
    });
});