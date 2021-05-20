<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Painting</title>

<style type="text/css">
				
	.form__inputImg {
	    border-radius: 6px;
	    display: block;
	    width: 50%;
	    padding: 20px;
	    margin-left:100px;
	    font-family: $font-family;
	    -webkit-appearance: none;
	    border: 0;
	    outline: 0;
	    transition: 0.3s;
	    &: focus {;
	    background: darken(#fff, 3%);
	    }: ;
	}
	</style>

</head>

<!-- <link rel="stylesheet" href="css/frontpage.css">  -->
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="css/styles_Gallery.css">
	

<body>

<%
	// Catch data coming through the url from Artworks.jsp page
	
		String painting_id = request.getParameter("painting_id");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String drawn_date = request.getParameter("drawn_date");
		String category = request.getParameter("category");
		String weight = request.getParameter("weight");
		String length = request.getParameter("length");
		String width = request.getParameter("width");
		String image_url = request.getParameter("image_url");
		String material = request.getParameter("material");
		String in_stock = request.getParameter("in_stock");
		String frame = request.getParameter("frame");
		String a_artist_id = request.getParameter("a_artist_id");
		String artistUserName = request.getParameter("artistUserName");
	%>


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
							<!-- 	
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">My Profile</a></li>
								
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Exhibitions</a></li>
								 -->
							<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
								
							<li class="nav-item"><a onclick="location.href = 'Servlet_GalleryLogin'"
								class="nav-link text-uppercase font-weight-bold">Artwork</a></li>
								
							<li class="nav-item"><a onclick="location.href = 'Servlet_AddPainting'"
								class="nav-link text-uppercase font-weight-bold">Upload Painting</a></li>
							<!-- 	
							<li class="nav-item"><a onclick="location.href = 'requestLoginServlet'"
								class="nav-link text-uppercase font-weight-bold">Special Requests</a></li>
								
							<li class="nav-item"><a onclick="location.href = 'NegoLoginServlet'"
								class="nav-link text-uppercase font-weight-bold">Negotiate Price Requests</a></li>
								-->
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold"><%= artistUserName %></a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>



	<!-- Was Here -->
	
	<div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.2);">
	
	<form action="Servlet_deletePainting" method="post" class="form">
	
		
		<input class="form__input" type="hidden" name=painting_id value="<%= painting_id %>" readonly>
		
		<div class="form__group">
			
			<%-- <input type="text" class="form__input" name="image_url" value="<%= image_url %>" --%> 
			<img class="form__inputImg" src="images/<%= image_url %>" width="100px">
		</div>
		
		<div class="form__group">
			<label>Title</label>
			<input class="form__input" type="text" name="title" value="<%= title %>" readonly>
		</div>
		<div class="form__group">
			<label>Description</label>
			<textarea class="form__input" rows="" cols="" name="description" readonly><%= description %></textarea>
			<%-- <input type="text" class="form__input" name="description" value="<%= description %>"> --%>
		</div>
		<div class="form__group">
			<label>Price (LKR)</label>
			<input type="text" class="form__input" name="price" value="<%= price %>" readonly> 
		</div>
		<div class="form__group">
			<label>Drawn Date</label>
			<input type="text" class="form__input" name="drawn_date" value="<%= drawn_date %>" readonly>
		</div>
		<div class="form__group">
			<label>Category</label>
			<input type="text" class="form__input" name="category" value="<%= category %>" readonly>
		</div>
		<div class="form__group">
			<label>Weight (KG)</label>
			<input type="number" class="form__input" name="weight" value="<%= weight %>" readonly> 
		</div>
		<div class="form__group">
			<label>Length (CM)</label>
			<input type="number" class="form__input" name="length" value="<%= length %>" readonly> 
		</div>
		<div class="form__group">
			<label>Width (CM)</label>
			<input type="number" class="form__input" name="width" value="<%= width %>" readonly>
		</div>
		<div class="form__group">
			
			<input type="hidden" class="form__input" name="image_url" value="<%= image_url %>" readonly>
		</div>
		<div class="form__group">
			<label>Material</label>
			<input type="text" class="form__input" name="material" value="<%= material %>" readonly>
		</div>
		<div class="form__group">
			<label>Frame</label>
			<input type="text" class="form__input" name="frame" value="<%= frame %>" readonly>
		</div>
	
	<%-- 
			Painting ID
			<input type="text" name=painting_id value="<%= painting_id %>" readonly>
			Title
			<input type="text" name="title" value="<%= title %>" readonly>
			Description
			<input type="text" name="description" value="<%= description %>" readonly>
			Price
			<input type="text" name="price" value="<%= price %>" readonly>
			Drawn Date
			<input type="text" name="drawn_date" value="<%= drawn_date %>" readonly>
			Category
			<input type="text" name="category" value="<%= category %>" readonly>
			Weight
			<input type="number" name="weight" value="<%= weight %>" readonly>
			Length
			<input type="number" name="length" value="<%= length %>" readonly>
			Width
			<input type="number" name="width" value="<%= width %>" readonly>
			Image
			<input type="text" name="image_url" value="<%= image_url %>" readonly>
			Material
			<input type="text" name="material" value="<%= material %>" readonly>
			Frame
			<input type="text" name="frame" value="<%= frame %>" readonly>
		 --%>
	
		<br>
		<input type="submit" name="submit" value="DELETE" class="btn">
	
	</form>
	
	</div>

<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>

</body>

</html>









