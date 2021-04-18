<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE</title>

		<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
	
</head>
<body>


	<%
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
	%>
	
	
	<form action="updatepaint" method="post">
	<table>
		<tr>
			<td>Painting ID</td>
			<td><input type="text" name=painting_id value="<%= painting_id %>" readonly></td>
		</tr>
		<tr>
			<td>Title</td>
			<td><input type="text" name="title" value="<%= title %>"></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><input type="text" name="description" value="<%= description %>"></td>
		</tr>
		<tr>
			<td> Price</td>
			<td><input type="text" name="price" value="<%= price %>"></td>
		</tr>
		<tr>
			<td>Drawn Date</td>
			<td><input type="text" name="drawn_date" value="<%= drawn_date %>"></td>
		</tr>
		<tr>
			<td>Category</td>
			<td><input type="text" name="category" value="<%= category %>"></td>
		</tr>	
		<tr>
			<td>Weight</td>
			<td><input type="number" name="weight" value="<%= weight %>"></td>
		</tr>
		<tr>
			<td>Length</td>
			<td><input type="number" name="length" value="<%= length %>"></td>
		</tr>
		<tr>
			<td>Width</td>
			<td><input type="number" name="width" value="<%= width %>"></td>
		</tr>
		<tr>
			<td>Image</td>
			<td><input type="text" name="image_url" value="<%= image_url %>" readonly></td>
		</tr>
		<tr>
			<td>Material</td>
			<td><input type="text" name="material" value="<%= material %>"></td>
		</tr>
		<tr>
			<td>In-Stock</td>
			<td><input type="text" name="in_stock" value="<%= in_stock %>" readonly></td>
		</tr>
		<tr>
			<td>Frame</td>
			<td><input type="text" name="frame" value="<%= frame %>"></td>
		</tr>
		
	</table>
	<br>
	<input type="submit" name="submit" value="Update">
	
	</form>


</body>
</html>