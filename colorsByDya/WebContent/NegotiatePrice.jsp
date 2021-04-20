<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Styles/NegotiatePrice.css">
<link rel="stylesheet" href="css/req2.css">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<title>Negotiate Price - Colors by Diyaa</title>

<script src="js/Request.js"></script>

</head>
<body>
  <h1>Negotiate the Price of the Painting</h1>
  
  <div class="contact-in">
  		<h3>We recommend you to contact the Artist before entering the Negotiate Price. Otherwise request may reject</h3>
  </div><br><br>
  
  <div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">
  <center>
  <div>
  <!-- painting retrieve -->
  <img src="images/deepthi_01.jpg" alt="Negotiate paint" width="300px" hight="300px">
  </div></center><br><br>
  
  <div>
  	<form name="negoForm" action="negoInsert" method="post" onsubmit="return validateForm()">
  		<label>Please enter the Price</label><br>
  		<input type="number" placeholder="Price in LKR" name="message">
  		
  		<input type="submit" name="Submit" value="Send">
  	</form>
  </div>
  <br>
  <input type="button" name="cartBtn" value="Add to cart" disabled></div>
</body>
</html>