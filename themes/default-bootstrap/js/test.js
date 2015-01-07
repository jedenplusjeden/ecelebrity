var listaList = document.getElementsByClassName('select');
console.log('start');
function fnClick() {
    console.log("Click on options");
}

for (var i = 0; i < listaList.length; i++) {
    var elementyListy = listaList[i].getElementsByTagName('option');
    console.log('first');
    for (var j = 0; j < elementyListy.length; j++) {
        console.log(elementyListy[j]);
//        elementyListy[j].addEventListener('click', fnClick, false);
        elementyListy[j].onClick = fnClick;
    }
}