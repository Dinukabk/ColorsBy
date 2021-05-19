<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/req2.css">
<link type="text/css" rel="stylesheet" href="../css/frontpage.css"/>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Contact us - Colors by Diyaa</title>
</head>
<body>

	<!-- Navbar -->
	<div class="container" style="height: 132px;">
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
								class="nav-link text-uppercase font-weight-bold">Log In</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold">${userName }</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>
	
	 <h1>Contact Us</h1>
   <div class="contact-in">
   
      <div class="contact-map">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.0360738239797!2d79.93878721472035!3d6.886282595023944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae250bedfbfd271%3A0x57dbd16623245574!2sJayawadanagama!5e0!3m2!1sen!2slk!4v1614399768104!5m2!1sen!2slk"
          width="100%" height="auto" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <div class="contact-form"><br>
        <h3>Phone Number</h3>
        <p><i>Mr Deepthi Wijewardana:</i><br><b>071 4727470</b></p>
        <p><i>Mr Lahuru Wijewardana:</i><br><b>071 4276146</b></p><br><br>
        <h3>Address</h3>
        <p>6/98,<br>Lake Road,<br>Wickramasinheapura,<br>Baththaramulla,</p><br><br>
        <div class="wrapper">
   		<a href="https://www.facebook.com/Deepthiwije/">
        <div class="buttonIcon">
           <div class="icon"><i class="fab fa-facebook-f"></i></div>
           <span>Facebook</span>
        </div>
        </a>
        
        <div class="buttonIcon">
           <div class="icon"><i class="fab fa-instagram"></i></div>
           <span>Instagram</span>
        </div>
      </div>
      <!-- form -->
      
      </div>
      
   </div>
   
   <div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">
   If you want to make a Special Request please <a href="index.jsp">LOG/REGISTER</a></div>
   
   <script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
   
</body>
</html>