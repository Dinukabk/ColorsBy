<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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

		
	<font action="#" method = "post">
		Delivery ID <input type ="text" name="DeliId" value =""><br>
		Full Name <input type ="text" name="name" value =""><br>
		Address Line 01 <input type="text" name="addLineOne" value =""><br>
		Address Line 02 <input type="text" name="addLineTwo" value =""><br>
		Postal Code <input type="text" name="PostalCo" value =""><br>
		Province <input type="text" name="DeliveryPro" value =""><br>
		City  <input type="text" name="eliveryCityy" value =""><br>
		Country  <input type="text" name="DelivertCountry" value =""><br>
		Status  <input type="text" name="Delivery Status" value =""><br>
		Payment Id  <input type="text" name="DPid" value =""><br>
		Username <input type="text" name="Uid" value =""><br>
		Password <input type="password" name="psw" value =""><br>
		
		<input type="submit" name="submit" value ="Update My Data"><br>
		
		
		
		
	</font>



</body>
</html>