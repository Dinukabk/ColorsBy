<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/styles.css">
<link rel="stylesheet" href="../css/stylesPayment.css">
<meta charset="ISO-8859-1">
<title>Colors by Diyaa</title>
</head>
<body>
	<div class="p-3" style="background-color: rgba(255, 255, 255, 0.5);">
		<form action="#" method="post">
			<img alt="visa/master" src="../pictures/VisaAndMaster.png" width="60"
				height="36">
			<p>Card Number:</p>
			<input type="text" placeholder="Card Number">
			<p>Name on Card:</p>
			<input type="text" placeholder="Name on Card">
			<p>Expiration Date:</p>
			<input type="text" placeholder="Expiration Date">
			<p>CVV:</p>
			<input type="text" placeholder="CVV"> <br> <input
				type="checkbox" id="saveCard" name="saveCard"
				value="Save this card for future uses"> <label
				for="saveCard">Save this card for future uses</label><br>
			<button type="submit" class="btn btn-primary">Pay now</button>
		</form>
	</div>
</body>
</html>