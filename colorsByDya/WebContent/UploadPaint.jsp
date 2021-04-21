<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	

<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Painting</title>

<link rel="stylesheet" href="css/frontpage.css">
<!-- 
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">
 -->
<script type="text/javascript">
	function ShowHideDiv() {
	    var artworkRadioFixed = document.getElementById("artworkRadioFixed");
	    var artworkFixedValue = document.getElementById("artworkFixedValue");
	    artworkFixedValue.style.display = artworkRadioFixed.checked ? "block" : "none";
	}

</script>

</head>
<body>

	
<h2>Colors By Diyaa</h2>

<div class="user">

	<form action="insertpaint" method="post" class="form">

		<div class="form__group">
			<label>Title</label> 
			<input type="text" id="artworkTitle" name="artworkTitle" placeholder="Enter Title of the Artwork here" required
				oninvalid="this.setCustomValidity('Enter Title Here')"
	  			oninput="this.setCustomValidity('')"	 class="form__input">
		</div>
		<div class="form__group">
			<label>Description</label>
			<input type="text" id="artworkDescription" name="artworkDescription" placeholder="Enter Description of the Artwork here" required
				oninvalid="this.setCustomValidity('Enter Description Here')"
	  			oninput="this.setCustomValidity('')"	 class="form__input">
		</div>
		<div class="form__group">
			<label style="float: left">Price</label> 
			<!-- <input type="text" id="artworkFixedValue" name="artworkFixedValue" placeholder="Enter Price of the Artwork here"> -->
			
			 
			<input type="radio" style="float: left" id="artworkRadioNegotiate" name="radio_price" value="Negotiate Price" onclick="ShowHideDiv()"> 
	  			
			<label for="negotiate" style="float: left">Negotiate Price</label>
			
			<input type="radio" style="float: left" id="artworkRadioFixed" name="radio_price" value="artworkRadioFixed" onclick="ShowHideDiv()">
			<label for="fixed">Fixed Price</label>
			
			<input type="number" style="display: none" id="artworkFixedValue" name="artworkFixedValue" value="artworkFixedValue" placeholder="Enter Price of the Artwork here" >
					
					
		</div>
		<div class="form__group">
			<label>Category</label> 
			<!-- 
			<input type="text" id="artworkCategory" name="artworkCategory" placeholder="Enter Category of the Artwork here">
			 -->
			 
			<select name="artworkCategory" id="category"  class="form__input">
				<option value="Abstract">Abstract</option>
				<option value="Nature">Nature</option>
				<option value="Black and White">Black n White</option>
				<option value="Oil Painting">Oil painting</option>
	      		<option value="Watercolor">Watercolour</option>
	      		<option value="Postercolor">Postercolour</option>
	      		<option value="Acrylic">Acrylic</option>
	       		<option value="Pencil Sketch">Pencil sketch</option>
				<option value="Other">Other</option>
			</select>
				
				
		</div>
		<div>
			<label>Drawn Date</label>
			<input type="date" id="drawnDate" name="drawnDate" placeholder="Enter the Drawn Date here">
		</div>
		
		<div>
			<label>Select Artwork : </label>
			<!--
			<input type="text" id="imagePainting" name="imagePainting" placeholder="Enter Image of the Artwork here">
			-->
			<input type="file" id="imagePainting" name="imagePainting" accept="image/*" required
				oninvalid="this.setCustomValidity('Upload your Artwork Here')"
	  			oninput="this.setCustomValidity('')" > 
	  			
		</div>
		<div>
			<label>Length</label>
			<input type="text" id="artworkLength" name="artworkLength" placeholder="Enter Length of the Artwork here">
		</div>
		<div>
			<label>Width</label>
			<input type="text" id="artworkWidth" name="artworkWidth" placeholder="Enter Width of the Artwork here">
		</div>
		
		<div>
			<label>Weight</label>
			<input type="number" id="artworkWeight" name="artworkWeight" placeholder="Enter Weight of the Artwork here">
		</div>
		<div>
			<label>Material</label>
			<input type="text" id="artworkMaterial" name="artworkMaterial" placeholder="Enter Material of the Artwork here">
		</div>
		<div>
			<label>Frame</label>
			<input type="text" id="artworkFrame" name="artworkFrame" placeholder="Enter Frame of the Artwork here">
		</div>
		
		<br>
		<input type="submit" name="upload"value="Upload">
</div>
</form>



<style>
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

.user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}

.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}



.btn {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: black;
    background: $color-primary;
    transition: 0.3s;
    
    &:hover {
        background: darken($color-primary, 5%);
    }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}
</style>

	
</body>
</html>