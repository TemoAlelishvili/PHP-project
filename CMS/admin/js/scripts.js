// tinymce.init({selector:'textarea'});

tinymce.init({
    selector: 'textarea',
    width: 1000,
    height: 300,
    plugins: [
        'advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker',
        'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
        'table emoticons template paste help'
    ],
    toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | ' +
        'bullist numlist outdent indent | link image | print preview media fullpage | ' +
        'forecolor backcolor emoticons | help',
    menu: {
        favs: {title: 'My Favorites', items: 'code visualaid | searchreplace | spellchecker | emoticons'}
    },
    menubar: 'favs file edit view insert format tools table help',
    content_css: 'css/content.css'
});

$(document).ready(function(){
    $('#selectAllBoxes').click(function(event){
        if(this.checked){
            $('.checkBoxes').each(function (){
                this.checked = true;
            })
        } else {
            $('.checkBoxes').each(function () {
                this.checked = false;
            });
        }
    });

    var div_box = "<div id='load-screen'><div id='loading'></div></div>";
    $("body").prepend(div_box);
    $('#load-screen').delay(700).fadeOut(600, function(){
        $(this).remove();
    })


});