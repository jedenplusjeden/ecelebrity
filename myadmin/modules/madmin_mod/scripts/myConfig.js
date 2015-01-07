
if (!jQuery.isFunction(jQuery.fn.myConfig)) {

	(function( $ ) {
		$.fn.myConfig = function(options) {

			var settings = $.extend({
				actionButton: '.action-btn',
				actionResult: '.action-result',
				tabIdList: '',
			}, options);



			$("form.config-form").submit(function() {
				var formId = '#'+$(this).attr("id");

				if($(formId+' .response-content-type').val() == 'json'){

					$(formId+" "+settings.actionResult).html("").addClass('waiting');
					$.post($(this).attr("action"), $(this).serialize(), function(data) {
						if(data.info=="ok") {
							$(formId+" "+settings.actionResult).html("<span class='infook'>"+data.data+"</span>").removeClass('waiting').addClass('pos');
							$(".watermark").attr("src", $(".watermark").attr("src"), + new Date().getTime());
						}else{
							$(formId+" "+settings.actionResult).html("wystąpił błąd").removeClass('waiting').addClass('neg');
						}
					}).error(function() { $(formId+" "+settings.actionResult).html("<span class='infoexcl'>Wystąpił błąd serwisu [Err = SRV001]</span>"); });
					return false; // prevent normal submit
				}else{
					return true; // normal submit
				}
			});


			$(settings.actionButton).click(function(){

				var setId = $(this).attr("setId");
				var action = $(this).attr("action");
				var reload = $(this).attr("reload");

				var formId = '#'+$(this).closest("form.config-form").attr('id');

				$(formId+' .cfgaction').val(action);
				$(formId+' .cfgid').val(setId);

				if(reload=="1"){
					$(formId+' .response-content-type').val('html');
				}else{
					$(formId+' .response-content-type').val('json');
				}

				$(formId).submit();
			});



			$( settings.tabIdList).tabs({
				cookie: {
					expires: 1
				}
			});


			///////////////////////////////////
		};

	})( jQuery );
}