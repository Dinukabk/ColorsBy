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
	<!-- headercss -->
	<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
	<!--<link rel="stylesheet" href="css/animate.css">-->
	<!--<link rel="stylesheet" href="css/icomoon.css">-->
	<!--<link rel="stylesheet" href="css/magnific-popup.css">-->
	<!--<link rel="stylesheet" href="css/salvattore.css">-->
	<link rel="stylesheet" href="css/style1.css"> 
	
	
	<style>
body  {
  background-image: url("./DeliveryImage/21.jpg");
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



input[type=submit] {
  background-color: #333333;
  color: white;
  padding: 12px 20px;
  border: none;
 
  cursor: pointer;
  float: right;
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


	<h1>Please Update The Details</h1>
	
	<div id="contact-form">
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