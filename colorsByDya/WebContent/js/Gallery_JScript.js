
// SHow Fixed price radio button TEXT BOX
function ShowHideDiv() {
	    var artworkRadioFixed = document.getElementById("artworkRadioFixed");
	    var artworkFixedValue = document.getElementById("artworkFixedValue");
	    artworkFixedValue.style.display = artworkRadioFixed.checked ? "block" : "none";
	}


// image prieview
function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imageGallery')
                        .attr('src', e.target.result)
                        .width(150)
                        .height(200);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

// Form filled validation
function validateForm() {
	var x1 = document.forms["insertForm"]["artworkTitle"].value;
      if (x1 == "") {
	    alert("Title must be filled out");
	    return false;
	  }

	/*var x2 = document.forms["insertForm"]["radio_price"].value;
      if (x2 == "") {
	    alert("Price Number must be filled out");
	    return false;
	  }*/

	var x3 = document.forms["insertForm"]["artworkCategory"].value;
      if (x3 == "") {
	    alert("Category must be chosen");
	    return false;
	  }
	  
	var x4 = document.forms["insertForm"]["imagePainting"].value;
      if (x4 == "") {
	    alert("Image must be selected");
	    return false;
	  }

}