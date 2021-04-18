<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Redirect to another page if a session doesn't exist -->
<meta charset="ISO-8859-1">
<title>Colors by Diyaa</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/styles.css">
<link rel="stylesheet" href="../css/home.css">
<!-- <link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/stylesPayment.css"> -->
</head>
<body>
	<!-- Navbar -->
	<div class="container" style="height: 132px;">
		<header class="header" class="py-5 mt-5">
			<nav class="navbar navbar-expand-lg fixed-top py-3">
				<div class="container">
					<img alt="logo" src="../pictures/Logo.png" width="100" height="100">
					<button type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"
						class="navbar-toggler navbar-toggler-right">
						<i class="fa fa-bars"></i>
					</button>

					<div id="navbarSupportedContent" class="collapse navbar-collapse">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Home <span
									class="sr-only"></span></a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">About</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							<li class="nav-item"><a href="../index.jsp"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold">PaymentTemp</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<!-- Order Summary -->
	<div class="container p-3 my-2 rounded col-md-4"
		style="background-color: rgba(255, 255, 255, 0.5);">
		<h3>Order Summary</h3>
		<dl class="row">
			<dt class="col-sm-9">Total:</dt>
			<dd class="col-sm-3 text-right">${payTotal }</dd>
		</dl>
	</div>
	<!-- Card -->
	<div class="container p-3 my-3 rounded"
		style="background-color: rgba(255, 255, 255, 0.5);">
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