<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Colors By Diyaa</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	
</head>
<body>



	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Colors By Diyaa
					 </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Artist</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Artist</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Artist</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Description</th>
						<th>Address1</th>
						<th>Address2</th>
						<th>Postal Code</th>
						<th>Province</th>
						<th>City</th>
						<th>Country</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="artist" items="${listArtist}">

						<tr>
							<td><c:out value="${artist.artist_id}" /></td>
							<td><c:out value="${artist.name}" /></td>
							<td><c:out value="${artist.phone_no}" /></td>
							<td><c:out value="${artist.email}" /></td>
							<td><c:out value="${artist.description}" /></td>
							<td><c:out value="${artist.add_line_01}" /></td>
							<td><c:out value="${artist.add_line_02}" /></td>
							<td><c:out value="${artist.postal_code}" /></td>
							<td><c:out value="${artist.province}" /></td>
							<td><c:out value="${artist.city}" /></td>
							<td><c:out value="${artist.country}" /></td>
							
							
							
							<td><a href="edit?artist_id=<c:out value='${artist.artist_id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?artist_id=<c:out value='${artist.artist_id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
