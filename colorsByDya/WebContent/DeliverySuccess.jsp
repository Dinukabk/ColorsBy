<%@page import="art_Gallery.DeliveryCustomer"%>
<%@page import="art_Gallery.DeliveryDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Success retrieve  page here</title>


	<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
	<!-- header-->
	<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
	<link rel="stylesheet" href="css/style1.css"> 
	
		<style>
body  {
  background-image: url("./DeliveryImage/25.jpg");
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
	left: 49%;
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
#contact-form button[type="submit"] {
	cursor: pointer;
	width: 100%;
	border-radius: 56px;
}
	
input[type=text], select, textarea {
  
  border: 1px solid #ccc;
  border-radius: 4px;
  
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
      
    <!-- data retrieve  test pass -->
    <%int pid = (int)request.getAttribute("pid");%>
	<%DeliveryCustomer d = DeliveryDBUtil.retriveDeliveryInfo(pid);%>
      
 
</div>
	<h1>Delivery Details inserted Successfully</h1><br>
	<div id="contact-form">
	<table>
	<form action="Deliveyinsert" method ="post">
	
	<tr>
		<td>Full Name</td> 
		<td><input type="text" name="Fname" value="<%=d.getFull_name()%>" readonly></td>
	</tr>
		
	<tr>	
		<td>Address Line 01 </td>
		<td><input type="text" name="addLineOne" value="<%=d.getAdd_line_01()%>"  readonly></td>
	</tr>
		
	<tr>	
		<td>Address Line 02 </td>
		<td><input type="text" name="addLineTwo" value="<%=d.getAdd_line_02()%>"  readonly></td>
	</tr>
		
		
	<tr>
		<td>Postal Code </td>
		<td><input type="text" name="PostalCo" value="<%=d.getPostal_code()%>"  readonly></td>
	</tr>
	
	<tr>	
		<td>Province </td>
		<td><input type="text" name="DeliveryPro" value="<%=d.getProvince()%>"  readonly></td>
	</tr>
	
	<tr>
		<td>City</td>  
		<td><input type="text" name="eliveryCityy" value="<%=d.getCity()%>"  readonly></td>
	</tr>

	<tr>
		<td>Country </td> 
		<td><input type="text" name="DelivertCountry" value="<%=d.getCountry()%>"   readonly></td>
	</tr>
	</table><br>
		
	</form>
	<form method="post" action="<%=request.getContextPath()%>/DeliveryRetriveEditServlet">
		<input type="hidden" name = "P_id" value="<%=d.getP_payment_id()%>">
		<input type="submit" name="submit" value ="Update My Data">
	
		<input type="submit" name="submit" value ="cancel My Delivery">
		<input type="submit" name="submit" value ="Confirm My Delivery"><br>
		
	</form>

</body>
</html>