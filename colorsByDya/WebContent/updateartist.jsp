
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
      <%@ page import="java.util.*"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/frontpage.css">

<title>artist_info</title>

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
	
	
	<form action="update" method="post">
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
	<input type="submit" name="submit" value="Update Artist Data">
	</form>


</div>

</body>
</html>