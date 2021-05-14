<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<link type="text/css" rel="stylesheet" href="DeliveryCss/DeIiveryDesing.css" />
	
</head>
<body>

	<h2>Enter Delivery Details</h2> 
	
	<table border="1">
	<form action="Deliveyinsert" method ="post">
	
	<tr>
		<td>Full Name</td> 
		<td><input type="text" name="Fname"required></td>
	</tr>
		
	<tr>	
		<td>Address Line 01 </td>
		<td><input type="text" name="addLineOne"required></td>
	</tr>
		
	<tr>	
		<td>Address Line 02 </td>
		<td><input type="text" name="addLineTwo"required></td>
	</tr>
		
		
	<tr>
		<td>Postal Code </td>
		<td><input type="text" name="PostalCo"required></td>
	</tr>
	
	<tr>	
		<td>Province </td>
		<td><input type="text" name="DeliveryPro"required></td>
	</tr>
	
	<tr>
		<td>City</td>  
		<td><input type="text" name="eliveryCityy"required></td>
	</tr>

	<tr>
		<td>Country </td> 
		<td><input type="text" name="DelivertCountry"required></td>
	</tr>
		
		
	</table><br>
		<input type="submit" name="submit" value="Insert Data">
	
	</form>


</body>
</html>