    $(document).ready(function(){  
        $("ul.topnav li a").mouseover(function() {       
            $(this).parent().find("ul.subnav").slideDown('fast').show();
            $(this).parent().hover(function() {  
            }, function(){  
                $(this).parent().find("ul.subnav").slideUp('fast');
            });  
      
            }).hover(function() {  
                $(this).addClass("subhover");
            }, function(){
                $(this).removeClass("subhover"); 
        });  
    });  