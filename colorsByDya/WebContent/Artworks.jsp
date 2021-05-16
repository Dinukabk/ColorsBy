<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artist_ Artwork</title>

	 <!-- <link rel="stylesheet" href="css/frontpage.css"> --> 
	 
	 <link rel="stylesheet" href="//cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
	
	<link rel="stylesheet" href="./css/bootstrap.min.css?">
	<link rel="stylesheet" href="./css/styles.css?">
	<link rel="stylesheet" href="./css/home.css?">
	
	<link rel="stylesheet" href="css/styles_Gallery.css?">
	

</head>
<body>

	<!-- Navbar -->
	<div class="container" style="height: 132px;">
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
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold">${userName }</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>


	<input type="button" name="report" value="Generate JAVA Report" onclick="location.href='Servlet_Gallery_Paint_PDF'"> <br>
	<input type="button" name="report" value="View Report" target="_blank" onclick="location.href='Gallery_Painitng_PDF.jsp'"> <br>

		
	<div class="table-responsive" style="width:auto; margin:0 auto;">

	<table id ="myTable">
		<c:forEach var="paint" items="${paintingDetails}">
		
		<c:set var="painting_id" value="${paint.painting_id}"/>
		<c:set var="title" value="${paint.title}"/>
		<c:set var="description" value="${paint.description}"/>
		<c:set var="price" value="${paint.price}"/>
		<c:set var="drawn_date" value="${paint.drawn_date}"/>
		<c:set var="category" value="${paint.category}"/>
		<c:set var="weight" value="${paint.weight}"/>
		<c:set var="length" value="${paint.length}"/>
		<c:set var="width" value="${paint.width}"/>
		<c:set var="image_url" value="${paint.image_url}"/>
		<c:set var="material" value="${paint.material}"/>
		<c:set var="in_stock" value="${paint.in_stock}"/>
		<c:set var="frame" value="${paint.frame}"/>
		<c:set var="a_artist_id" value="${paint.a_artist_id}"/>
		<c:set var="c_cart_id" value="${paint.c_cart_id}"/>
		
		<tr>
			<!-- <th>Artwork ID</th> -->
			<th> Title </th>
			<th>Description</th>
			<th>Price</th>
			<th>Drawn Date</th>
			<th>Category</th>
			<th> Weight</th>
			<th>Length</th>
			<th>Width</th>
			<th> Image </th>
			<th> Material</th>
			<!-- <th> In-stock </th> -->
			<th> Frame </th>
		</tr>
		<tr>	
			
			<%-- <td>${paint.painting_id}</td> --%>
			<td>${paint.title}</td>
			<td>${paint.description}</td>
			<td>${paint.price}</td>
			<td>${paint.drawn_date}</td>
			<td>${paint.category}</td>
			<td>${paint.weight}</td>
			<td>${paint.length}</td>
			<td>${paint.width}</td>
			<td><img src="images/${paint.image_url}" width="100px"></td>
			<td>${paint.material}</td>
			<%-- <td>${paint.in_stock}</td> --%>
			<td>${paint.frame}</td>
		
		
		
		<c:url value="Gallery_UpdatePainting.jsp" var="paintingUpdate">
		<!-- What data should be carried when going to Gallery_UpdatePainting page -->
		
			<c:param name="painting_id" value="${painting_id}"/>
			<c:param name="title" value="${title}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="price" value="${price}"/>
			<c:param name="drawn_date" value="${drawn_date}"/>
			<c:param name="category" value="${category}"/>
			<c:param name="weight" value="${weight}"/>
			<c:param name="length" value="${length}"/>
			<c:param name="width" value="${width}"/>
			<c:param name="image_url" value="${image_url}"/>
			<c:param name="material" value="${material}"/>
			<c:param name="in_stock" value="${in_stock}"/>
			<c:param name="frame" value="${frame}"/>
			<c:param name="a_artist_id" value="${a_artist_id}"/>
			<c:param name="c_cart_id" value="${c_cart_id}"/>
			
		</c:url>
		
		<c:url value="Gallery_DeletePainting.jsp" var="paintingDelete">
		<!-- What data should be carried when going to Gallery_DeletePainting page -->
		
			<c:param name="painting_id" value="${painting_id}"/>
			<c:param name="title" value="${title}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="price" value="${price}"/>
			<c:param name="drawn_date" value="${drawn_date}"/>
			<c:param name="category" value="${category}"/>
			<c:param name="weight" value="${weight}"/>
			<c:param name="length" value="${length}"/>
			<c:param name="width" value="${width}"/>
			<c:param name="image_url" value="${image_url}"/>
			<c:param name="material" value="${material}"/>
			<c:param name="in_stock" value="${in_stock}"/>
			<c:param name="frame" value="${frame}"/>
			<c:param name="a_artist_id" value="${a_artist_id}"/>
			<c:param name="c_cart_id" value="${c_cart_id}"/>
			
		</c:url>
		
		
			<td> <div>
				<a href="${paintingUpdate}">
				<input type="button" name="edit" value="EDIT" style="width:100%"> </a>
				</div>
		 	</td>
			<td> <div>
				<a href="${paintingDelete}">
				<input type="button" name="delete" value="DELETE" style="width:100%"> </a>
				</div>
		 	</td>
		</tr>
				
		</c:forEach>
		
		</table>
		</div>
		<br><br>
		
<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>

<script type="text/javascript">
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>



</body>
</html>