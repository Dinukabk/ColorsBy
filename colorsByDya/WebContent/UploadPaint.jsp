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
 
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<script src="js/Gallery_JScript.js"></script>

<!-- Preview image links -->
<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
 
 <style>
    select:invalid{
        color: gray;
    }
    option{
        color: black;
    }
</style>
 
</head>
<body>

	
<h2>Colors By Diyaa</h2>


<div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">

	<form action="insertpaint" method="post" class="form" name="insertForm" onsubmit="return validateForm()">
	<div style="float:;">
		<div class="form__group">
			<label>Title</label> 
			<input type="text" id="artworkTitle" name="artworkTitle" placeholder="Enter Title of the Artwork here" required
				oninvalid="this.setCustomValidity('Enter Title Here')"
	  			oninput="this.setCustomValidity('')" class="form__input">
		</div>
		<div class="form__group">
			<label>Description</label>
			<textarea rows="" cols="" id="artworkDescription" name="artworkDescription" placeholder="Enter Description of the Artwork here" class="form__input"></textarea>
	  			<!-- required oninvalid= "alert('You must fill out the form!');"
			<input type="text" id="artworkDescription" name="artworkDescription" placeholder="Enter Description of the Artwork here" required
				oninvalid="this.setCustomValidity('Enter Description Here')"
	  			oninput="this.setCustomValidity('')"	 class="form__input"> -->
		</div>
		<div class="form__group">
			<label style="float: left">Price</label><br> 
			<!-- <input type="text" id="artworkFixedValue" name="artworkFixedValue" placeholder="Enter Price of the Artwork here"> -->
			
			 
			<input type="radio" id="artworkRadioNegotiate" name="radio_price" value="Negotiate Price" onclick="ShowHideDiv()"> 
	  			
			<label for="negotiate">Negotiate Price</label>
			
			<input type="radio" id="artworkRadioFixed" name="radio_price" value="artworkRadioFixed" onclick="ShowHideDiv()">
			<label for="fixed">Fixed Price</label>
			
			<input type="number" class="form__input" style="display: none" id="artworkFixedValue" name="artworkFixedValue" value="artworkFixedValue" placeholder="Enter Price of the Artwork here" >
					
					
		</div>
		<div class="form__group">
			<label>Category</label> 
			<!-- 
			<input type="text" id="artworkCategory" name="artworkCategory" placeholder="Enter Category of the Artwork here">
			 -->
			 
			<select name="artworkCategory" id="category"  class="form__input" required
				oninvalid="this.setCustomValidity('Choose a category here')"
	  			oninput="this.setCustomValidity('')">
	  			
				<option value="" disabled selected hidden>Choose a category</option>
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
			<input type="date" id="drawnDate" name="drawnDate" placeholder="Enter the Drawn Date here" min="2014-05-11" max="2014-05-20"  class="form__input">
		</div>
		
		<div>
			<label>Select Artwork : </label> 
			<!--onchange="readURL(this);"  -->
			
			<input type="file"  onchange="readURL(this);" class="form__input" id="imagePainting" name="imagePainting" accept="image/*" required
				oninvalid="this.setCustomValidity('Upload your image Here')"
	  			oninput="this.setCustomValidity('')" >
	  		<img id="imageGallery" src="#" alt="Selected Image" /> 
	  			
		</div>
		</div>
	
		<div style="float:;">
		<div>
			<label>Length</label>
			<input type="text"  class="form__input" id="artworkLength" name="artworkLength" placeholder="Enter Length of the Artwork here">
		</div>
		<div>
			<label>Width</label>
			<input type="text"  class="form__input" id="artworkWidth" name="artworkWidth" placeholder="Enter Width of the Artwork here">
		</div>
		
		<div>
			<label>Weight</label>
			<input type="number"  class="form__input" id="artworkWeight" name="artworkWeight" placeholder="Enter Weight of the Artwork here">
		</div>
		<div>
			<label>Material</label>
			<input type="text"  class="form__input" id="artworkMaterial" name="artworkMaterial" placeholder="Enter Material of the Artwork here">
		</div>
		<div>
			<label>Frame</label>
			<input type="text"  class="form__input" id="artworkFrame" name="artworkFrame" placeholder="Enter Frame of the Artwork here">
		</div>
		</div>
		
		<br>
		<input type="submit" name="upload"value="Upload" class="btn">
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

/* .user {
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
 */
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
	border-radius: 6px;
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

@media (min-width: 576px)
.container {
    max-width: 540px;
}
</style>

	
</body>
</html>