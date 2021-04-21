<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard - Colors by Diyaa</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<!-- Navbar -->
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
						<li class="nav-item active"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Home<span
								class="sr-only"></span></a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">About</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'SessionFlusher'"
							class="nav-link text-uppercase font-weight-bold">Log out</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>


	<!-- For demo purpose -->
	<div class="container">
		<div class="pt-5 text-white">
			<header class="py-5 mt-5">
				<h1 class="display-4">User Dash</h1>
				<div class="container p-3 my-2 rounded  float-left"
					style="background-color: rgba(255, 255, 255, 0.5);">
					<button type="button" class="btn btn-primary"
						onclick="location.href = 'PaymentControllerServlet'">Temp
						Payment Button</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href = ''">Edit Profile</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href = ''">Temp Shopping Cart</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href = 'requestCusLogin'">View My
						Requests</button>
				</div>
				<br>
				<br>
				<br>
				<br>
				<p class="lead mb-0">Test 03</p>
			</header>
			<div class="py-5">
				<p class="lead">
					Strong<strong class="font-weight-bold">Test 3</strong> Test 2 <strong
						class="font-weight-bold"> Test 04</strong>Test 05
				</p>
				<p class="lead">Lorem ipsum dolor sit amet</p>

				<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
				<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>

