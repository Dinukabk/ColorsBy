<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Home here</title>

<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
	<!-- header css -->
	<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
	<link rel="stylesheet" href="css/style1.css"> 
	
	
	
	
	
	
	<style>
	
body  {
  background-image: url("./DeliveryImage/24.jpg");
  background-repeat: no-repeat, repeat;
  background-color: white;
  background-position: left;
  
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

input[type=text] {
  width: 100%;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
}

input[type=text]:focus {
  width: 100%;
}

input[type=submit] {
  background-color: #333333;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
  float: right;
    
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
      <a href="#" class="navbar1">
       <% HttpSession httpSession=request.getSession();
      								String id = request.getParameter("email");
      								httpSession.setAttribute("login1",id );
      								out.println(""+httpSession.getAttribute("login1"));
      								String a = (String)httpSession.getAttribute("login1");
      %></a> 
      
      

</div>


	
<div class="myDiv1">
	<p><b><center>GET HOME DELIVERY OPTION</center></b></p>
	
	Arrange a one-time shipment pickup,<br>
	and well send a FedEx courier to your<br>
	location.You can schedule a pickup <br>
	through the pickup application or while <br>
	creating a label in FedEx Ship Manager<br>
	
	
	
	<br><center><input type="button" name="submit" value ="HOME DELIVERY"></center><br>
</div>

<div class="myDiv2">
	
	<p><b><center>PERSONALY PIC IT UP OPTION</center></b></p>
	Do you send shipments on a regular<br>
	schedule If so, you can simplify<br>
	your routine and plan ahead for <br>
	recurring delivery needs with <br>
	regularly scheduled pickups<br>
	
	<br><center><input type="button" name="submit" value ="PERSONALY PIC IT UP"></center><br>
</div>

</body>
</html>