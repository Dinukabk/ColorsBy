
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