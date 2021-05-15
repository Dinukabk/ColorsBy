<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert events</title>

<!-- <link rel="stylesheet" href="css/frontpage.css">  -->
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="styles_Gallery.css">
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
  	
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script>
  		$( function() {
    		$( "#datepicker" ).datepicker();
  		} );
  	</script>

</head>
<body>

	<!-- Navbar 
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
							
						<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							
						<li class="nav-item"><a onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>

						<li class="nav-item"><a onclick="location.href = 'ArtistLoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in as an Artist</a></li>

						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
	-->
	
	
	 <form action="insertEvent" method="post">
	 
	 	<input type="text" name="name" placeholder="Enter event name" ><br>
	 	
	 	<input type="date" name="date" id="datepicker" placeholder="Enter event date" ><br>
	 	
	 	<input type="number" name="status" placeholder="Enter event status" ><br>
	 	
	 	<input type="text" name="description" placeholder="Enter description" ><br>
	 	
	 	<input type="number" name="adminID" placeholder="Enter admin ID" ><br>
	 	
	 	
	 	
	 	
	 	<input type="submit" name="submitEvent" value="Insert Event"><br>
	 	
	 </form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	



</body>
</html>