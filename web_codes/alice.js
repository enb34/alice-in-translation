function init() {
    var checkboxes = document.getElementsByTagName('input');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', toggleColor, false);
    }
}

function toggleColor() {
    var device = this.value;
    switch (device) {
        case 'cultural': {
        var cultural = document.querySelectorAll('.cultural');
        for (var i = 0; i < cultural.length; i++) {
            cultural[i].classList.toggle('on');
        };
        };
        break;
        case 'iu': {
        var iu = document.querySelectorAll('.iu');
        for (var i = 0; i < iu.length; i++) {
            iu[i].classList.toggle('on');
        };
        };
        break;
        case 'ns': {
        var ns = document.querySelectorAll('.ns');
        for (var i = 0; i < ns.length; i++) {
            iu[i].classList.toggle('on');
        };
        };
        break;
        case 'onom': {
        var onom = document.querySelectorAll('.onom');
        for (var i = 0; i < onom.length; i++) {
            onom[i].classList.toggle('on');
        };
        };
        break;
        case 'pow': {
        var pow = document.querySelectorAll('.pow');
        for (var i = 0; i < pow.length; i++) {
            pow[i].classList.toggle('on');
        };
        };
        break;
        case 'rep': {
        var rep = document.querySelectorAll('.rep');
        for (var i = 0; i < rep.length; i++) {
            rep[i].classList.toggle('on');
        };
        };
        break;
    }
}

window.onload = init;