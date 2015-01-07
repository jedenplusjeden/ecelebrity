/**
 * @project    MyAdmin
 * @module     js
 * @copyright  (c) 2013 FORIX biuro@megamo.pl
 * @license    http://http://service.myadmin.com.pl/licencja.html
 * @version    0.9.8 Beta $
 */


$(document).ready(function(){
  
  
if (!jQuery.isFunction(jQuery.fn.mkurierzy)) {

	(function( $ ) {
		$.fn.mkurierzy = function(options) {
		  		  
			var settings = $.extend({
				myadminBaseUrl: '',
				myadminApiKey: '',
				accordionId: '#accordion',
				
			}, options);
					    
		      var postData = new Object();
			postData['action'] = 'get-available-services';
			postData['apikey'] = settings.myadminApiKey;
			
			$('#accordion').html("");
			myServiceRequest({
				      serviceUrl: "../modules/megamo/connector.php",
				      myadminBaseUrl: settings.myadminBaseUrl,
				      servicePost: postData,
				      serviceName: '',
				      prcsResultFunction: function(data){
				      
				      
				      jQuery.each(data, function(i, val) {

					  var newA = $("#parcel-details-tpl").clone();

					  if(val.active == 0){
					    return true;
					  }
					  newA.html(newA.html().replace(/\[\[CODE\]\]/gi,val.code).replace(/\[\[NAME\]\]/gi,val.name).replace(/\[\[MANAGER\]\]/gi,val.manager).replace(/\[\[REGISTER\]\]/gi,val.register));
					  $(settings.accordionId).append(newA.html());

					  if($.isArray(val.profiles)){
					    jQuery.each(val.profiles, function(i2, val2) {
						$('#profileSelect-'+val.code).append('<option value="'+val2.profile_id+'">'+val2.profile_name+'</option>');
					    });
					    
					    $('#profileSelect-'+val.code).change();
					  }
					  if(val.manager != "-"){
					    $(".manager-"+val.code).show();					    
					  }
					    
				      });	
				      
				      $(settings.accordionId).accordion('destroy').accordion({
					  collapsible: true,
					  clearStyle: true, 
					  autoHeight: false,
					  active: false
				      });
				      
				      
				      $("a.myadmin").fancybox({
					  'width'		:	$(window).width()*0.8,
					  'height'	:	$(window).height() - 20,
					  'transitionIn'	:	'elastic',
					  'transitionOut'	:	'elastic',
					  'autoScale' : false,
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
					  
					});
				      
				  },
				  onError: function(errorInfo){
				    $('#error-info').append("<p class='error'>"+errorInfo+"</p>").show();
				  }
			      });
			
			
			$(document).on('change','select.m-profile-select',function(){	
					var shippercode = $(this).attr('shippercode');
					var profile = $("option:selected",this).val();
					
					$("a.register-"+shippercode).each(function(){
					  $(this).attr('href',$(this).attr('href').replace(/\/profile+\=[0-9]\/+/gi,'')+"/profile="+profile+"/");
					});
					
					$("a.manager-"+shippercode).each(function(){
					  $(this).attr('href',$(this).attr('href').replace(/\/profile+\=[0-9]+\//gi,'')+"/profile="+profile+"/");
					});
			});
  


/////////////////////////////
			
		};

	})( jQuery );
}

 var myServiceRequest = function(options) {

      var settings = $.extend({
	      serviceUrl: '',
	      myadminBaseUrl: '',
	      servicePost: '',
	      serviceName: '',
	      prcsResultFunction: function(options) { return 1;},
	      onError: function(options) { return 1;},
      }, options);
      
	  settings.servicePost['myadminBaseUrl'] = settings.myadminBaseUrl;
     
	  $.post(settings.serviceUrl, settings.servicePost, function(data) {

		var errorInfo = "Wystąpił nieznany błąd!";

		if(data== null || typeof data.info == "undefined"){

		}else if(data.info=="error") {
		  errorInfo = "Wystąpił błąd: "+data.error;
		}else if(data.info=="ok") {
		  settings.prcsResultFunction(data.data);
		  return true;
		}

		settings.onError(errorInfo);
		
		return true;
		
		
		}).error(function() {settings.onError("Wystąpił błąd serwisu [Err = SRV001]"); });
		
		return true;
      }			

});