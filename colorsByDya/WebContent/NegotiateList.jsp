<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Negotiate List</title>
</head>
<body>
	
	<table>
	<c:forEach var="nego" items="${negoArtList}">
	
	<tr>
		<th>Negotiate price ID</th>
		<th>Price</th>
		<th>Customer ID</th>
		<th>Painting ID</th>
		<th></th>
	</tr>
	
	<tr>
		<td>${nego.price_req_id}</td>
		<td>${nego.message}</td>
		<td>${nego.c_customer_id}</td>
		<td>${nego.p_painting_id}</td>
		<td>
		
		<form action="acceptNego" method="post">
		<input type="button" name="accept" value="Accept">
		</form>
		
		
		<input type="button" name="reject" value="Reject">
		</td>
	</tr>

	</c:forEach>
	</table>

</body>
</html>