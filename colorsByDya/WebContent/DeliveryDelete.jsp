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