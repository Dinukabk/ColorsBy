<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery</title>
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
	<h1>Gallery</h1>
	
	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<form method="post">
	
		<table border="2">
			<tr>
				<td>Painting ID</td>
				<td>Title</td>
				<td>Description</td>
				<td>Price</td>
				<td>Drawn Date</td>
				<td>Category</td>
				<td>Weight</td>
				<td>Length</td>
				<td>Width</td>
				<td>Image</td>
				<td>Material</td>
				<td>In-stock</td>
				<td>Frame</td>
				<td>Artist ID</td>
				<td>Cart ID</td>
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
	
	

</body>
</html>