

window.onload = function(){
	document.getElementById("btnyes1").click();
	document.getElementById("btnno2").click();
	document.getElementById("btnno3").click();
	
}

function onDisplay1() {
	document.getElementById("noneDiv1").style.display = "block";
	document.getElementById("btnyes1").style.backgroundColor = "rgb(60, 85, 156)";
	document.getElementById("btnno1").style.backgroundColor = "white";
	
}
function offDisplay1() {
	document.getElementById("noneDiv1").style.display = "none";
	document.getElementById("btnno1").style.backgroundColor = "rgb(60, 85, 156)";
	document.getElementById("btnyes1").style.backgroundColor = "white";
}


function onDisplay2() {
	document.getElementById("noneDiv2").style.display = "block";
	document.getElementById("btnyes2").style.backgroundColor = "rgb(60, 85, 156)";
	document.getElementById("btnno2").style.backgroundColor = "white";
	
}
function offDisplay2() {
	document.getElementById("noneDiv2").style.display = "none";
	document.getElementById("btnno2").style.backgroundColor = "rgb(60, 85, 156)";
	document.getElementById("btnyes2").style.backgroundColor = "white";
}


function onDisplay3() {
	document.getElementById("noneDiv3").style.display = "block";
	document.getElementById("btnyes3").style.backgroundColor = "rgb(60, 85, 156)";
	document.getElementById("btnno3").style.backgroundColor = "white";
	
}
function offDisplay3() {
	document.getElementById("noneDiv3").style.display = "none";
	document.getElementById("btnno3").style.backgroundColor = "rgb(60, 85, 156)";
	document.getElementById("btnyes3").style.backgroundColor = "white";
}
