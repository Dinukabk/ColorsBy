<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="js/Request.js"></script>

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
		
	%>

	<form action="requestAccept" method="post">
		Request ID <input type="text" name="request_id" value="<%=request_id%>" readonly><br>
		Customer Name <input type="text" name="name" value="<%=name%>" readonly><br>
		Phone number <input type="text" name="phone" value="<%=phone%>" readonly><br>
		Email Address <input type="text" name="email" value="<%=email%>" readonly><br>
		Message <input type="text" name="message" value="<%=message%>" readonly><br>
		Photograph <input type="text" name="photograph" value="<%=photograph%>" readonly><br>
		Address line 01 <input type="text" name="add_line_01" value="<%=add_line_01%>" readonly><br>
		Address line 02 <input type="text" name="add_line_02" value="<%=add_line_02%>" readonly><br>
		Postal code <input type="text" name="postal_code" value="<%=postal_code%>" readonly><br>
		Province <input type="text" name="province" value="<%=province%>" readonly><br>
		City <input type="text" name="city" value="<%=city%>" readonly><br>
		Country <input type="text" name="country" value="<%=country%>" readonly><br>
		
		<input type="submit" name="submit" value="Accept Request"><br>
		
	</form>

</body>
</html>