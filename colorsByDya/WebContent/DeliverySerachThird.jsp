<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>


<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
<!-- header css -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<style>
.myDiv4Search {
	background-color: #dddddd;
	position: absolute;
	margin-top: 115px;
	margin-left: 258px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
}

.myDiv4Searchbar {
	width: 100px;
	cursor: pointer;
}

input[type=text] {
	border: none;
	border-bottom: 2px solid red;
	width: 750px;
	cursor: pointer;
}
</style>
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
							class="nav-link text-uppercase font-weight-bold">Home <span
								class="sr-only"></span></a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">About</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="myDiv4Search">
		<form method="post" action="DeliverySerchThird">
			<dev class="myDiv4Searchbar"> <input type="text" id="search"
				name="search" placeholder="Seache Hera"> </dev>
			<input type="submit" value="Serach">
		</form>
	</div>

</body>
</html>