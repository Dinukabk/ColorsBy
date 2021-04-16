<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer View Request</title>
</head>
<body>
	<table>
	<c:forEach var="req" items="${reqCusList}">
	
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="name" value="${req.name}"/>
	<c:set var="phone" value="${req.phone}"/>
	<c:set var="email" value="${req.email}"/>
	<c:set var="message" value="${req.message}"/>
	<c:set var="photograph" value="${req.photograph}"/>
	<c:set var="add_line_01" value="${req.add_line_01}"/>
	<c:set var="add_line_02" value="${req.add_line_02}"/>
	<c:set var="postal_code" value="${req.postal_code}"/>
	<c:set var="province" value="${req.province}"/>
	<c:set var="city" value="${req.city}"/>
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="country" value="${req.country}"/>
	<c:set var="artist_name" value="${req.artist_name}"/>
	
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
		<th>Artist Name</th>
	</tr>
	
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
		<td>${req.artist_name}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="RequestUpdate.jsp" var="requpdate">
		<c:param name="request_id" value="${request_id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="photograph" value="${photograph}"/>
		<c:param name="add_line_01" value="${add_line_01}"/>
		<c:param name="add_line_02" value="${add_line_02}"/>
		<c:param name="postal_code" value="${postal_code}"/>
		<c:param name="province" value="${province}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="artist_name" value="${artist_name}"/>
		
	</c:url>
	
	<a href="${requpdate}">
	<input type="button" name="update" value="Update Request">
	</a>
	
</body>
</html>