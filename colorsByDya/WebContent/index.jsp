
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>

</head>

<body>
<!-- Navbar -->
<header class="header" class="py-5 mt-5">
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
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
					<li class="nav-item"><a href="./login_01.jsp"
						class="nav-link text-uppercase font-weight-bold">Log in</a></li>
					<li class="nav-item"><a href="#"
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
			<h1 class="display-4">This is test project</h1>
			<p class="lead mb-0">Get ready gys this is the home page heshan
				make this</p>
			<p class="lead mb-0">
				LEADER Miyuru
				<!-- <a href="https://bootstrapious.com" class="text-white">
                      <u>Bootstrapious</u></a> -->
			</p>
		</header>
		<div class="py-5">
			<p class="lead">
				A- <strong class="font-weight-bold">We need your ideas.we
					need a fixed colour </strong> if you have a any idea leave a comment in
				discode group <strong class="font-weight-bold">recusandae </strong>placeat!
				Voluptatum voluptate, ex modi illum quas nam distinctio.
			</p>
			<p class="lead">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit
				esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
				cupidatat non proident, sunt in culpa qui officia deserunt mollit
				anim id est laborum.</p>
		</div>
	</div>
</div>

</body>
</html>


======= --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home - Colors by Diyaa</title>

<!-- <link rel="stylesheet" href="css/frontpage.css">  -->
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="styles_Gallery.css">
	<style>
	#tt {text-align: center;}
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
							
							<li class="nav-item"><a onclick="location.href = 'add_customer.jsp'"
							class="nav-link text-uppercase font-weight-bold">Sign up</a></li>

							<li class="nav-item"><a onclick="location.href = 'ArtistLoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in as an Artist</a></li>

						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>


	<!-- For demo purpose -->
	<div class="container">
		<div class="pt-5 text-white">
			<div class="py-5 mt-5">
				<h1 class="display-4" id="tt" st>Colors by Diyaa</h1>
				
			
			<style>
* {box-sizing:border-box}
body {
	font-family: Verdana,sans-serif;
	/* //background-image:url("Images/art_gallery_wall_background_wallpaper.jpg"); */
}
.mySlides {
	display:none;
	/* height: 1vw !important;  */
	}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  max-height: 5000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  height: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>


<!-- <h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>
 -->
<div class="slideshow-container">

<div class="mySlides fade">
<!--   <div class="numbertext">1 / 3</div>
 -->  <img src="https://www.thechannels.org/wp-content/uploads/2016/09/MTWTsuno3-edit-1.jpg" style="width:100%;height:30vw">
  
</div>

<div class="mySlides fade">
  <!-- <div class="numbertext">2 / 3</div> -->
  <img src="https://1.bp.blogspot.com/-r3YNBP3Cohk/Wa0p9Wjy9YI/AAAAAAAAkeM/OssgRUkyRv4J0duhN72SgM3q9NnZXWInQCLcBGAs/s1600/corey_barksdale_art.jpg" style="width:100% ;height:30vw">
  
</div>

<div class="mySlides fade">
  <!-- <div class="numbertext">3 / 3</div> -->
  <img src="images/1.jpg" style="width:100%;height:30vw">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
			
			<!-- //test slid show end -->
			<div class="py-5">
				<p class="lead"><strong class="font-weight-bold">Who are we</strong><br>Mr. Deepthi Wijewardena is a retired employee of Sri Lanka Telecom (SLT). A year ago, after his retirement, he restarted his hobby of painting and successfully held an exhibition. He plans to display his artworks and give a fair price for his creativity via an e-commerce system targeting both local and international buyers.<strong class="font-weight-bold"></strong></p>
				<p class="lead"></p>
			</div>
			
		</div>
	</div>

	
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>
