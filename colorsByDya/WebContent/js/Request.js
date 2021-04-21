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
	  
	var x4 = document.forms["negoForm"]["message"].value;
      if (x4 == "") {
	    alert("Negotiate price must be filled out");
	    return false;
	  }

}