jQuery(document).ready(function($){

    $('.dd').nestable('serialize');

    $('.dd').on('change', function() {
        var li = $(this).find('li');
        console.log(li);
    });


    $('.remove-item-js').on('click', function(e) {

        if(!confirm("Вы действительно хотите удалить данный элемент?")){
            return false;
        }
    });
});