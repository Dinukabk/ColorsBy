function validateForm() {
	var x1 = document.forms["paymentForm"]["cardNumber"].value;
      if (x1 == "") {
	    alert("Cart number must be filled out");
	    return false;
	  }

	var x2 = document.forms["paymentForm"]["nameOnCard"].value;
      if (x2 == "") {
	    alert("Name on Cart must be filled out");
	    return false;
	  }

	var x3 = document.forms["paymentForm"]["expDate"].value;
      if (x3 == "") {
	    alert("Expiration Date must be filled out");
	    return false;
	  }


}
