<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Special Request list</title>
</head>
<body>
	
	<table border="1">
	
	<tr>
		<th>Request ID</th>
		<th>Name</th>
		<th>Phone Number</th>
		<th>Email Address</th>
		<th>Message</th>
		<th>Photograph</th>
		<th>Address line 01</th>
		<th>Address line 02</th>
		<th>Postal Code</th>
		<th>Province</th>
		<th>City</th>
		<th>Country</th>
		<th>Customer ID</th>
		<th>Artist Name</th>
		<th></th>
	</tr>
	
	<c:forEach var="req" items="${reqList}">
		
	<tr>
		<td>${req.request_id}</td>
		<td>${req.name}</td>
		<td>${req.phone}</td>
		<td>${req.email}</td>
		<td>${req.message}</td>
		<td>${req.photograph}</td>
		<td>${req.add_line_01}</td>
		<td>${req.add_line_02}</td>
		<td>${req.postal_code}</td>
		<td>${req.province}</td>
		<td>${req.city}</td>
		<td>${req.country}</td>
		<td>${req.c_customer_id}</td>
		<td>${req.artist_name}</td>
		
		<td>
			<input type="button" name="accept" value="Accept">
			<input type="button" name="reject" value="Reject">
			
		</td>
	</tr>	
	
	</c:forEach>
	</table>
	
</body>
</html>