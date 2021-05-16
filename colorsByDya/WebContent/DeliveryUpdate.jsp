<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="art_Gallery.DeliveryCustomer"%>
<%@page import="art_Gallery.DeliveryDBUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Update here</title>


	<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
		<!-- header css -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
		
	
	
	<style>
		.update3 {
		background-color: #dddddd;
		position: absolute;
		margin-top: 132px;
		margin-left: 385px;
		
		padding: 10px 20px 30px 20px;
	 	border-radius: 7px;
		
	}
	.update4{
		position: absolute;
		margin-top: 286px;
		margin-left: 755px;
		 border: none;
		 cursor: pointer;
	}

	</style>

<script>
	   function InsertValidation() {
		   
		  if( document.getElementById('Fname').value == ""){
			  alert("Please Enter The Name Which You Want to Update");
			  return false;
		  }
		  if( document.getElementById('addLineOne').value == ""){
			  alert("Please Enter AddressLine 01");
			  return false;
		  }
		  if( document.getElementById('addLineTwo').value == ""){
			  alert("Please Enter AddressLine 02");
			  return false;
		  }
		  if( document.getElementById('PostalCo').value == ""){
			  alert("Please Enter Postal code");
			  return false;
		  }
		  if( document.getElementById('DeliveryPro').value == ""){
			  alert("Please Enter Province");
			  return false;
		  }
		  if( document.getElementById('eliveryCityy').value == ""){
			  alert("Please Enter City");
			  return false;
		  }
		  if( document.getElementById('DelivertCountry').value == ""){
			  alert("Please Enter Country");
			  return false;
		  }
	}
	
	</script>
	
</head>
<body>

<%DeliveryCustomer d = (DeliveryCustomer)request.getAttribute("ObDeli");%>
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
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
						<li class="nav-item"><a onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>
						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
	
	<div class="update3">
	<h1>Please Update The Details</h1>
	<table>
	<form action="<%=request.getContextPath()%>/DeliveryUpdateServlet" method ="post" onsubmit="return InsertValidation()">
	
	<tr>
		<td>Full Name</td> 
		<td><input type="text" name="Fname" id="Fname" value="<%=d.getFull_name()%>" ></td>
	</tr>
		
	<tr>	
		<td>Address Line 01 </td>
		<td><input type="text" name="addLineOne" value="<%=d.getAdd_line_01()%>"  required></td>
	</tr>
		
	<tr>	
		<td>Address Line 02 </td>
		<td><input type="text" name="addLineTwo" value="<%=d.getAdd_line_02()%>"  required></td>
	</tr>
		
		
	<tr>
		<td>Postal Code </td>
		<td><input type="text" name="PostalCo" value="<%=d.getPostal_code()%>"  required></td>
	</tr>
	
	<tr>	
		<td>Province </td>
		<td><input type="text" name="DeliveryPro" value="<%=d.getProvince()%>"  required></td>
	</tr>
	
	<tr>
		<td>City</td>  
		<td><input type="text" name="eliveryCityy" value="<%=d.getCity()%>"  required></td>
	</tr>

	<tr>
		<td>Country </td> 
		<td><input type="text" name="DelivertCountry" value="<%=d.getCountry()%>"   required></td>
	</tr>
	<!--hidden values  -->
	<input type="hidden" name ="d_id" value="<%=d.getDelivery_id()%>">
	<input type="hidden" name ="p_id" value="<%=d.getP_payment_id()%>">
		
		
	</table><br>
	<input type="submit" name="submit" value="Update Data">
	</form>
	</div>
	

</body>
</html>