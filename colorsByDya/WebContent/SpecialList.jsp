<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Special Request list</title>
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$('#search-input').on('keyup',function(){
	var value = $(this).val()
	console.log('Value:',value)
})

</script>

<style>
.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>

	<!-- <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">

	<script charset="utf8" src="assets/js/jquery.dataTables.js"></script> -->

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
								class="nav-link text-uppercase font-weight-bold">${artistUserName}</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<h1>Special Requests</h1><br>
	
	<input type="button" class="btn btn-secondary" name="report" value="Generate Report" onclick="location.href='Request_PDF_Generate.jsp?artistUserID=${artistUserID}'">
	
	<!-- <div class="topnav">
	<div class="search-container">
    <form action="#" method="post">
      <input type="text" id="search-input" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
  </div> -->
	
    <!-- <input type="search" class="" placeholder="" aria-controls="tableRequest"> -->
	
	<table border="1" id="tableRequest">
	
	<tr>
		<th>Request ID</th>
		<th>Name</th>
		<th>Phone Number</th>
		<th>Email Address</th>
		<th>Message</th>
		<th>Photograph</th>
		<th>Address line 01</th>
		<th>Address line 02</th>
		<th>Postal Code</th>
		<th>Province</th>
		<th>City</th>
		<th>Country</th>
		<th>Customer ID</th>
		
		<th></th>
	</tr>
	
	<c:forEach var="req" items="${reqList}">
	
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="name" value="${req.name}"/>
	<c:set var="phone" value="${req.phone}"/>
	<c:set var="email" value="${req.email}"/>
	<c:set var="message" value="${req.message}"/>
	<c:set var="photograph" value="${req.photograph}"/>
	<c:set var="add_line_01" value="${req.add_line_01}"/>
	<c:set var="add_line_02" value="${req.add_line_02}"/>
	<c:set var="postal_code" value="${req.postal_code}"/>
	<c:set var="province" value="${req.province}"/>
	<c:set var="city" value="${req.city}"/>
	<c:set var="country" value="${req.country}"/>
		
	<tr>
		<td>${req.request_id}</td>
		<td>${req.name}</td>
		<td>${req.phone}</td>
		<td>${req.email}</td>
		<td>${req.message}</td>
		<td><img src="images/${req.photograph}" width="100px" height="100px"/></td>
		<td>${req.add_line_01}</td>
		<td>${req.add_line_02}</td>
		<td>${req.postal_code}</td>
		<td>${req.province}</td>
		<td>${req.city}</td>
		<td>${req.country}</td>
		<td>${req.c_customer_id}</td>
		<%-- <td>${req.artist_name}</td> --%>
		
		<td>
		
			<c:url value="acceptSpecialReq.jsp" var="prAccept">
				<c:param name="request_id" value="${request_id}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="phone" value="${phone}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="message" value="${message}"/>
				<c:param name="photograph" value="${photograph}"/>
				<c:param name="add_line_01" value="${add_line_01}"/>
				<c:param name="add_line_02" value="${add_line_02}"/>
				<c:param name="postal_code" value="${postal_code}"/>
				<c:param name="province" value="${province}"/>
				<c:param name="city" value="${city}"/>
				<c:param name="country" value="${country}"/>
			</c:url>
			
			<a href="${prAccept}">
			<input type="button" class="btn btn-secondary" id="acceptSpecialArt" name="accept" value="Accept">
			</a>
			
		</td>
	</tr>	
	
	</c:forEach>
	</table>
	
    <!-- <input type="button" name="report" value="Generate Report" onclick="location.href='PDFrequestServlet'">  -->
	<!-- <a location.href="PDFrequestServlet" download="Request.pdf">Download</a> -->
	<!-- <input type="button" value="test" id="testBtn" onclick="myFunction()"> -->

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



.btn {
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
}

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
<!-- <script>
$(document).ready( function () {
    $('#tableRequest').DataTable();
} );
</script> -->