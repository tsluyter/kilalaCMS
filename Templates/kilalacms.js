document.getElementById("loginbutton").addEventListener("click", function() {
    var popupboxdiv = document.getElementById("popupbox");
    popupboxdiv.style.visibility = "visible";
});

document.getElementById("closelogin").addEventListener("click", function() {
    var popupboxdiv = document.getElementById("popupbox");
    popupboxdiv.style.visibility = "hidden";
});

document.getElementById("searchtextbar").addEventListener("focus", function() {
    if(this.value=='Search...'){this.value='';};
});

document.getElementById("searchtextbar").addEventListener("blur", function() {
    if(this.value==''){this.value='Search...';};
});
