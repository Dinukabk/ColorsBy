function validateForm() {
	var x4 = document.forms["negoForm"]["message"].value;
      if (x4 == "") {
	    alert("Negotiate price must be filled out");
	    return false;
	  }
}

function buttonEnable() {
  document.getElementById("cart").disable = false;
}