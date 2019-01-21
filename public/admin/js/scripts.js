jQuery(document).ready(function($){

    $('.dd').nestable();

    $('.dd').on('change', function() {
        var li = $(this).find('li');
        $.each(li , function(i, v) {
            console.log(i, v);
        });
        //console.log(li);
    });


    $('.remove-item-js').on('click', function(e) {

        if(!confirm("Вы действительно хотите удалить данный элемент?")){
            return false;
        }
    });
});