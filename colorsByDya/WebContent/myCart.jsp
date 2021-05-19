<%@page import="color.service.*"%>
<%@page import="color.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart - Colors by Diyaa</title>
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="assets/js/core/jquery.3.2.1.min.js"></script>

	<link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">

	<script charset="utf8" src="assets/js/jquery.dataTables.js"></script>
	
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/croppie.js"></script>
    <link rel="stylesheet" href="assets/css/croppie.css" />

    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
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
							<li class="nav-item active"><a href="userDashboard.jsp"
								class="nav-link text-uppercase font-weight-bold">Home <span
									class="sr-only"></span></a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">About</a></li>
							<li class="nav-item"><a href="Servlet_Gallery_All"
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
	</div>

	<table id="table1">
		            <thead>
		            <tr>
		                <th class="tableTh">Image</th>
		                <th class="tableTh">Paint Title</th>
		                <th class="tableTh">Quantity</th>
		                <th class="tableTh">Price (Rs.)</th>
		                <th class="tableTh">Artist Name</th>
		                <th class="tableTh">Action</th>
		            </tr>
		            </thead>
		            <tbody>
		            <%
		            	CartService list = new CartService();
						ArrayList<Cart> arrayList = list.getCart((String)session.getAttribute("userID").toString());
						
						for (Cart cart : arrayList) {
							
							
					%>
		            <tr>
						<td class="tableTh"><img src="images/<%=cart.getImage() %>" width='140' class='img-thumbnail' /></td>
						<td class="tableTh"><%=cart.getName() %></td>
						<td class="tableTh"><%=cart.getQuantity() %></td>
						<td class="tableTh"><%=cart.getPrice() %></td>
						<td class="tableTh"><%=cart.getArtist() %></td>
						<td class="tableTh">
						<form method="post" action="editCartServlet" >
							<input type="number" class="form-control" style="width:30%" name="quantity" id="quantity" min="1" max="5" value="<%=cart.getQuantity() %>" required>
							<input type="hidden" name="id" id="id" value="<%=cart.getId() %>" />
	                        <button type="submit" name="edit" id="<%=cart.getId() %>" class="edit btn btn-primary btn-sm">Edit</button>
						</form>
						<form method="post" action="deleteCartServlet" >
							<input type="hidden" name="id" id="id" value="<%=cart.getId() %>" />
	                        <button type="submit" name="delete" id="<%=cart.getId() %>" class="delete btn btn-danger btn-sm">Delete</button></td>
						</form>
					  </tr>
					<%
						}
					%>
		        </table>

	<a href="createPdf" class="edit btn btn-primary btn-sm">Create Report</a>
	<a onclick="location.href = 'PaymentControllerServlet'" class="edit btn btn-primary btn-sm">Place Order</a>
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
<script>
$(document).ready( function () {
    $('#table1').DataTable();
} );
</script>