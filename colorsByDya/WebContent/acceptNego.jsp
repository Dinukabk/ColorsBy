<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accept - Colors by Diyaa</title>
</head>
<body>

	<%
		String price_req_id = request.getParameter("price_req_id");
		String full_name = request.getParameter("full_name");
		String phone_no = request.getParameter("phone_no");
		String title = request.getParameter("title");
		String image_url = request.getParameter("image_url");
		String message = request.getParameter("message");
	%>
	
	<form action="negoAccept" method="post">
		Negotiate ID <input type="text" name="price_req_id" value="<%=price_req_id%>" readonly><br>
		Customer Name <input type="text" name="full_name" value="<%=full_name%>" readonly><br>
		Phone Number <input type="text" name="phone_no" value="<%=phone_no%>" readonly><br>
		Title <input type="text" name="title" value="<%=title%>" readonly><br>
		Painting <input type="text" name="image_url" value="<%=image_url%>" readonly><br>
		Price <input type="text" name="message" value="<%=message%>" readonly><br>
		
		<input type="submit" name="submit" value="Accept Negotiate Price"><br>
	</form>
</body>
</html>