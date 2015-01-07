/**
 * @project    MyAdmin
 * @module     js
 * @copyright  (c) 2013 FORIX biuro@megamo.pl
 * @license    http://http://service.myadmin.com.pl/licencja.html
 * @version 1.0
 */

/*
Installation:

$(document).ready(function() {
	$.fn.myCallService({	 
	    url: '',
	    action: '{$action}',
	    serviceKey: '{$serviceKey}',
	    debugMode: true
	});
});

 */


if (!jQuery.isFunction(jQuery.fn.myCallService)) {

	(function( $ ) {

		$.fn.myCallService = function(options) {

			var settings = $.extend({
				onStart: function(){},
				onSuccess: function(){},
				onComplete: function(){},
				onError: function(){},
				
				url: "",
				action: "",
				serviceKey: "",
				profilePrefix: "",
				postData: new Object(),
				debugMode: false
			}, options);

			logMe("start");
			settings.onStart();

			if(settings.destination == 'this'){
				destination = $(this);
			}else{
				destination = settings.destination;
			}

			var postData = new Object();
			postData['do'] = settings.action;
			postData['key'] = settings.serviceKey;

			postData['profileconfigprefix'] = settings.profilePrefix;
			postData['profilePrefix'] = settings.profilePrefix;
			
			
			jQuery.each(settings.postData, function(index, value) {
			  postData[index] = value;
			});

			console.log(postData);
			
			logMe("call: "+settings.url);
			logMe("do: "+settings.action);
			
			$.post(settings.url, postData, function(data) {

				if(typeof data.info == "undefined"){
					settings.onError("Wystąpił błąd");
				}else if(data.info=="error") {
					settings.onError("Wystąpił błąd: "+data.error);
				}else if(data.info=="ok") {
				  
					if(settings.debugMode){
					  console.log(data.data);
					}
					settings.onSuccess(data.data);
					settings.onComplete();
				}
			}).error(function() {settings.onError('Wystąpił błąd serwisu [Err = SRV001]');});



			function logMe(message){
				if(settings.debugMode){
					console.log("[Debugger myCallService] "+message);
				}
			};

		}		
	})( jQuery );
}


