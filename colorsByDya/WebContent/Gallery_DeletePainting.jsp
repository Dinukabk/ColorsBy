<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Painting</title>
</head>
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
		String c_cart_id = request.getParameter("c_cart_id");
	%>
	
	<h1>Delete Painting</h1>
	
	<form action="deletepaint" method="post">
	<table>
		<tr>
			<td>Painting ID</td>
			<td><input type="text" name=painting_id value="<%= painting_id %>" readonly></td>
		</tr>
		<tr>
			<td>Title</td>
			<td><input type="text" name="title" value="<%= title %>" readonly></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><input type="text" name="description" value="<%= description %>" readonly></td>
		</tr>
		<tr>
			<td> Price</td>
			<td><input type="text" name="price" value="<%= price %>" readonly></td>
		</tr>
		<tr>
			<td>Drawn Date</td>
			<td><input type="text" name="drawn_date" value="<%= drawn_date %>" readonly></td>
		</tr>
		<tr>
			<td>Category</td>
			<td><input type="text" name="category" value="<%= category %>" readonly></td>
		</tr>	
		<tr>
			<td>Weight</td>
			<td><input type="number" name="weight" value="<%= weight %>" readonly></td>
		</tr>
		<tr>
			<td>Length</td>
			<td><input type="number" name="length" value="<%= length %>" readonly></td>
		</tr>
		<tr>
			<td>Width</td>
			<td><input type="number" name="width" value="<%= width %>" readonly></td>
		</tr>
		<tr>
			<td>Image</td>
			<td><input type="text" name="image_url" value="<%= image_url %>" readonly></td>
		</tr>
		<tr>
			<td>Material</td>
			<td><input type="text" name="material" value="<%= material %>" readonly></td>
		</tr>
		<tr>
			<td>In-Stock</td>
			<td><input type="text" name="in_stock" value="<%= in_stock %>" readonly></td>
		</tr>
		<tr>
			<td>Frame</td>
			<td><input type="text" name="frame" value="<%= frame %>" readonly></td>
		</tr>
		<tr>
			<td>Artist ID</td>
			<td><input type="text" name="a_artist_id" value="<%= a_artist_id %>" readonly></td>
		</tr>
		<tr>
			<td>Cart ID</td>
			<td><input type="text" name="c_cart_id" value="<%= c_cart_id %>" readonly></td>
		</tr>
		
	</table>
	<br>
	<input type="submit" name="submit" value="DELETE">
	
	</form>

</body>
</html>