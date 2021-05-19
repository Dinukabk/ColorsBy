<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Artist</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="art" items="${artDetails}">
	
	<c:set var="artist_id" value="${art.artist_id}"/>
	<c:set var="name" value="${art.name}"/>
	<c:set var="email" value="${art.email}"/>
	<c:set var="phone_no" value="${art.phone_no}"/>
	<c:set var="description" value="${art.discription}"/>
	<c:set var="add_line_01" value="${art.add_line_01}"/>
	<c:set var="add_line_02" value="${art.add_line_02}"/>
	<c:set var="postal_code" value="${art.postal_code}"/>
	<c:set var="province" value="${art.province}"/>
	<c:set var="city" value="${art.city}"/>
	<c:set var="country" value="${art.country}"/>
	<c:set var="username" value="${art.username}"/>
	<c:set var="password" value="${art.password}"/>

	
	<tr>
		<td>Artist ID</td>
		<td>${art.art_id}</td>
	</tr>
	<tr>
		<td>Artist  Name</td>
		<td>${art.name}</td>
	</tr>
	<tr>
		<td>Artist Email</td>
		<td>${art.email}</td>
	</tr>
	<tr>
		<td>Artist Phone</td>
		<td>${art.phone_no}</td>
	</tr>
	<tr>
		<td>Artist City </td>
		<td>${art.city}</td>
	</tr>
	<tr>
		<td>Artist Country </td>
		<td>${art.country}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="ArtistUpdate.jsp" var="artupdate">
		<c:set var="artist_id" value="${art.artist_id}"/>
	<c:set var="name" value="${art.name}"/>
	<c:set var="email" value="${art.email}"/>
	<c:set var="phone_no" value="${art.phone_no}"/>
	<c:set var="description" value="${art.discription}"/>
	<c:set var="add_line_01" value="${art.add_line_01}"/>
	<c:set var="add_line_02" value="${art.add_line_02}"/>
	<c:set var="postal_code" value="${art.postal_code}"/>
	<c:set var="province" value="${art.province}"/>
	<c:set var="city" value="${art.city}"/>
	<c:set var="country" value="${art.country}"/>
	<c:set var="username" value="${art.username}"/>
	<c:set var="password" value="${art.password}"/>
	</c:url>
	
	<a href="${artupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="ArtistDelete.jsp" var="artdelete">
		<c:set var="artist_id" value="${art.artist_id}"/>
	<c:set var="name" value="${art.name}"/>
	<c:set var="email" value="${art.email}"/>
	<c:set var="phone_no" value="${art.phone_no}"/>
	<c:set var="description" value="${art.discription}"/>
	<c:set var="add_line_01" value="${art.add_line_01}"/>
	<c:set var="add_line_02" value="${art.add_line_02}"/>
	<c:set var="postal_code" value="${art.postal_code}"/>
	<c:set var="province" value="${art.province}"/>
	<c:set var="city" value="${art.city}"/>
	<c:set var="country" value="${art.country}"/>
	<c:set var="username" value="${art.username}"/>
	<c:set var="password" value="${art.password}"/>
	</c:url>
	<a href="${artdelete}">
	<input type="button" name="updateartist" value="Delete My Account">
	</a>
	
	
	
	
	
	

	
	
</body>
</html>