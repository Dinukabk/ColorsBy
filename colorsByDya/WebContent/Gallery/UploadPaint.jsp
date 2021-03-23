<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Painting</title>
<link href="Styles_Gallery.css" type="text/css" rel="stylesheet" />
</head>
<body>

	<form action="">
		<div>
			<label>Title</label> 
			<input type="text" id="artworkTitle" name="artworkTitle" value="artworkTitle" placeholder="Enter Title of the Artwork here">
		</div>
		<div>
			<label>Description</label>
			<input type="text" id="artworkTitle" name="fixedPriceValue" value="fixedPriceValue" placeholder="Enter Description of the Artwork here">
		</div>
		<div>
			<label>Price</label> 
			
			<input type="radio" id="artworkRadioNegotiate" name="price" value="artworkRadioNegotiate">
			<label for="negotiate">Negotiate Price</label><br>
			
			<input type="radio" id="artworkRadioFixed" name="price" value="artworkRadioFixed">
			<label for="fixed">Fixed Price</label><br>
			
			<input type="number" id="artworkFixedValue" name="artworkFixedValue" value="artworkFixedValue" placeholder="Enter Price of the Artwork here">
						
		</div>
		<div>
			<label>Category</label> 
			<select name="category" id="category">
				<option value="abstract">Abstract</option>
				<option value="nature">Nature</option>
				<option value="blacknWhite">Black n White</option>
				<option value="other">Other</option>
			</select>
		</div>
		<div>
			<label>Drawn Date</label>
			<input type="date" id="drawnDate" name="drawnDate" value="drawnDate" placeholder="Enter the Drawn Date here">
		</div>
		
		<div>
			<label>Select Artwork : </label>
			<input type="file" id="imagePainting" name="imagePainting" value="imagePainting" accept="image/*">
		</div>
		<div>
			<label>Length</label>
			<input>
		</div>
		<div>
			<label>Width</label>
			<input>
		</div>
		
		<div>
			<label>Weight</label>
			<input>
		</div>
		<div>
			<label>Material</label>
			<input>
		</div><div>
			<label>Frame</label>
			<input>
		</div>
		
		
		
		<!-- <div class="form-group" id="div">
                    <label> Date of Birth </label>
                    <input type = "date" id = "birth" placeholder = "Date of Birth">
                    <span> 14 - Apr - 2020</span>
                </div>  -->
	</form>
</body>
</html>