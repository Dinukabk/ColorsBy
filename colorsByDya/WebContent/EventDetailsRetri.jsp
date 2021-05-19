<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get event details</title>

</style>

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
  	
  	
  	  	
	<style type ="text/css">
		
	  *{
		margin:0;
		padding:0;
		}
		
		.topic{
			width:800px;
			background-color:rgb(0,0,0,6);
			margin:auto;
			color:#FFFFFF;
			padding:200px 0px 10px 0px;
			text-align:center;
			border-radius:15px 15px 0px 0px:;
			font-family: Roboto;
		}
		
		
		
		.main{
		
			/* background-color:; */
			width:800px;
			margin:auto;
			border-radius: 1px;
  			background-color: #557A95;
  			padding: 20px;
  			opacity : 0.7;
		}
		
		form{
			padding:10px;
		}
		
		h4{
			color : white;
			font-weight : 700;
		}
		
		
		input {
  			background: #fff;
  			color: #525865;
  			border: 1.2px solid #d1d1d1;							
  			border-radius: 3px;
 			font-family: Roboto;
  			line-height: 1.5;
  			width: 350px;
  			height: 40px;  			
		}
		
		.inname{
			padding-left : 220px;
			padding-bottom : 20px;
			font-size:16px;
		}
		
		.indate{
			padding-left : 220px;
			padding-bottom : 20px;
			font-size:16px;
		}
		
		
		.insta{
			padding-left : 220px;
			padding-bottom : 20px;
			font-size:16px;
		}
		
		.des{
			padding-left : 220px;
			padding-bottom : 20px;
			font-size:16px;
		}
		
		.inad{
			padding-left : 220px;
			padding-bottom : 20px;
			font-size:16px;
		}
		
		.submit{
			padding-left : 220px;
			padding-bottom : 20px;
			padding-top:25px;
			font-size:16px;
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
	
	
	<div class="topic">
	<h1>RETRIEVE EVENT</h1>
	</div>

	<div class="main">
	<form action="retrieveEvent" method="post">
	
	
		<div class="inname">
		<h4>Event name</h4>		 	 <input type = "text" name="EventName" placeholder = "Enter event name"><br>
		</div>
		
		<div class="inname">
		<h4>AdminID</h4>	 		 <input type = "text" name="AdminID" placeholder = "Enter admin ID"><br>
		</div>
		
		<div class="submit">
		<input type="submit" name="submit" value="Admin event login">
		</div>
	
	
	</form>

	</div>
</body>
</html>