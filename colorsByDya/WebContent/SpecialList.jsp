<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Special Request list</title>
</head>
<body>
	
	<c:forEach var="req" items="${reqList}">
	
	${req.request_id}
	${req.name}
	${req.phone}
	${req.email}
	${req.message}
	${req.photograph}
	${req.add_line_01}
	${req.add_line_02}
	${req.postal_code}
	${req.province}
	${req.city}
	${req.country}
	${req.artist_name}
	
	</c:forEach>
	
</body>
</html>