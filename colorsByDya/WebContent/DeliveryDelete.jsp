<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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


<%
	Srting DID = request.getParameter("DeliID");
	Srting DFNAME = request.getParameter("dfname");
	Srting DLINEONE = request.getParameter("lineone");
	Srting DLINETWO = request.getParameter("linetwo");
	Srting DPCODE = request.getParameter("dpcode");
	Srting DPROVINCE = request.getParameter("dprovi");
	Srting DCITY = request.getParameter("dcity");
	Srting DCOUNTRY = request.getParameter("dcontry");
	Srting DSTATUS = request.getParameter("dstatus");
	Srting DPID = request.getParameter("dpid");
	Srting DUID = request.getParameter("dusid");
	Srting DPSW = request.getParameter("dpsw");
	
	%>
	0<h2>Delivery Cancel Page</h2>
	<form action="delete" method = "post">
		Delivery ID <input type ="text" name="DeliId" value ="<%= DID%>" readonly><br>
		Full Name <input type ="text" name="name" value ="<%=DFNAME %>"><br>
		Address Line 01 <input type="text" name="addLineOne" value ="<%=DLINEONE %>"readonly><br>
		Address Line 02 <input type="text" name="addLineTwo" value ="<%= DLINETWO%>"readonly><br>
		Postal Code <input type="text" name="PostalCo" value ="<%= DPCODE%>"readonly><br>
		Province <input type="text" name="DeliveryPro" value ="<%=DPROVINCE %>"readonly><br>
		City  <input type="text" name="eliveryCityy" value ="<%= DCITY%>"readonly><br>
		Country  <input type="text" name="DelivertCountry" value ="<%=DCOUNTRY %>"readonly><br>
		Status  <input type="text" name="Delivery Status" value ="<%=DSTATUS %>"readonly><br>
		Payment Id  <input type="text" name="DPid" value ="<%=DPID %>"readonly><br>
		Username <input type="text" name="Uid" value ="<%= DUID%>"readonly><br>
		
		<input type="submit" name="submit" value ="Delete My Deliver"><br>
			
	</form>

</body>
</html>