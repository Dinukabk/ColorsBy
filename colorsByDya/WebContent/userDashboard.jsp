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
			
			<c:forEach var="cus" items="${cusDeatils}">
			
				<h1 class="display-5">Welcome ${cus.full_name}</h1>
				
				</c:forEach>
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
				<p class="lead mb-0">Your Details</p>
				
				<!--  data retreve part start-->
				<table class="TableStyle">
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
		<th>ID</th>
		<th>fullname</th>
		<th>Username</th>
		<th>Phone No</th>
		<th>Address line1</th>
		<th>Address line2</th>
		<th>Postal Code</th>
		<th>Provence</th>
		<th>City</th>
		<th>Country</th>
	</tr>
	<tr>
		
		<td>${cus.customer_id}</td>
		<td>${cus.full_name}</td>
		<td>${cus.username}</td>
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
				<div class="conta"><input type="button" name= "Update" value="UPDATE DEATILS" class="btncss"></div>
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
				<div class="conta"><input type="button" name= "delete" value="DELETE ACCOUNT" class="btncss"></div>
				</a>
				 
				
				
				
			</header>
			<div class="py-5">
				<p class="lead">
					<strong class="font-weight">Colors by Diya is an online art gallery providing a platform for artists to display their artwork and for customers interested in quality artworks to buy them at a fair price.</strong> 
					<strong class="font-weight-bold"> </strong>
				</p>
				<h5>Team Colors by Diyaa</h5>

				<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
				<script type="text/javascript" src="./js/script.js"></script>
				
				<style>
				.TableStyle {
					border-collapse: collapse;
					margin: 30px 0;
					font-size: 0.9em;
					min-width: 400px;
					
					}
					
				.TableStyle tr th{
					background-color: #92DFF3 ;
					color: black;
					text-align: left;
				}
				.TableStyle tr th,
				.TableStyle tr td{
					padding: 12px 15px;
					border-bottom: 1px solid #010203;
				}
				.conta{
				margin: 0;
				padding: 0;
				hight: 20px;
				width: 30px;
				
				}
				
				.btncss{
					border: 1px solid #3498db;
					background: none;	
					padding: 10px 20px;
					font-size: 15px;
					cursor: pointer;
					margin: 10px;
					color: #010203;
					TRANSITION: 0.5s;
					overflow: hidden; 
				}
				.btncss:hover{
					color: #fff;
				}
				.btncss:before{
					content:"";
					position: absolute;
					left: 0;
					width: 100%;
					height: 100%;
					background: #010203;
					z-index: -1;
				}
				

				
				
				</style>
</body>
</html>

