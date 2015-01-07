/**
 * @project    MyAdmin
 * @module     js
 * @copyright  (c) 2013 FORIX biuro@megamo.pl
 * @license    http://http://service.myadmin.com.pl/licencja.html
 *  @version  0.9.8 Beta $
 */


$(document).ready(function(){

  var adminMenuSelector = "#maintab"+adminTabId+" ul.submenu";
  var catalogMenuSelector = "#maintab"+catalogTabId+" ul.submenu";
  var orderMenuSelector = "#maintab"+ordersTabId+" ul.submenu";
  var shippingMenuSelector = "#maintab"+shippingTabId+" ul.submenu";
  
  
  if($(".maintab[data-submenu="+catalogTabId+"]  ul.submenu").length || $(".maintab[data-submenu="+ordersTabId+"]  ul.submenu").length ){
    adminMenuSelector = ".maintab[data-submenu="+adminTabId+"]  ul.submenu";
    catalogMenuSelector = ".maintab[data-submenu="+catalogTabId+"]  ul.submenu";
    orderMenuSelector = ".maintab[data-submenu="+ordersTabId+"]  ul.submenu";
    shippingMenuSelector = ".maintab[data-submenu="+shippingTabId+"]  ul.submenu";
  }
  
  $(adminMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'madmin/" title="MyAdmin - Administracja">MyAdmin Administracja</a></li>');
  
  
  
  if(mimport_allegro_on == 1 && ordersTabId != null && typeof ordersTabId != "undefined"){
    $(orderMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mimport/allegro_form/" title="M-Import - Zamówienia Allegro">M-Import - Allegro</a></li>');
  }

  if(mimport_ebay_on == 1 && ordersTabId != null && typeof ordersTabId != "undefined"){
    $(orderMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mimport/ebay_form/" title="M-Import - Zamówienia Allegro">M-Import - eBay</a></li>');
  }
  
  if(mimport_qorder_on == 1 && ordersTabId != null && typeof ordersTabId != "undefined"){
    $(orderMenuSelector).prepend('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mimport/qorder_add/" title="Szybkie zamówienia">Szybkie zamówienia</a></li>');
  }
  
  if(mimport_shoper_on == 1 && ordersTabId != null && typeof ordersTabId != "undefined"){
    $(orderMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mimport/shoper_ord/" title="M-Import - Zamówienia Shoper/Click Shop">M-Import - Shoper/Click Shop</a></li>');
  }
  
  if(mimport_istore_on == 1 && ordersTabId != null && typeof ordersTabId != "undefined"){
    $(orderMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mimport/istore_ord/" title="M-Import - Zamówienia iStore">M-Import - iStore</a></li>');
  }
  
  if(mimport_kqs_on == 1 && ordersTabId != null && typeof ordersTabId != "undefined"){
    $(orderMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mimport/kqs_ord/" title="M-Import - Zamówienia KQS.store">M-Import - KQS.store</a></li>');
  }
 
  
  if(mkurierzy_on == 1 && shippingTabId != null && typeof shippingTabId != "undefined"){
   $(shippingMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'mkurierzy/" title="M-Kurierzy">M-Kurierzy</a></li>');
  }
  
  
   if(maukcje_on == 1 && catalogTabId != null && typeof catalogTabId != "undefined"){
      $(catalogMenuSelector).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'maukcje/menedzer/" title="M-Aukcje - aukcje Allegro">M-Aukcje</a></li>');
      
      //presta 1.5
      $.each($("#product a.edit").parent("td"),function(){
	var row = $(this).html();
	var finded = row.match(/id_product=([0-9]*)?\&/i);
	var pid = finded[1];
	console.log(pid);
	$(this).prepend('<a class="iframe myadmin" href="'+myadminBaseUrl+'maukcje/menedzer/f_pids='+pid+'" title="M-Aukcje"><img src="/modules/megamo/img/auction.png" alt="Allegro"></a>');
      });
      
      //presta 1.6
      $.each($("#product input[name='productBox[]']"),function(){
	
	var pid = $(this).val();
	$("ul.dropdown-menu",$(this).closest("tr")).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'maukcje/przygotuj/f_pids='+pid+'" title="M-Aukcje"><img src="/modules/megamo/img/auction.png" style="width: 14px;" alt="Allegro"> Utwórz i wystaw</a></li>');
	$("ul.dropdown-menu",$(this).closest("tr")).append('<li><a class="iframe myadmin" href="'+myadminBaseUrl+'maukcje/menedzer/f_pids='+pid+'" title="M-Aukcje"><img src="/modules/megamo/img/auction.png" style="width: 14px;" alt="Allegro"> Wystaw gotowy</a></li>');
      });
      
       $.each($(".adminproducts .bulk-actions"),function(){
	
	$("ul.dropdown-menu",$(this)).append('<li class="divider"></li>');
	$("ul.dropdown-menu",$(this)).append('<li><a class=" myadmin my-bulk" href="" dst="'+myadminBaseUrl+'maukcje/przygotuj/f_pids=" title="M-Aukcje"><img src="/modules/megamo/img/auction.png" style="width: 14px;" alt="Allegro"> Utwórz i wystaw</a></li>');
	$("ul.dropdown-menu",$(this)).append('<li><a class=" myadmin my-bulk" href="" dst="'+myadminBaseUrl+'maukcje/menedzer/f_pids=" title="M-Aukcje"><img src="/modules/megamo/img/auction.png" style="width: 14px;" alt="Allegro"> Wystaw gotowy</a></li>');
      });
       
       $(".my-bulk").click(function(){
	 $(this).attr("href",$(this).attr("dst")+getSelectedPids());
      });
      
       
       function getSelectedPids(){
	 var pids = [];
	 $.each($("#product input[name='productBox[]']:checked"),function(){
	   pids.push($(this).val());
	});
	 console.log(pids);
	 return pids.join(",");
      }
   }
   
   $(document).on( 'click', '.formContent-tab', function(){
     
     var boxId = '#formContent-'+$(this).attr('shippercode');
     //console.log(boxId);
     $(boxId).slideToggle();
     return false;
     
  } );
  
  $("a.myadmin").fancybox({
	'type' 		: 	'iframe',
	'fitToView'	: 	false,
	'width'		:	$(window).width()*0.8,
	'height'	:	$(window).height() - 20,
	'transitionIn'	:	'elastic',
	'transitionOut'	:	'elastic',
	'autoScale' 	: 	false,
	'speedIn'	:	600, 
	'speedOut'	:	200, 
	'overlayShow'	:	true,
	'titleShow'	:	false,
	'hideOnOverlayClick':	false,
	'padding':	2,
	'margin': 5,
	'onStart' : function() {
		      $("body").css({'overflow':'hidden'});
		    },
	'onClosed' : function() {
		      $("body").css({"overflow":"visible"});
		    },
	'helpers'     : { 
	  'overlay' : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox
    }
	
});

  
});