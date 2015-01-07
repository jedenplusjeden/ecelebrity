
if (!jQuery.isFunction(jQuery.fn.mmod)) {

	(function( $ ) {
		$.fn.mmod = function(options) {

			var settings = $.extend({
				install_btn: '.install_btn',
				update_btn: '.update_btn',
				uninstall_btn: '.uninstall_btn',
				dialogBox: '#dialog-message',
				serviceUrl: '',
				serviceKey: '',
			}, options);

			
		$(settings.install_btn).click(function(){
				var module = $(this).attr("module");	
				var mtype = $(this).attr("mtype");
				doService("install",module, mtype);
		 });
		 
		$(settings.update_btn).click(function(){
				var module = $(this).attr("module");	
				var mtype = $(this).attr("mtype");
				doService("update",module, mtype);
		 });
		 
		 $(settings.uninstall_btn).click(function(){
		 	var module = $(this).attr("module");	
		 	var mtype = $(this).attr("mtype");
		 	var moduleTitle = $(this).attr("title");			
		 	deleteConfirm(module,mtype,"Czy chcesz trwale usunąć moduł "+moduleTitle+"?");
		 });
		 

		function doService(action, module, mtype) {

		 var url = settings.serviceUrl+"/service/json/madmin/installer/key="+settings.serviceKey+"/";
		 
		     $.getJSON(url+"do="+action+"/module="+module+"/mtype="+mtype, function(data) {    	
						if (typeof data.info != "undefined") {
		        	message = data.info;						
//		                return;
						}else{
							message = "Wystąpił błąd  [Err = SRV002]";
						}
						showMessage(message);	
		    }).error(function() {showMessage("Wystąpił błąd serwisu [Err = SRV001]"); });

		}

		function showMessage(message,reload) {
				reload = typeof(reload) != 'undefined' ? a : false;
				$(settings.dialogBox+' div').html(message);
			
			
				$( settings.dialogBox).dialog({
					modal: true,
					show: "blind",
					hide: "blind",
					buttons: {
						Ok: function() {
							$( this ).dialog( "close" );
								location.reload(true);
						}
					}
				});
			}
			
		function deleteConfirm(module, mtype, message) {
				$(settings.dialogBox+' div').html(message);
				$(settings.dialogBox).dialog({
					modal: true,
					show: "blind",
					hide: "blind",
					buttons: {
						"Usuń": function() {
							$( this ).dialog( "close" );
							doService("uninstall",module, mtype);
						},
						"Przerwij": function() {
							$( this ).dialog( "close" );
						}
					}
				});
			}


			///////////////////////////////////
		};

	})( jQuery );
}