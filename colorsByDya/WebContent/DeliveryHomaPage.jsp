<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Home here</title>

	<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
		<!-- header css -->
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
							class="nav-link text-uppercase font-weight-bold">Home <span
								class="sr-only"></span></a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">About</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
						<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
							class="nav-link text-uppercase font-weight-bold">Log Out</a></li>
						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
<div class="myDiv1">
	<p><b><center>GET HOME DELIVERY OPTION</center></b></p>
	
	Arrange a one-time shipment pickup,<br>
	and well send a FedEx courier to your<br>
	location.You can schedule a pickup <br>
	through the pickup application or while <br>
	creating a label in FedEx Ship Manager<br>
	
	<br><center><button onclick="location.href = 'DeliveryHomeIns'">HOME DELIVERY</button></center><br>
		
	<script>
		function myFunction1() {
		  location.replace("./DeliveryInsert.jsp")
		  
		}
	</script>	
</div>

<div class="myDiv2">
	
	<p><b><center>PERSONALY PIC IT UP OPTION</center></b></p>
	Do you send shipments on a regular<br>
	schedule If so, you can simplify a<br>
	your routine and plan ahead for in <br>
	recurring delivery needs with pickup <br>
	regularly scheduled pickups pickup<br>

	<br><center><button onclick="myFunction2()">CONTACT THE ARTIST</button></center><br>
		
	<script>
		function myFunction2() {
		  location.replace("./DeliveryPersonalyPicIt.jsp")
		  
		}
	</script>
	
</div>
</body>
</html>