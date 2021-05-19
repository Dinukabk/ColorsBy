<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

	<%
	String artist_id = request.getParameter("artist_id");
	String name = request.getParameter("name");
	String phone_no = request.getParameter("phone_no");
	String email= request.getParameter("email");
	String description = request.getParameter("description");
	String add_line_01 = request.getParameter("add_line_01");
	String add_line_02 = request.getParameter("add_line_02");
	String postal_code = request.getParameter("postal_code");
	String province = request.getParameter("province");
	String city = request.getParameter("city");
	String country = request.getParameter("country");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	%>

	<h1>Artist Account Delete</h1>

	<<form action="deleteartist" method="post">
	<table>
		<tr>
			<td>Artist  ID</td>
			<td><input type="text" name="artist_id" value="<%= artist_id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone_no %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= username %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Data">
	</form>

</body>
</html>