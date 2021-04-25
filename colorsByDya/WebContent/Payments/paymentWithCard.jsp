<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment with card - Colors by Diyaa</title>
	<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="./css/bootstrap.css" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="./css/bootstrap.min.css" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="./css/styles.css" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="./css/home.css" rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Navbar -->
	<div class="container text-dark" style="height: 132px;">
		<header class="header" class="py-5 mt-5">
			<nav class="navbar navbar-expand-lg fixed-top py-3">
				<div class="container">
					<img alt="logo" src="./pictures/Logo.png" width="100" height="100">
					<button type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"
						class="navbar-toggler navbar-toggler-right">
						<i class="fa fa-bars"></i>
					</button>

					<div id="navbarSupportedContent" class="collapse navbar-collapse">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active">
								<a href="#" class="nav-link text-uppercase font-weight-bold">Home <span class="sr-only"></span></a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link text-uppercase font-weight-bold">About</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link text-uppercase font-weight-bold">Gallery</a>
							</li>
							<li class="nav-item">
								<a onclick="location.href = 'SessionFlusher'" class="nav-link text-uppercase font-weight-bold">Log out</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link text-uppercase font-weight-bold">${userName }</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<!-- Order Summary -->
	<div class="container p-3 my-2 rounded col-md-4 form" style="
			background-color: rgba(255, 255, 255, 0.9); 
			box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
		">
		<p class="h3">Order Summary</p>
		<dl class="row">
			<dt class="col-sm-9">Total:</dt>
			<dd class="col-sm-3 text-right">${payTotal }</dd>
			<dt class="col-sm-9">Delivery Method:</dt>
			<dd class="col-sm-3 text-right">NULL</dd>
		</dl>
		<button type="button" class="btn btn-primary" onclick="location.href = ''">Chose Delivery Method</button>
	</div>
	
	<!-- Card -->
	<div class="container p-3 my-3 rounded col-md-4" style="
			background-color: rgba(255, 255, 255, 0.9); 
			box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
		">
		<form action="#" method="post" class="form">
			<img alt="visa/master" src="./pictures/VisaAndMaster.png" width="60" height="36">
			<p>Card Number:</p> <input type="text" placeholder="Card Number" value="${cardNo }" disabled>
			<p>Name on Card:</p> <input type="text" placeholder="Name on Card" value="${nameOnCard }" disabled>
			<p>Expiration Date:</p> <input type="text" placeholder="Expiration Date" value="${expDate }" disabled>
			<p>CVV:</p> <input type="text" placeholder="CVV" value="${cvv }" disabled>
			<br>
			<button type="submit" class="btn btn-primary">Pay now</button>
		</form>
	</div>

	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>