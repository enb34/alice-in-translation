function init() {
    var checkboxes = document.getElementsByTagName('input');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', toggleColor, false);
    }
}

function toggleColor() {
    var device = this.value;
    switch (device) {
        //case 'cultural': {
        //var culturaltog = document.getElementbyClassName('cultural');
        //for (var i = 0; i < cultural.length; i++) {
            //cultural[i].classList.toggle('on');
        //};
        //};
        //break;
        //case 'iutog': {
        //var iu = document.getElementbyClassName('iu');
        //for (var i = 0; i < iu.length; i++) {
            //iu[i].classList.toggle('on');
        //};
        //};
        //break;
        //case 'nstog': {
        //var ns = document.getElementbyClassName('ns');
        //for (var i = 0; i < ns.length; i++) {
            //iu[i].classList.toggle('on');
        //};
        //};
        //break;
        case 'onomtog': {
        var onom = document.getElementbyClassName('onom');
        for (var i = 0; i < onom.length; i++) {
            onom[i].classList.toggle('on');
        };
        };
        break;
        //case 'pow': {
        //var pow = document.getElementbyClassName('pow');
        //for (var i = 0; i < pow.length; i++) {
            //pow[i].classList.toggle('on');
        //};
        //};
        //break;
        //case 'rep': {
        //var rep = document.getElementbyClassName('rep');
        //for (var i = 0; i < rep.length; i++) {
            //rep[i].classList.toggle('on');
        //};
        //};
        //break;
    }
    //var check = this.checked;
    //var span = document.getElementByClassName(device);
    //for (var i = 0; i <span.length; i++) {
        //if (check == true) {
            //span[i].style.textColor = color;
        //} else {
            //span[i].style.textColor = originalColor;
        //}
    //}
}

window.onload = init;