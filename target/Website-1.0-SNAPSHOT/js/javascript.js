let varNavbar = document.getElementsByClassName("navbar");
window.onscroll = function() {addClassNav()};

function addClassNav() {
    if(document.body.scrollTop>100 || document.documentElement.scrollTop>100){
        varNavbar[0].classList.add("scrollScreen");
    }
    else{
        varNavbar[0].classList.remove("scrollScreen");
    }
}

function openBtn(){
    document.getElementById("myNav").style.left = "0";
}
function closeNav(){
    document.getElementById("myNav").style.left = "-100%";
}

function openSearch(){
    document.getElementById("mySearch").style.left = "0";
}
function closeSearch(){
    document.getElementById("mySearch").style.left ="-100%";
}