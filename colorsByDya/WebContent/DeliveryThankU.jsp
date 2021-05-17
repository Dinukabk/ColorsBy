<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Thank You here</title>


<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
<!-- header css -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">


<style>
.myDiv4 {
	background-color: #dddddd;
	position: absolute;
	margin-top: 115px;
	margin-left: 258px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
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

	<div class="myDiv4">
		<p>
			<b><center>Thank You!!</center></b>
		</p>
		We deliver joy during the holidays. We deliver hope to survivors of
		natural disasters. Customers count on <br> our diverse portfolio
		of transportation ecommerce, and business solutions. Our networks
		reach more than <br> 220 countries and territories linking more
		than 99 percent of the worlds GDP. Behind it all are our more <br>
		than 490,000 team members around the world, who are united around the
		Purple Promise I will make every FedEx <br> experience
		outstanding. 047 652 56 32 We believe a diverse society is a stronger
		one. We strive to ensure our<br> company reflects the many
		cultures of our workforce, customers and communities around the world.
		Connecting <br> people with goods services ideas and technologies
		creates opportunities that fuel innovation energize <br>
		businesses and lif ommunities to higher standards of living. At FedEx,
		we believe that a connected world is a<br> better world, and that
		belief guides everything we do. We deliver joy during the holidays. We
		deliver hope to <br> survivors jnsnx of natural disasters.
		Customers count on our diverse portfolio of<br>


		<!--Report buttopn -->

		<br>
		<center>
			<button onclick="myFunction6()">GENARATE A REPORT</button>
		</center>
		<br>

		<script>
		function myFunction6() {
		  location.replace("./DeliverySerchTwo.jsp") <!--It shold go index.jsp-->
		  
		}
	</script>
		<center>
			<button onclick="myFunction2()">FINISH</button>
		</center>
		<br>

		<script>
		function myFunction2() {
		  location.replace("./DeliveryHomaPage.jsp") <!--It shold go index.jsp-->
		  
		}
	</script>

	</div>
</body>
</html>