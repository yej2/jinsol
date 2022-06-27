

function keepshow(){
	document.getElementById("show").style.display="none";
	document.getElementById("block").style.display = "block";
	document.getElementById("steps").style.backgroundColor = "rgb(45 65 122)";
	document.getElementById("keeps").style.backgroundColor = "rgb(60, 85, 156)";
	
};

function stepshow(){
	document.getElementById("show").style.display="block";
	document.getElementById("block").style.display = "none";
	document.getElementById("keeps").style.backgroundColor = "rgb(45 65 122)";
	document.getElementById("steps").style.backgroundColor = "rgb(60, 85, 156)";
	
};