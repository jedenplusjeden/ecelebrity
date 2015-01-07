/**
 * @project    MyAdmin
 * @module     js
 * @copyright  (c) 2013 FORIX biuro@megamo.pl
 * @license    http://http://service.myadmin.com.pl/licencja.html
 * @version 1.1
 */

/*
Installation:

$(document).ready(function() {
	$("#variants").myLoadList();
});

 */


if (!jQuery.isFunction(jQuery.fn.myLoadList)) {

	(function( $ ) {

		$.fn.myLoadList = function(options) {

			var settings = $.extend({
				onStart: function(){},
				onComplete: function(){},
				onError: function(){},
				
				destination: "this",
				patternId: "",
				url: "",
				action: "",
				serviceKey: "",
				profilePrefix: "",
				notifier: "",
				filter: '',
				pageNo: 1,
				pagingContainer: '',
				debugMode: false
			}, options);

			return this.each(function() {
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
				postData['filter'] = settings.filter;
				postData['pageNo'] = settings.pageNo;

				postData['profileconfigprefix'] = settings.profilePrefix;
				postData['profilePrefix'] = settings.profilePrefix;

				logMe("call: "+settings.url);
				logMe("do: "+settings.action);
				
				$.post(settings.url, postData, function(data) {

					if(typeof data.info == "undefined"){
						settings.onError("Wystąpił błąd");
					}else if(data.info=="error") {
						settings.onError("Wystąpił błąd: "+data.error);
					}else if(data.info=="ok") {

						$(destination).html('');

						var rowId = 0;
						var rowIdMod2 = 0;
						jQuery.each(data.data, function(i, val) {
							rowId++;
							
							var newA = $(settings.patternId).clone();
							var tmp = newA.html();

							tmp = tmp.replace(new RegExp('{{rowId}}','gi'), rowId);
							tmp = tmp.replace(new RegExp('{{rowIdMod2}}','gi'), rowId%2);

							jQuery.each(val, function(i2, val2) {
								if(isNaN(parseFloat(i2))){
									tmp = tmp.replace(new RegExp('{{'+i2+'}}','gi'), val2);
								}
							});
							
							newA.html(tmp).fadeIn();
							$(destination).append(newA);
						});
						
						if(typeof data.paging != "undefined") {
						  settings.pagingContainer.fadeOut(function(){
						      settings.pagingContainer.html(data.paging);
						      settings.pagingContainer.fadeIn();
						  });
						  
						}

						logMe("done: "+rowId+" rows");
						$(destination).fadeIn();
						settings.onComplete();
					}
				}).error(function() {settings.onError('Wystąpił błąd serwisu [Err = SRV001]');});
			});



			function logMe(message){
				if(settings.debugMode){
					console.log("[Debugger myLoadList] "+message);
				}
			};

		}		
	})( jQuery );
}


