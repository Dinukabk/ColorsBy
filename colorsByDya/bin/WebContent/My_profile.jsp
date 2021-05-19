<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/frontpage.css">
</head>
<h1>Colors By Diyaa</h1>
<body>
<form action="Customer" method="post">
<div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="paintings.jsp">Paintings</a>
  <a href="Exhibition.jsp">Exhibitions</a>
 <a href="frontpage.jsp">Logout</a>
  </div>
  

	<table>
	<c:forEach var="art" items="${artDetails}">
	
	<c:set var="artist_id" value="${art.artist_id}"/>
		<c:set var="name" value="${art.name}"/>
			<c:set var="phone_no" value="${art.phone_no}"/>
				<c:set var="email" value="${art.email}"/>
					<c:set var="description" value="${art.description}"/>
						<c:set var="add_line_01" value="${art.add_line_02}"/>
							<c:set var="add_line_02" value="${art.add_line_02}"/>
								<c:set var="postal_code" value="${art.postal_code}"/>
									<c:set var="province" value="${art.province}"/>
										<c:set var="city" value="${art.city}"/>
											<c:set var="country" value="${art.country}"/>
												<c:set var="username" value="${art.usernme}"/>
													<c:set var="password" value="${art.password}"/>
													<c:set var="a_admin_id" value="${art.a_admin_id}"/>
														
															
	
	

	<tr>
		<td>Artist ID</td>
		<td>${art.artist_id}</td>
	</tr>
	
	<tr>
		<td>Artist Name</td>
		<td>${art.name}</td>
	</tr>
	
	<tr>
		<td>Artist Phone</td>
		<td>${art.phone_no}</td>
	</tr>
	
	<tr>
		<td>Artist Email</td>
		<td>${art.email}</td>
	</tr>
	
	<tr>
		<td>Artist Description</td>
		<td>${art.description}</td>
	</tr>
	
	<tr>
		<td>Artist Address1</td>
		<td>${art.add_line_01}</td>
	</tr>
	
	<tr>
		<td>Artist Address02</td>
		<td>${art.add_line_02}</td>
	</tr>
	
	<tr>
		<td>Artist Postal Code</td>
		<td>${art.postal_code}</td>
	</tr>
	
	<tr>
		<td>Artist Province</td>
		<td>${art.province}</td>
	</tr>
	
	<tr>
		<td>Artist City</td>
		<td>${art.city}</td>
	</tr>
	
	<tr>
		<td>Artist Country</td>
		<td>${art.country}</td>
	</tr>
	
	<tr>
		<td>Artist UserName</td>
		<td>${art.username}</td>
	</tr>
	
	<tr>
		<td>Administration ID</td>
		<td>${art.a_admin_id}</td>
	</tr>

	</c:forEach>
	</table>
	
	
	<c:url value="updateartist.jsp" var="artupdate">
		<c:param name="artist_id" value="${artist_id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone_no" value="${phone_no}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="description" value="${description}"/>
		<c:param name="add_line_01" value="${add_line_01}"/>
		<c:param name="add_line_02" value="${add_line_02}"/>
		<c:param name="postal_code" value="${postal_code}"/>
		<c:param name="province" value="${province}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="username" value="${usename}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="a_admin_id" value="${a_admin_id}"/>
	
	
	</c:url>
	
	<a href="${artupdate}">
	<input type="button" name="update" value="Update Artist Details">
	</a>
	
	
	
	
	
</body>
</html>





