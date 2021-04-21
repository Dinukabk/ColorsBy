<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<h1>Colors By Diyaa</h1>
<body>

<div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="likes.jsp">Paintings</a>
  <a href="Exhibition.jsp">Exhibitions</a>
 <a href="frontpage.jsp">Logout</a>
  </div>
 
<div class="form-style-5">


	<%
	String artist_id = request.getParameter("artist_id");
	String name = request.getParameter("name");
	String phone_no = request.getParameter("phone_no");
	String email = request.getParameter("email");
	String description = request.getParameter("description");
	String add_line_01 = request.getParameter("add_line_01");
	String add_line_02 = request.getParameter("add_line_02");
	String postal_code = request.getParameter("postal_code");
	String province = request.getParameter("province");
	String city = request.getParameter("city");
	String country = request.getParameter("country");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String a_admin_id = request.getParameter("a_admin_id");
	%>

	<h1>Artist Account Delete</h1>

	
	<form action="delete" method="post">
	<table>
		<tr>
			<td>Artist ID</td>
			<td><input type="text" name="cusid" value="<%= artist_id %>" ></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
			<td>Phone Number</td>
			<td><input type="text" name="cusid" value="<%= phone_no %>" ></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
			<td>Description</td>
			<td><input type="text" name="cusid" value="<%= description %>" ></td>
		</tr>
		<tr>
			<td>Address01</td>
			<td><input type="text" name="cusid" value="<%= add_line_01 %>" ></td>
		</tr>
		<tr>
			<td>Address02</td>
			<td><input type="text" name="cusid" value="<%= add_line_02 %>" ></td>
		</tr>
		<tr>
			<td>Postal Code</td>
			<td><input type="text" name="cusid" value="<%= postal_code %>"></td>
		</tr>
		<tr>
			<td>Province</td>
			<td><input type="text" name="cusid" value="<%= province %>" ></td>
		</tr>
		<tr>
			<td>City</td>
			<td><input type="text" name="cusid" value="<%= province %>" ></td>
		</tr>
		<tr>
			<td>Country</td>
			<td><input type="text" name="cusid" value="<%= country %>" ></td>
		</tr>
		<tr>
			<td>User Name</td>
			<td><input type="text" name="cusid" value="<%= username %>" ></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="text" name="cusid" value="<%= password %>" ></td>
		</tr>
		<tr>
			<td>Admin ID</td>
			<td><input type="text" name="cusid" value="<%= a_admin_id %>" ></td>
		</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Artist Data">
	</form>

</body>
</html>