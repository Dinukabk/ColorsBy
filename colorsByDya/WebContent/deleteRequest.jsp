<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<title>Delete - Colors by Diyaa</title>
</head>
<body>

	<%
		String request_id = request.getParameter("request_id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String photograph = request.getParameter("photograph");
		String add_line_01 = request.getParameter("add_line-01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String c_customer_id = request.getParameter("c_customer_id");
		String artist_name = request.getParameter("artist_name");
	%>
	
	<div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">
	<form action="deleteRequest" method="post">
		Request ID <input type="text" name="request_id" value="<%= request_id %>" readonly><br>
		Name <input type="text" name="name" value="<%= name %>" readonly><br>
		Phone Number <input type="text" name="phone" value="<%= phone %>" readonly><br>
		Email Address <input type="text" name="email" value="<%= email %>" readonly><br>
		Message <input type="text" name="message" value="<%= message %>" readonly><br>
		Photograph <input type="text" name="photograph" value="<%= photograph %>" readonly><br>
		Address line 01 <input type="text" name="add_line-01" value="<%= add_line_01 %>" readonly><br>
		Address line 02 <input type="text" name="add_line_02" value="<%= add_line_02 %>" readonly><br>
		Postal code <input type="text" name="postal_code" value="<%= postal_code %>" readonly><br>
		Province <input type="text" name="province" value="<%= province %>" readonly><br>
		City <input type="text" name="city" value="<%= city %>" readonly><br>
		Country <input type="text" name="country" value="<%= country %>" readonly><br>
		Customer ID <input type="text" name="c_customer_id" value="<%= c_customer_id %>" readonly><br>
		Artist Name <input type="text" name="artist_name" value="<%= artist_name %>" readonly><br>
		
		<input type="submit" name="submit" value="Delete Request"><br>
	</form>
	</div>
	
</body>
</html>