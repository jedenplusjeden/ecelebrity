/**
 * @project    MyAdmin
 * @module     js
 * @copyright  (c) 2013 FORIX biuro@megamo.pl
 * @license    http://http://service.myadmin.com.pl/licencja.html
 * @version 1.2
 * @requirements:  jQuery v. 1.8.3, jQuery UI v. 1.10.3
 */


if (!jQuery.isFunction(jQuery.fn.myProfileConfig)) {

	(function( $ ) {
		$.fn.myProfileConfig = function(options) {

			var settings = $.extend({
				accordionId: '#accordion',
				actionButton: '.action-btn',
				actionResult: '.action-result',
				
				addProfileName: '#addProfileName',
				addProfileButton: '#addNewProfile',
				deleteProfileButton: '.delete-btn',
				setActiveProfileButton: '#setActiveProfileBtn',
				setActiveProfileId: '#setActiveProfileId',
				activeProfile: 1,
				tabIdList: '',

				profileServiceUrl: '',
				profileServiceName: '',
				profileServiceKey: '',
				profileGroup:  '',
				profileResult: '#result'
			}, options);


			//////////////////////////////////////
			
			$('html').append('<div id="profile-dialog-message" title="Komunikat" style="display: none;"><div class="my-box">ddddddddd</div></div>');
			

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

			$( settings.accordionId ).accordion({
				collapsible: true,
				clearStyle: true, 
				heightStyle: "content",
				active: settings.activeProfile
			});


			///////////////////////////////////


			$(settings.addProfileName).click(function(){

				var value = $(this).val();
				if(value=="Nazwa nowego profilu")
					$(settings.addProfileName).val('');
			});

			$(settings.addProfileButton).click(function(){

				var profileName = $(settings.addProfileName).val();
				if( profileName.length && profileName != "Nazwa nowego profilu")
					doProfileService("add-profile","",profileName);
			});

			$(settings.deleteProfileButton).click(function(){
				var profileId = $(this).attr("profileId");
				var profileName = $(this).attr("profileName");
				
				deleteConfirm(profileId, 'Czy usunąć profil <b>'+profileName+'</b>');
			});
			
			$(settings.setActiveProfileButton).click(function(){
				var activeProfileId = $(settings.setActiveProfileId).val();
				var activeProfileName = $(settings.setActiveProfileId+" option:selected").text();
				
				if(parseInt(activeProfileId)<=0 || isNaN(activeProfileId)){
					return 0;
				}
				$(this).addClass('waiting').delay(4000).queue(function(next){
				    $(this).removeClass("waiting");
				    next();
				});
				doProfileService("set-active-profile",activeProfileId,activeProfileName);
			});

			///////////////////////////////////


			function deleteConfirm(profileId, message) {
				
				$('#profile-dialog-message div').html(message);
				$("#profile-dialog-message").dialog({
					modal: true,
					show: "blind",
					hide: "blind",
					buttons: {
						"Usuń": function() {
							$( this ).dialog( "close" );
							doProfileService("delete-profile",profileId,"");
						},
						"Przerwij": function() {
							$( this ).dialog( "close" );
						}
					}
				});
			}

			function doProfileService(action, profileId, profileName) {

				var postData = new Object();
				var infoOk = "";

				if(action == "add-profile"){
					postData['do'] = 'add-profile';
					postData['name'] = profileName;  

					infoOk = "Profil "+profileName+" został dodany";
				}

				if(action == "delete-profile"){
					postData['do'] = 'delete-profile';
					postData['pid'] = profileId;  

					infoOk = "Profil został usunięty";
				}
				
				if(action == "set-active-profile"){
					postData['do'] = 'set-active-profile';
					postData['pid'] = profileId;  

					infoOk = "Ustawiono aktywny profil: "+profileName;
				}

				postData['key'] = settings.profileServiceKey;
				postData['group'] =settings.profileGroup;

				var url = settings.profileServiceUrl+settings.profileServiceName+'/';


				$.post(url, postData, function(data) {
					$("#result").fadeIn(800); 
					if(data== null || typeof data.info == "undefined"){
						$(settings.profileResult).html("<span class='infoexcl'>Wystąpił błąd</span>");
					}else if(data.info=="error") {
						$(settings.profileResult).html("<span class='infoexcl'>Wystąpił błąd: "+data.error+"</span>");
					}else if(data.info=="ok") {
						$(settings.profileResult).html("<span class='infook'>"+infoOk+"</span>");
						setTimeout(function() {
							$("#result").fadeOut();
							$(document.body).fadeTo('slow', 0.3);
							//$(document.body).append('<div style="position:absolute; top:0; left:0; width:100%;height:100%;z-index:1000;background-color: #111; opacity: 0.3;"></div>');
							location.reload(true);
							return;
						},1500);
					}
				}, "json").error(function() { $(settings.profileResult).html("<span class='infoexcl'>Wystąpił błąd serwisu [Err = SRV001]</span>"); });
			}
		};

	})( jQuery );
}