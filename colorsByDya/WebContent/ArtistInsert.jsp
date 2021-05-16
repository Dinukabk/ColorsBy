<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Colors By Diyaa</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
	 <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
	<style type="text/css">
	body {
	background:
		url('https://static01.nyt.com/images/2013/11/14/nyregion/AUCTION1/AUCTION1-master1050.jpg')
		no-repeat center center fixed;
	background-size: cover;
}



	</style>
	
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Artist</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${artist != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${artist == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${artist != null}">
            			Edit artist
            		</c:if>
						<c:if test="${artist == null}">
            			Add New artist
            		</c:if>
					</h2>
				</caption>

				<c:if test="${artist != null}">
					<input type="hidden" name="id" value="<c:out value='${artist.artist_id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label> Name</label> <input type="text"
						value="<c:out value='${artist.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label> Phone</label> <input type="text"
						value="<c:out value='${artist.phone_no}' />" class="form-control"
						name="phone_no" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Email</label> <input type="text"
						value="<c:out value='${artist.email}' />" class="form-control"
						name="email" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Description</label> <input type="text"
						value="<c:out value='${artist.description}' />" class="form-control"
						name="description" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Address1</label> <input type="text"
						value="<c:out value='${artist.add_line_01}' />" class="form-control"
						name="add_line_01" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label> Address2</label> <input type="text"
						value="<c:out value='${artist.add_line_02}' />" class="form-control"
						name="add_line_02" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Postal Code</label> <input type="text"
						value="<c:out value='${artist.postal_scode}' />" class="form-control"
						name="postal_code" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Province</label> <input type="text"
						value="<c:out value='${artist.province}' />" class="form-control"
						name="province" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> City</label> <input type="text"
						value="<c:out value='${artist.city}' />" class="form-control"
						name="city" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Country</label> <input type="text"
						value="<c:out value='${artist.country}' />" class="form-control"
						name="country" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> UserName</label> <input type="text"
						value="<c:out value='${artist.username}' />" class="form-control"
						name="username" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label> Password</label> <input type="text"
						value="<c:out value='${artist.password}' />" class="form-control"
						name="password" required="required">
				</fieldset>
				

				

				<button type="submit" possition="center"  class="btn btn-success">Add Artist</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
