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

.myDiv4SearchImage{
	position: absolute;
	margin-top: 419px;
	margin-left: 0x;
}

.myDiv4SearchPara{
	background-color: #dddddd;
	position: absolute;
	margin-top: 229px;
	margin-left: 258px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
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
				name="search" placeholder="Searche Here"> </dev>
			<input type="submit" value="Search">
		</form>
	</div>
	
	<dev class="myDiv4SearchPara">
		Arrange a one-time shipment pickup,<br>
	and well send a FedEx courier to your<br>
	location.You can schedule a pickup <br>
	through the pickup application or while <br>
	creating a label in FedEx Ship Manager<br>
	</dev>
	
	<dev class="myDiv4SearchImage">
		<img src="./DelivryImages/1c.jpg" width="1340" height="220" alt="img">
	</dev>
	
	

</body>
</html>
