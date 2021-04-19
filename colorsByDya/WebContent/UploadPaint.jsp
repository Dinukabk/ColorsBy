<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Painting</title>
<link href="styles_Gallery.css" type="text/css" rel="stylesheet"/>

<link rel="stylesheet" href="../css/frontpage.css">

<script type="text/javascript" src="js_Gallery.js"></script>

</head>
<body>

	
<h2>Colors By Diyaa</h2>

<main>

	<form action="insertpaint" method="post">

		<div>
			<label>Title</label> 
			<input type="text" id="artworkTitle" name="artworkTitle" placeholder="Enter Title of the Artwork here" required
				oninvalid="this.setCustomValidity('Enter Title Here')"
	  			oninput="this.setCustomValidity('')"	>
		</div>
		<div>
			<label>Description</label>
			<input type="text" id="artworkDescription" name="artworkDescription" placeholder="Enter Description of the Artwork here" required
				oninvalid="this.setCustomValidity('Enter Description Here')"
	  			oninput="this.setCustomValidity('')"	>
		</div>
		<div>
			<label>Price</label> 
			<input type="text" id="artworkFixedValue" name="artworkFixedValue" placeholder="Enter Price of the Artwork here">
			
			<!--  
			<input type="radio" id="artworkRadioNegotiate" name="radio_price" value="artworkRadioNegotiate"> 
	  			
			<label for="negotiate">Negotiate Price</label><br>
			
			<input type="radio" id="artworkRadioFixed" name="radio_price" value="artworkRadioFixed">
			<label for="fixed">Fixed Price</label><br>
			
			<input type="number" id="artworkFixedValue" name="artworkFixedValue" value="artworkFixedValue" placeholder="Enter Price of the Artwork here">
					
					-->	
		</div>
		<div>
			<label>Category</label> 
			<input type="text" id="artworkCategory" name="artworkCategory" placeholder="Enter Category of the Artwork here">
			
			<!--  
			<select name="artworkCategory" id="category">
				<option value="abstract">Abstract</option>
				<option value="nature">Nature</option>
				<option value="blacknWhite">Black n White</option>
				<option value="oilPainting">Oil painting</option>
	      		<option value="watercolor">Watercolour</option>
	      		<option value="postercolor">Postercolour</option>
	      		<option value="acrylic">Acrylic</option>
	       		<option value="pencilSketch">Pencil sketch</option>
				<option value="other">Other</option>
			</select>
				-->
				
		</div>
		<div>
			<label>Drawn Date</label>
			<input type="date" id="drawnDate" name="drawnDate" placeholder="Enter the Drawn Date here">
		</div>
		
		<div>
			<label>Select Artwork : </label>
			<input type="text" id="imagePainting" name="imagePainting" placeholder="Enter Image of the Artwork here">
			
			<!--
			<input type="file" id="imagePainting" name="imagePainting" accept="image/*" required
				oninvalid="this.setCustomValidity('Upload your Artwork Here')"
	  			oninput="this.setCustomValidity('')" > 
	  			-->
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

</form>

</main>

	
</body>
</html>