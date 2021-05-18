<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get event details</title>
<!-- 
<style>
input[], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.container {
  border-radius: 1px;
  background-color: #f2f2f2;
  padding: 20px;
}

h1{
	color : gray;
}
</style>	

	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="styles_Gallery.css">
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
  	
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script>
 -->
 
</head>
<body>

 <!-- Navbar 
	<header class="header" class="py-5 mt-5">
		<nav class="navbar navbar-expand-lg fixed-top py-3">
			<div class="container">
				<img alt="logo" src="./pictures/Logo.png" width="100" height="100">
				<button type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation"
					class="navbar-toggler navbar-toggler-right">
					<i class="fa fa-bars"></i>
				</button>
	<div id="navbarSupportedContent" class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Home <span
								class="sr-only"></span></a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">About</a></li>
							
						<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							
						<li class="nav-item"><a onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>

						<li class="nav-item"><a onclick="location.href = 'ArtistLoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in as an Artist</a></li>

						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
 -->



	<table>
		<c:forEach var = "eve" items="${eveDetails}">
		<c:set var="id" value = "${eve.id}"/>
		<c:set var="name" value = "${eve.name}"/>
		<c:set var="date" value = "${eve.date}"/>
		<c:set var="status" value = "${eve.status}"/>
		<c:set var="description" value = "${eve.description}"/>
		<c:set var="adminId" value = "${eve.adminID}"/> 
	
	<tr>
		<td>ID	</td>			
		<td>${eve.id} </td>
	</tr>
	
		
	<tr>	
		<td>Name</td>				
		<td>${eve.name} </td>
	</tr>	
	
	
	<tr>	
		<td>Date</td>			
		<td>${eve.date}</td>
	</tr>	
	
	
	<tr>
		<td>Status	</td>		
		<td>${eve.status}</td>
	</tr>	
	
		
	<tr>
		<td>Description </td>	
		<td>${eve.description}</td>	
	</tr>	
	
		
	<tr>	
		<td>AdminID	</td>			
		<td>${eve.adminID}</td>
	</tr>	
	
		
		</c:forEach>
		</table>
		
		<c:url value = "EventUpdate.jsp" var="eveupdate">
		
		
			<c:param name = "id" value = "${id}"/>
			
			
			<c:param name = "name" 	value = "${name}"/>
			
			
			<c:param name = "date" 	value = "${date}"/>
			
			
			<c:param name = "status" value = "${status}"/>
			
			
			<c:param name = "description" value = "${description}"/>
			
			
			<c:param name  = "admnId" value = "${adminId}"/>	
			
			
			
				 	
		</c:url>
		
		
		<a href="${eveupdate}" >
		<input type="button" name="update" value="Update event">
		</a>
		
		<br>
		
		
		<c:url value="EventDelete.jsp" var="eveDelete">
			<c:param name = "id" value = "${id}"/>
			<c:param name = "name" value = "${name}"/>
			<c:param name = "date" value = "${date}"/>
			<c:param name = "status" value = "${status}"/>
			<c:param name = "description" value = "${description}"/>
			<c:param name  = "adminId" value = "${adminId}"/>	
		</c:url>	
		
		
		
		<a href="${eveDelete}">
		<input type="button" name="delete" value="Delete event">
		</a>
		
		





</body>
</html>