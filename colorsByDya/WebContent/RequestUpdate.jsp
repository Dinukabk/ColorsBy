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
		String request_id = request.getParameter("request_id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String photograph = request.getParameter("photograph");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String c_customer_id = request.getParameter("c_customer_id");
		String artist_name = request.getParameter("artist_name");
	%>

	<form action="updateRequest" method="post">
		Request ID <input type="text" name="request_id" value="<%= request_id %>" readonly><br>
		Name <input type="text" name="name" value="<%= name %>"><br>
		Phone Number <input type="text" name="phone" value="<%= phone %>"><br>
		Email Address <input type="text" name="email" value="<%= email %>"><br>
		Message <input type="text" name="message" value="<%= message %>"><br>
		Photograph <input type="text" name="photograph" value="<%= photograph %>"><br>
		Address line 01 <input type="text" name="add_line_01" value="<%= add_line_01 %>"><br>
		Address line 02 <input type="text" name="add_line_02" value="<%= add_line_02 %>"><br>
		Postal code <input type="text" name="postal_code" value="<%= postal_code %>"><br>
		Province <input type="text" name="province" value="<%= province %>"><br>
		City <input type="text" name="city" value="<%= city %>"><br>
		Country <input type="text" name="country" value="<%= country %>"><br>
		Customer ID <input type="text" name="c_customer_id" value="<%= c_customer_id %>" readonly><br>
		Artist Name <input type="text" name="artist_name" value="<%= artist_name %>" readonly><br>
		
		<input type="submit" name="submit" value="Update Request"><br>
	</form>

</body>
</html>