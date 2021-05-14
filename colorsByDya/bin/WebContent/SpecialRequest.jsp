<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/req2.css">
<link type="text/css" rel="stylesheet" href="../css/frontpage.css"/>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Contact us - Colors by Diyaa</title>

<script src="js/Request.js"></script>
<script src="js/request22.js"></script>
<script src="js/Gallery_JScript.js"></script>

<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>

<link rel="stylesheet" href="css/common.css">

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
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold">${userName }</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div><!-- end header -->
	
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
   
   <div>
      <form name="requestForm" action="insertRequest" method="post" class="specialRForm" onsubmit="return validateForm()" >
      
      <fieldset>
      <legend style="padding:20px 0; font-size:30px;">We like to have a Special Request from you:</legend>
      
            <label>Full Name</label><br>
            <input type="text" placeholder="Enter Full Name" name="name" class="SRInput" class="form__input"><br><br>
            <label>Phone Number</label><br>
            <input type="number" placeholder="Enter Phone Number" name="phone" class="SRInput" class="form__input"><br><br>
            <label>Email Address</label><br>
            <input type="email" placeholder="Enter Email Address" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="SRInput" class="form__input"><br><br>
            <label>Message</label><br>
            <textarea placeholder="Enter a message" name="message" class="SRInput" class="form__input"></textarea><br><br>
            <label>Upload Your photograph that you want to be drawn</label><br>
            <input type="file" onchange="readURL(this);" name="photograph" class="form__input"><br>
            <img id="imageGallery" src="#" alt="Selected Image" /> <br><br>
            <!-- <input type="text" placeholder="photograph" name="photograph"> -->
            <label>Address</label><br>
            <input type="text" placeholder="Line 01" name="add_line_01">
            <input type="text" placeholder="Line 02" name="add_line_02"><br>
            <input type="number" placeholder="Postal Code" name="postal_code">   
            <input type="text" placeholder="Province" name="province"><br>
            <input type="text" placeholder="City" name="city">
            <input type="text" placeholder="Country" name="country"><br><br>
            <label>Choose the Artist</label>
            	<!-- <select>
            		<option>Deepthi Wijewardana</option>
            	</select><br><br> -->
            	<%@page import="java.sql.DriverManager"%>
				<%@page import="java.sql.ResultSet"%>
				<%@page import="java.sql.Statement"%>
				<%@page import="java.sql.Connection"%>
            	<select>
            		<%
            			try{
            				Class.forName("com.mysql.jdbc.Driver");
            				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/colorbydiyaa","root","root");
            				Statement st = con.createStatement();
            				String query = "select name from artist";
            				//get table data
            				ResultSet rs = st.executeQuery(query);
            				//get artist name one by one
            				while(rs.next()){
            					%>
            					<option><%=rs.getString("name") %></option>
            					<%
            				}
            				
            			}catch (Exception e){
            				
            			}
            		%>
            	</select><br><br>
            
            
            
            <input class = "btn btn1" type="reset" name="Reset" value="Reset">
            <input class = "btn btn2" type="submit" name="submit" value="Send ">
            
            </fieldset>
         </form>
   
   
   </div>
	
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
	
<style>
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

/* .user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}
 */
.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
	border-radius: 6px;
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}



/* .btn {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: black;
    background: $color-primary;
    transition: 0.3s;
    
    &:hover {
        background: darken($color-primary, 5%);
    }
} */

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}

@media (min-width: 576px)
.container {
    max-width: 540px;
}
</style>
</body>
</html>