<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Payment Card - Colors by Diyaa</title>
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
<!-- End of NavBar -->

<!-- Card -->
<div class="container p-3 my-3 rounded col-md-4" style="
		background-color: rgba(255, 255, 255, 0.7); 
		box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
	"> <!-- background-image: url("./pictures/paper.gif"); -->
	<form action="PaymentEditCardServlet" method="get" class="form">
		<table class="table table-borderless form-check">
			<tr>
				<td>
					<p class="h5 text-dark">Confirm Your Card Details</p>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<img alt="visa/master" src="./pictures/VisaAndMaster.png" width="60" height="36">
				</td>
			</tr>
			<tr>
				<td>
					<p class="text-dark h6 text-right">Card Number:</p>
				</td>
				<td>
					<input type="number" name="cardNo" class="border border-dark bg-light rounded pl-1 col-sm" placeholder="Card Number" value="${cardNo }">
				</td>
			</tr>
			<tr>
				<td>
					<p class="text-dark h6 text-right">Name on Card:</p>
				</td>
				<td>
					<input type="text" name="nameOnCard" class="border border-dark bg-light rounded pl-1 col-sm" placeholder="Name on Card" value="${nameOnCard }">
				</td>
			</tr>
			<tr>
				<td>
					<p class="text-dark h6 text-right">Expiration Date:</p>
				</td>
				<td>
					<input type="date" name="expDate" class="border border-dark bg-light rounded pl-1 col-sm" placeholder="Expiration Date" value="${expDate }">
				</td>
			</tr>	
			<tr>
				<td>
					<p class="text-dark h6 text-right">CVV:</p>
				</td>
				<td>
					<input type="number" name="cvv" class="border border-dark bg-light rounded pl-1 col-sm" placeholder="CVV" value="${cvv }">
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<button type="submit" class="btn btn-primary border border-primary mb-2">Save</button>
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<!-- <button type="" class="btn btn-light border border-dark">Edit/ Change Details</button> -->
				</td>
			</tr>			
		</table>
	</form>
</div>

<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>