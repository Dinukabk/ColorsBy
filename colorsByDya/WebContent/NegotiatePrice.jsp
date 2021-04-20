<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Styles/NegotiatePrice.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>Negotiate the Price of the Painting</h1>
  
  <div>
  		<h3>We recommend you to contact the Artist before entering the Negotiate Price. Otherwise request may reject</h3>
  </div>
  
  <div>
  <!-- painting retrieve -->
  </div>
  
  <div>
  	<form action="negoInsert" method="post">
  		<label>Please enter the Price</label><br>
  		<input type="text" placeholder="Price in LKR" name="message">
  		<input type="submit" name="Submit" value="Send">
  	</form>
  </div>
  
  <input type="button" name="cartBtn" value="Add to cart" disabled>
</body>
</html>