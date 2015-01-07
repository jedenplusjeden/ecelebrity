function getFlashVersion(){
  try {
	try {
	  var axo = new ActiveXObject('ShockwaveFlash.ShockwaveFlash.6');
	  try { axo.AllowScriptAccess = 'always'; }
	  catch(e) { return '6.0 r0'; }
	} catch(e) {}
	return new ActiveXObject('ShockwaveFlash.ShockwaveFlash').GetVariable('$version').replace(/\D+/, '').match(/^,?(.+),?$/)[1];
  } catch(e) {
	try {
	  if(navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin){
		return (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]).description.replace(/\D+/, '').match(/^,?(.+),?$/)[1];
	  }
	} catch(e) {}
  }
  return '0.0 r0';
}

function SetCookie (name, value) {
	var argv=SetCookie.arguments;
	var argc=SetCookie.arguments.length;
	var expires=(argc > 2) ? argv[2] : null;
	var path=(argc > 3) ? argv[3] : null;
	var domain=(argc > 4) ? argv[4] : null;
	var secure=(argc > 5) ? argv[5] : false;
	document.cookie=name+"="+escape(value)+
		((expires==null) ? "" : ("; expires="+expires.toGMTString()))+
		((path==null) ? "" : ("; path="+path))+
		((domain==null) ? "" : ("; domain="+domain))+
		((secure==true) ? "; secure" : "");
}

$('document').ready(function(){
	
	var ga_extra_params = "utmcs=" + (document.inputEncoding ? document.inputEncoding : '-');
	ga_extra_params += "&utmsr=" + screen.width + "x" + screen.height;
	ga_extra_params += "&utmvp=" + document.documentElement.clientWidth + "x" + document.documentElement.clientHeight;
	ga_extra_params += "&utmsc=" + screen.colorDepth + "-bit";
	ga_extra_params += "&utmul=" + (navigator.browserLanguage ? navigator.browserLanguage : navigator.language);
	ga_extra_params += "&utmje=" + (navigator.javaEnabled() == true ? 1 : 0);
	ga_extra_params += "&utmfl=" + getFlashVersion().replace(/,/g,'.');
	
	var date_exp = new Date();
	date_exp.setTime(date_exp.getTime()+15778800); // 6 mois
	SetCookie("ga_extra_params",ga_extra_params,date_exp,'/');
	
});