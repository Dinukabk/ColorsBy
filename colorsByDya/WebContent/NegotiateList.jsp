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
	
	<%-- <%String price_req_id = request.getParameter("price_req_id");%> --%>
	<table border="1">
	<c:forEach var="nego" items="${negoArtList}">
	
	<tr>
		<th>Customer Name</th>
		<th>Phone Number</th>
		<th>Painting</th>
		<th>Price</th>
		<th></th>
	</tr>
	
	<tr>
		<td>${nego.full_name}</td>
		<td>${nego.phone_no}</td>
		<td>${nego.image_url}</td>
		<td>${nego.message}</td>
		<td>
		
		<input type="button" name="accept" onclick="location.href='NegoAcceptServlet'" value="Accept">
		
		
		<input type="button" name="reject" onclick="location.href='NegoRejectServlet'" value="Reject">
		</td>
	</tr>

	</c:forEach>
	</table>

</body>
</html>