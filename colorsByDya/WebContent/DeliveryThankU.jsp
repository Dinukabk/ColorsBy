<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Thank You here</title>


	<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
	<link rel="shortcut icon" href="favicon.ico">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/salvattore.css">
	<link rel="stylesheet" href="css/style1.css">
	
	<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
	
	<style>
body  {
  background-image: url("./DeliveryImage/28.jpg");
  background-repeat: no-repeat, repeat;
  background-color: white;
  background-position: center;
  background-size: cover;
}		
#contact-form {
	background-color: rgba(221, 221, 221, 1);
	padding: 10px 20px 30px 20px;
	max-width: 100%;
	float: left;
	left: 56%;
	position: absolute;
	margin-top: 30px;
	margin-left: -260px;
	border-radius: 7px;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
}
#contact-form input, #contact-form select, #contact-form textarea {
	border-radius: 1px;
	
}



#contact-form input:focus, #contact-form select:focus, #contact-form textarea:focus
	{
	background-color: #E5E6E7;
}




#contact-form textarea {
	width: 100%;
	height: 150px;
}

#contact-form button[type="submit"] {
	cursor: pointer;
	width: 100%;
		
}

	</style>
	
</head>
<body>



<h1>Colors By Diyaa</h1>
<div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="About_us.jsp">About Us</a>
   <a href="My_profile.jsp">My Profile</a>
   <a href="Exhibition.jsp">Exhibitions</a>
    <a href="gallery_option.jsp">Gallery options</a>
     <a href="upload_paintings.jsp">Upload Paintings</a>
      <a href="frontpage.jsp">Logout</a>
      <a href="#" class="navbar1"><% HttpSession httpSession=request.getSession();
      								String id = request.getParameter("email");
      								httpSession.setAttribute("login1",id );
      								out.println(""+httpSession.getAttribute("login1"));
      								String a = (String)httpSession.getAttribute("login1");
      
      
      %></a>  
</div>
	
	
	<div class="myDiv4">
		<p><b><center>Thank You!!</center></b></p>
		We deliver joy during the holidays. We deliver hope to survivors of natural disasters. Customers count on <br>
		our diverse portfolio of transportation ecommerce, and business solutions. Our networks reach more than <br>
		220 countries and territories linking more than 99 percent of the worlds GDP. Behind it all are our more <br>
		than 490,000 team members around the world, who are united around the Purple Promise I will make every FedEx <br>
		experience outstanding. 047 652 56 32 We believe a diverse society is a stronger one. We strive to ensure our<br>
		company reflects the many cultures of our workforce, customers and communities around the world. Connecting <br>
		people with goods services ideas and technologies creates opportunities that fuel innovation energize <br>
		businesses and lif ommunities to higher standards of living. At FedEx, we believe that a connected world is a<br>
		better world, and that belief guides everything we do. We deliver joy during the holidays. We deliver hope to <br>
		survivors jnsnx of natural disasters. Customers count on our diverse portfolio of<br>
		<br><center><input type="button" name="submit" value ="FINISH"></center>
	</div>
	
	
</body>
</html>