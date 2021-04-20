<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entering Delivery User Account page</title>
</head>
<body>
	<form action="DeliveryLoginServlet" method="post">
		
		User Name <input type="text" name="uid" placeholder="Enter your username"><br>
		Password <input type="password" name="pass" placeholder="Enter your password"><br>
		
		<input type="submit" name="submit" value="Login">
	</form>
</body>
</html>