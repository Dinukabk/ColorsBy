<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Insert here</title>

	<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
	<!-- header css -->
	<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
	<link rel="stylesheet" href="css/style1.css"> 
	
	
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
	
<style>
	
body  {
  background-image: url("./DeliveryImage/20.jpg");
  background-repeat: no-repeat, repeat;
  background-color: white;
  background-position: center;
  background-size: cover;
}

input{
	border-radius: 20px;
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
	
	
}
#contact-form input, #contact-form select, #contact-form textarea {
	border-radius: 1px;
	
}



#contact-form textarea {
	width: 100%;
	height: 150px;
}

#contact-form button[type="submit"] {
	cursor: pointer;
	width: 100%;
		
}
input[type=submit] {
  background-color: #333333;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
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
      <a href="#" class="navbar1"><% HttpSession httpSession=request.getSession();
      								String id = request.getParameter("email");
      								httpSession.setAttribute("login1",id );
      								out.println(""+httpSession.getAttribute("login1"));
      								String a = (String)httpSession.getAttribute("login1");
      
      
      %></a>  
     
      
</div>
	<h2 aling ="center">Fill The Details Required For Delivery </h2> 
	<div id="contact-form">	
	<table>
	<form action="Deliveyinsert" method ="post" onsubmit="return InsertValidation()">
	
	<tr>
		<td>Full Name</td> 
		<td><input type="text" name="Fname" id="Fname" ></td> 
	</tr>
		
	<tr>	
		<td>Address Line 01 </td>
		<td><input type="text" name="addLineOne" id="addLineOne" ></td>
	</tr>
		
	<tr>	
		<td>Address Line 02 </td>
		<td><input type="text" name="addLineTwo" id="addLineTwo" ></td>
	</tr>
			
	<tr>
		<td>Postal Code </td>
		<td><input type="text" name="PostalCo" id="PostalCo" ></td>
	</tr>
	
	<tr>	
		<td>Province </td>
		<td><input type="text" name="DeliveryPro" id="DeliveryPro" ></td>
	</tr>
	
	<tr>
		<td>City</td>  
		<td><input type="text" name="eliveryCityy" id="eliveryCityy" ></td>
	</tr>

	<tr>
		<td>Country </td> 
		<td><input type="text" name="DelivertCountry" id="DelivertCountry" ></td>
	</tr>
		<tr>
		<td>PaymentID</td> 
		<td><input type="text" id="Pid" name="Pid"></td>
	</tr>
		
		
	</table><br>
		<input type="submit" name="submit" value="Insert Data">
	
	</form>
	</div>
	
</body>
</html>