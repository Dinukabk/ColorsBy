<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



	<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
	<link rel="shortcut icon" href="favicon.ico">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/salvattore.css">
	<link rel="stylesheet" href="css/style1.css">
	
	
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
		
		
		<input type="submit" name="submit" value ="Delete My Deliver"><br>
			
	</form> 


</body>
</html> --%>