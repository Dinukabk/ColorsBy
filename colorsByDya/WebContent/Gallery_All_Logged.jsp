<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery Logged</title>

<!-- <link rel="stylesheet" href="css/frontpage.css"> --> 
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="css/styles_Gallery.css">

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


	
	
	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<form method="post">
	
		<table border="2">
			<tr>
				<th>Painting ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Price</th>
				<th>Drawn Date</th>
				<th>Category</th>
				<th>Weight</th>
				<th>Length</th>
				<th>Width</th>
				<th>Image</th>
				<th>Material</th>
				<th>In-stock</th>
				<th>Frame</th>
				<th>Artist ID</th>
				<th>Cart ID</th>
			</tr>
			<%
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					String url="jdbc:mysql://localhost:3306/colorbydiyaa";
					String username="root";
					String password="root";
					String query="select * from painting";
					
					Connection conn=DriverManager.getConnection(url, username, password);
					Statement stmt=conn.createStatement();
					ResultSet rs=stmt.executeQuery(query);
					
					while(rs.next())
					{
			
			%>
			
						<tr>
						<td><%=rs.getInt("painting_id") %></td>
						<td><%=rs.getString("title") %></td>
						<td><%=rs.getString("description") %></td>
						<td><%=rs.getString("price") %></td>
						<td><%=rs.getDate("drawn_date") %></td>
						<td><%=rs.getString("category") %></td>
						<td><%=rs.getDouble("weight") %></td>
						<td><%=rs.getDouble("length") %></td>
						<td><%=rs.getDouble("width") %></td>
						<td><%=rs.getString("image_url") %></td>
						<td><%=rs.getString("material") %></td>
						<td><%=rs.getString("in_stock") %></td>
						<td><%=rs.getString("frame") %></td>
						<td><%=rs.getInt("a_artist_id") %></td>
						<td><%=rs.getInt("c_cart_id") %></td>
						
						<td>
							<input type="button" id="negotiateButton" value="NEGOTIATE PRICE">
						</td>
						<td><input type="button" id="cartButton" value="ADD TO CART"></td>
						</tr>
						
			
			 <%
			
					}
			%>
		</table>
		<%
			rs.close();
			stmt.close();
			conn.close();
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
		%>
	</form>
	
	
<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>


</body>
</html>