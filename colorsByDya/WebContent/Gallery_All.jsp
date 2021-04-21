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
				<td>user ID</td>
				<td>Birthday</td>
				<td>Gender</td>
				<td>First Name</td>
				<td>Last Name</td>
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
			
						<tr><td><%=rs.getInt("userID") %></td></tr>
						<tr><td><%=rs.getDate("dob") %></td></tr>
						<tr><td><%=rs.getString("gender") %></td></tr>
						<tr><td><%=rs.getString("firstName") %></td></tr>
						<tr><td><%=rs.getString("lastName") %></td></tr>
			
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