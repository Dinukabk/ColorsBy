<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Customer</title>
<link type="text/css" rel="stylesheet" href="css/frontpage.css" />
<link type="text/css" rel="stylesheet" href="css/frontpage.css" />
<style>
/* General Styles */
body {
	background:
		url('https://static01.nyt.com/images/2013/11/14/nyregion/AUCTION1/AUCTION1-master1050.jpg')
		no-repeat center center fixed;
	background-size: cover;
}
/*html{
   background:url(http://phutora.com/img/friends3.jpg) no-repeat;
   background-size: cover;
   height:100%;
   background-color: #000;
} */
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-font-smoothing: antialiased;
	-moz-font-smoothing: antialiased;
	-o-font-smoothing: antialiased;
	font-smoothing: antialiased;
	text-rendering: optimizeLegibility;
}

body {
	color: #C0C0C0;
	font-family: Arial, san-serif;
}

/* Contact Form Styles */
h1 {
	margin: 10px 0 0 0;
}

h4 {
	margin: 0 0 20px 0;
}

#contact-form {
	background-color: rgba(72, 72, 72, 0.7);
	padding: 10px 20px 30px 20px;
	max-width: 100%;
	float: left;
	left: 50%;
	position: absolute;
	margin-top: 30px;
	margin-left: -260px;
	border-radius: 7px;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
}

#contact-form input, #contact-form select, #contact-form textarea,
	#contact-form label {
	font-size: 15px;
	margin-bottom: 2px;
	font-family: Arial, san-serif;
}

#contact-form input, #contact-form select, #contact-form textarea {
	width: 100%;
	background: #fff;
	border: 0;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	margin-bottom: 25px;
	padding: 5px;
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
	border: none;
	background: #991D57;
	background-image: linear-gradient(bottom, #8C1C50 0%, #991D57 52%);
	background-image: -moz-linear-gradient(bottom, #8C1C50 0%, #991D57 52%);
	background-image: -webkit-linear-gradient(bottom, #8C1C50 0%, #991D57 52%);
	color: #FFF;
	margin: 0 0 5px;
	padding: 10px;
	border-radius: 5px;
}

#contact-form button[type="submit"]:hover {
	background-image: linear-gradient(bottom, #9C215A 0%, #A82767 52%);
	background-image: -moz-linear-gradient(bottom, #9C215A 0%, #A82767 52%);
	background-image: -webkit-linear-gradient(bottom, #9C215A 0%, #A82767 52%);
	-webkit-transition: background 0.3s ease-in-out;
	-moz-transition: background 0.3s ease-in-out;
	transition: background-color 0.3s ease-in-out;
}

#contact-form button[type="submit"]:active {
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

input:required, textarea:required {
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	-o-box-shadow: none;
}

#contact-form .required {
	font-weight: bold;
	color: #E5E6E7;
}

/* Hide success/failure message
   (especially since the php is missing) */
#failure, #success {
	color: #6EA070;
	display: none;
}

/* Make form look nice on smaller screens */
@media only screen and (max-width: 580px) {
	#contact-form {
		left: 3%;
		margin-right: 3%;
		width: 88%;
		margin-left: 0;
		padding-left: 3%;
		padding-right: 3%;
	}
}
</style>
</head>
<h1>Colors By Diyaa</h1>
<body>
	<div class="navbar">
		<a href="frontpage.jsp">Home</a> <a href="#news">About us</a> <a
			href="#home">Change Password</a> <a href="frontpage.jsp">Logout</a>
	</div>

	<div id="contact-form">
		<div>
			<h1>Delete User Account</h1>
		</div>
		
		<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String username = request.getParameter("username");
		String Password  = request.getParameter("Password");
		String PhoneNo = request.getParameter("PhoneNo");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String pCode = request.getParameter("pCode");
		String Provence = request.getParameter("Provence");
		String City = request.getParameter("City");
		String Country = request.getParameter("Country");
	
		
		%>
		
		<form action="DeleteCustomerServlet" method="post">
		<div>
				<label for="ID"> <span class="required">Customer ID</span>
					<input type="text" id="" name="cusid" value="<%= id %>" readonly
					placeholder="ID"  autofocus="autofocus"
					 />
				</label>
			</div>
			<div>
				<label for="ID"> <span class="required">Full Name</span>
					<input type="text" id="" name="fullname" value="<%= fname %>" pattern=""
					placeholder="Full Name"  autofocus="autofocus" readonly
					 />
				</label>
			</div>
			<div>
				<label for="Cost"> <span class="required">User Name
						 </span> <input type="text" id="" name="username" value="<%= username %>"
					placeholder="User Name"  readonly />
				</label>
			</div>
				
			<div>
				<button name="submit" type="submit" id="submit">CONFIRM AND DELETE ACCOUNT</button>
			</div>
		</form>

	</div>
	<script src="js/index.js"></script>
</body>
</html>