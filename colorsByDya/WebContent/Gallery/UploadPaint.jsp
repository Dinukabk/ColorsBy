<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Painting</title>
<link href="styles_Gallery.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js_Gallery.js"></script>

</head>
<body>

	<form action="#" method="post">
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
			
			<input type="radio" id="artworkRadioNegotiate" name="radio_price" value="artworkRadioNegotiate"required
				oninvalid="this.setCustomValidity('Upload your Artwork Here')"
	  			oninput="this.setCustomValidity('')"	> 
	  			
			<label for="negotiate">Negotiate Price</label><br>
			
			<input type="radio" id="artworkRadioFixed" name="radio_price" value="artworkRadioFixed">
			<label for="fixed">Fixed Price</label><br>
			
			<input type="number" id="artworkFixedValue" name="artworkFixedValue" value="artworkFixedValue" placeholder="Enter Price of the Artwork here">
						
		</div>
		<div>
			<label>Category</label> 
			<select name="artworkCategory" id="category">
				<option value="abstract">Abstract</option>
				<option value="nature">Nature</option>
				<option value="blacknWhite">Black n White</option>
				<option value="other">Other</option>
			</select>
		</div>
		<div>
			<label>Drawn Date</label>
			<input type="date" id="drawnDate" name="drawnDate" placeholder="Enter the Drawn Date here">
		</div>
		
		<div>
			<label>Select Artwork : </label>
			<input type="file" id="imagePainting" name="imagePainting" accept="image/*" required
				oninvalid="this.setCustomValidity('Upload your Artwork Here')"
	  			oninput="this.setCustomValidity('')"	> 
		</div>
		<div>
			<label>Length</label>
			<input type="text" id="artworkTitle" name="artworkTitle" placeholder="Enter Title of the Artwork here">
		</div>
		<div>
			<label>Width</label>
			<input type="text" id="artworkLength" name="artworkLength" placeholder="Enter Length of the Artwork here">
		</div>
		
		<div>
			<label>Weight</label>
			<input type="text" id="artworkWeight" name="artworkWeight" placeholder="Enter Weight of the Artwork here">
		</div>
		<div>
			<label>Material</label>
			<input type="text" id="artworkMaterial" name="artworkMaterial" placeholder="Enter Material of the Artwork here">
		</div>
		<div>
			<label>Frame</label>
			<input type="text" id="artworkFrame" name="artworkFrame" placeholder="Enter Frame of the Artwork here">
		</div>
		
		
		
		<!-- <div class="form-group" id="div">
                    <label> Date of Birth </label>
                    <input type = "date" id = "birth" placeholder = "Date of Birth">
                    <span> 14 - Apr - 2020</span>
                </div>  -->
                
         <input type="submit" value="Upload">
	</form>
</body>
</html>