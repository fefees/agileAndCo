$(document).ready(function(){
    
    //Nav Slide Toggle
    $('i.icon').click(function(){
        $('.navbar-nav').slideToggle()
    });
    
    //Stickey NavBar
    $(window).scroll(function(){
        var sc = $(this).scrollTop();
        if(sc > 100){
            $('header').addClass('sticky');
        }else{
            $('header').removeClass('sticky');
        }
    });
});
