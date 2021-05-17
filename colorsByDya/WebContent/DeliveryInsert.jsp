<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Insert here</title>

	<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
	<!-- header css -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	
	<script>
	   function InsertValidation() {
		   
		  if( document.getElementById('Fname').value == ""){
			  alert("Please Enter Full Name Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('addLineOne').value == ""){
			  alert("Please Enter AddressLine 01 Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('addLineTwo').value == ""){
			  alert("Please Enter AddressLine 02 Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('PostalCo').value == ""){
			  alert("Please Enter Postal code Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('DeliveryPro').value == ""){
			  alert("Please Enter Province Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('eliveryCityy').value == ""){
			  alert("Please Enter City Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('DelivertCountry').value == ""){
			  alert("Please Enter Country Before You Submit The Details");
			  return false;
		  }
	}
	
	</script>
	
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
	
	<div class="myDiv7">
	<h2 aling ="center">Confirm The Details Required For Delivery </h2> <br>
	<table>
	<form action="Deliveyinsert" method ="post" onsubmit="return InsertValidation()">
	
	<tr>
		<td>Full Name</td> 
		<td><input type="text" name="Fname" id="Fname" placeholder="Eg: Thusi Alia"></td> 
	</tr>
		
	<tr>	
		<td>Address Line 01 </td>
		<td><input type="text" name="addLineOne" id="addLineOne" placeholder="Eg: Road"></td>
	</tr>
		
	<tr>	
		<td>Address Line 02 </td>
		<td><input type="text" name="addLineTwo" id="addLineTwo" placeholder="Eg: Gampaha" ></td>
	</tr>
			
	<tr>
		<td>Postal Code </td>
		<td><input type="text" name="PostalCo" id="PostalCo" pattern="[0-9]{5}" placeholder="Eg: 12378"></td>
	</tr>
	
	<tr>	
		<td>Province </td>
		<td><input type="text" name="DeliveryPro" id="DeliveryPro" placeholder="Eg: Westen"></td>
	</tr>
	
	<tr>
		<td>City</td>  
		<td><input type="text" name="eliveryCityy" id="eliveryCityy" placeholder="Eg: Gampaha"></td>
	</tr>

	<tr>
		<td>Country </td> 
		<td><input type="text" name="DelivertCountry" id="DelivertCountry" placeholder="Eg: Sri Lanka"></td>
	</tr>
		<tr>
		<td>PaymentID</td> 
		<td><input type="text" id="Pid" name="Pid" placeholder="Eg: Sri Lanka"></td>
	</tr>
		
		
	</table><br>
		<input type="submit" name="submit" value="Insert Data">
	
	</form>
	</div>
	
</body>
</html>