<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard - Colors by Diyaa</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

	<style type="text/css">
	
		table, th, td {
  			border: 2px solid black;
  			padding: 2px;
  			text-align: center;
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
						<li class="nav-item active">
							<a href="#" class="nav-link text-uppercase font-weight-bold">Home<span class="sr-only"></span></a>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link text-uppercase font-weight-bold">About</a>
						</li>
						<li class="nav-item">
							<a onclick="location.href = 'Servlet_Gallery_All'" class="nav-link text-uppercase font-weight-bold">Gallery</a>
						</li>
						<li class="nav-item">
							<a onclick="location.href = 'SessionFlusher'" class="nav-link text-uppercase font-weight-bold">Log out</a>
						</li>
						<li class="nav-item">
							<a onclick="location.href = 'SpecialReqNavServlet'" class="nav-link text-uppercase font-weight-bold">Contact US</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>


	<!-- For demo purpose -->
	<div class="container">
		<div class="pt-5 text-white">
			<header class="py-5 mt-5">
				<h1 class="display-4">User Dash</h1>
				<div class="container p-3 my-2 rounded  float-left"
					style="background-color: rgba(255, 255, 255, 0.5);">
					<button type="button" class="btn btn-primary"
						onclick="location.href = ''">Edit Profile</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href = 'myCart.jsp'">Shopping Cart</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href = 'requestCusLogin'">View My Requests</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href = 'NegoCusListServlet'">Negotiate Price Requests</button>
				</div>
				<br> <br> <br> <br>
				<p class="lead mb-0">USER DEATILS</p>
				
				<!--  data retreve part start-->
				<table>
				<c:forEach var="cus" items="${cusDeatils}">
				
				<c:set var="id" value="${cus.customer_id}"/>
				<c:set var="fname" value="${cus.full_name}"/>
				<c:set var="username" value="${cus.username}"/>
				<c:set var="Password" value="${cus.password}"/>
				<c:set var="PhoneNo" value="${cus.phone_no}"/>
				<c:set var="address1" value="${cus.add_line_01}"/>
				<c:set var="address2" value="${cus.add_line_02}"/>
				<c:set var="pCode" value="${cus.postal_code}"/>
				<c:set var="Provence" value="${cus.province}"/>
				<c:set var="City" value="${cus.city}"/>
				<c:set var="Country" value="${cus.country}"/>
				
	<tr>
		<td>ID</td>
		<td>fullname</td>
		<td>Username</td>
		<td>Password</td>
		<td>Phone No</td>
		<td>Address line1</td>
		<td>Address line2</td>
		<td>Postal Code</td>
		<td>Provence</td>
		<td>City</td>
		<td>Country</td>
	</tr>
	<tr>
		
		<td>${cus.customer_id}</td>
		<td>${cus.full_name}</td>
		<td>${cus.username}</td>
		<td>${cus.password}</td>
		<td>${cus.phone_no}</td>
		<td>${cus.add_line_01}</td>
		<td>${cus.add_line_02}</td>
		<td>${cus.postal_code}</td>
		<td>${cus.province}</td>
		<td>${cus.city}</td>
		<td>${cus.country}</td>
	</tr>
		
				</c:forEach>
				</table>
				
		<c:url value="UpdateCustomerNew.jsp" var="cusupdate">
		
				<c:param name="id" value="${id}"/>
				<c:param name="fname" value="${fname}"/>
				<c:param name="username" value="${username}"/>
				<c:param name="Password" value="${Password}"/>
				<c:param name="PhoneNo" value="${PhoneNo}"/>
				<c:param name="address1" value="${address1}"/>
				<c:param name="address2" value="${address2}"/>
				<c:param name="pCode" value="${pCode}"/>
				<c:param name="Provence" value="${Provence}"/>
				<c:param name="City" value="${City}"/>
				<c:param name="Country" value="${Country}"/>

	</c:url>
				
				
				<a href="${cusupdate}">
				<input type="button" name= "Update" value="UPDATE DEATILS">
				</a>
				
				
				<c:url value="DeleteCustomerNew.jsp" var="cusdelete">
				
				<c:param name="id" value="${id}"/>
				<c:param name="fname" value="${fname}"/>
				<c:param name="username" value="${username}"/>
				<c:param name="Password" value="${Password}"/>
				<c:param name="PhoneNo" value="${PhoneNo}"/>
				<c:param name="address1" value="${address1}"/>
				<c:param name="address2" value="${address2}"/>
				<c:param name="pCode" value="${pCode}"/>
				<c:param name="Provence" value="${Provence}"/>
				<c:param name="City" value="${City}"/>
				<c:param name="Country" value="${Country}"/>
				
				</c:url>
				
				<a href="${cusdelete}">
				<input type="button" name= "delete" value="Delet Account">
				</a>
				 
				
				
				
			</header>
			<div class="py-5">
				<p class="lead">
					Strong<strong class="font-weight-bold">Test 3</strong> Test 2 <strong
						class="font-weight-bold"> Test 04</strong>Test 05
				</p>
				<p class="lead">Lorem ipsum dolor sit amet</p>

				<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
				<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>

