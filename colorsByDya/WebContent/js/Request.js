function validateForm() {
	var x1 = document.forms["requestForm"]["name"].value;
      if (x1 == "") {
	    alert("Name must be filled out");
	    return false;
	  }

	var x2 = document.forms["requestForm"]["phone"].value;
      if (x2 == "") {
	    alert("Phone Number must be filled out");
	    return false;
	  }

	var x3 = document.forms["requestForm"]["email"].value;
      if (x3 == "") {
	    alert("Email Address must be filled out");
	    return false;
	  }


}

function disableBtn() {
  document.getElementById("disButton").disabled = true;
}


