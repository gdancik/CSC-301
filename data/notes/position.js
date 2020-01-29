// sets up the page
function setup() {
  resetPosition('parent');
  resetPosition('child');
  updateDisplay();
}

// sets initial "top" style to "0px" for parent and child divs
function setInitialStyles() {
	document.getElementById("parent").style.top = "0px";
	document.getElementById("child").style.top = "0px";
	
}
	
// updates the information displayed based on current inline styles
function updateDisplay() {
	
	// Update parent information
	document.getElementById("parent-position").innerHTML = 
		"position: " + document.getElementById("parent").style.position;
	document.getElementById("parent-top").innerHTML = 
		"top: " + document.getElementById("parent").style.top;

	// Update child information
	document.getElementById("child-position").innerHTML = 
		"position: " + document.getElementById("child").style.position;
	document.getElementById("child-top").innerHTML = 
		"top: " + document.getElementById("child").style.top;
	
}

function changeParentPosition() {
	parentSelect = document.getElementById('select-parent');
	document.getElementById("parent").style.position = parentSelect.value;	
	updateDisplay();
}
	
function changeChildPosition() {
	childSelect = document.getElementById('select-child');
	document.getElementById("child").style.position = childSelect.value;	
	updateDisplay();
}
	
function moveDiv(id, x) {
	div = document.getElementById(id);
	topValue = parseInt(div.style.top);
	div.style.top = (topValue+x)+"px";
	updateDisplay();	
}

function resetPosition(id) {
	div = document.getElementById(id);
	topValue = parseInt(div.style.top);
	div.style.top = "0px";
	div.style.position = "static";

    // update dropdowns
    document.getElementById("select-parent").value = "static";
    document.getElementById("select-child").value = "static";

    updateDisplay();

    
}





