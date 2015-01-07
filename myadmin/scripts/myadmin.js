

function setValue(ctrl,val){

ctrl=document.getElementById(ctrl);
ctrl.value=val;
		
}

function copyFieldValue(fldFrom,fldTo){

document.getElementById(fldTo).value = document.getElementById(fldFrom).value;
return 1;
}

function showElement(co){
with(document.getElementById(co)){className='vis';}
}

function hideElement(co){
with(document.getElementById(co)){className='hid';}
}

function chgCssClass(co, cssClass){
with(document.getElementById(co)){className=cssClass;}
}

function setActionForm(formId,actionUrl){

ctrl=document.getElementById(formId);
ctrl.action=actionUrl;

}


function switchOffAll(form) {
	switchAll(form, false);
}

function switchOnId(cId) {
	ctrl=document.getElementById(cId);
	ctrl.checked = true;
}

function switchAll(form,ctrl) {
//	alert(ctrl);
	var ignoreIdList = new Array();
//	var ctrlId = ctrl.id;
	var newValue = (ctrl==true)?true:false;
	for (j=0;j<form.elements.length;j++) {
		var ignoreMe=false;
		var obj = form.elements[j];
		for (i=0;i<ignoreIdList.length;i++) {
			if (obj.id==ignoreIdList[i]) {
				ignoreMe=true; break;
			}
		}
		if ((obj.type=='checkbox') && ignoreMe==false) {
			obj.checked = newValue;
		}
	}
}

function countChcecked(formId) {
	var counter = 0;
	var form = document.getElementById(formId);
	for (j=0;j<form.elements.length;j++) {
		var obj = form.elements[j];
		if ((obj.type=='checkbox') && obj.checked==true) {
			++counter;
		}
	}

	return counter;
}


$('#back-to-top').click(function(){

$('html, body').animate({scrollTop:0}, 2200, 'linear');

});














