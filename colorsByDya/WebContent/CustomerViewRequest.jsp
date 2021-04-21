<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<title>Customer View Request</title>
</head>
<body>

	<h1>All Requests</h1>

	<table>
	
		
	<tr>
		<th>Request ID</th>
		<th>Name</th>
		<th>Phone Number</th>
		<th>Email Address</th>
		<th>Message</th>
		<th>Photograph</th>
		<th>Address line 01</th>
		<th>Address line 02</th>
		<th>Postal Code</th>
		<th>Province</th>
		<th>City</th>
		<th>Country</th>
		<th>Customer ID</th>
		<th>Artist Name</th>
		<th></th>
	</tr>
	
	<c:forEach var="req" items="${reqCusList}">
	
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="name" value="${req.name}"/>
	<c:set var="phone" value="${req.phone}"/>
	<c:set var="email" value="${req.email}"/>
	<c:set var="message" value="${req.message}"/>
	<c:set var="photograph" value="${req.photograph}"/>
	<c:set var="add_line_01" value="${req.add_line_01}"/>
	<c:set var="add_line_02" value="${req.add_line_02}"/>
	<c:set var="postal_code" value="${req.postal_code}"/>
	<c:set var="province" value="${req.province}"/>
	<c:set var="city" value="${req.city}"/>
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="country" value="${req.country}"/>
	<c:set var="c_customer_id" value="${req.c_customer_id}"/>
	<c:set var="artist_name" value="${req.artist_name}"/>
	
	<tr>
		<td>${req.request_id}</td>
		<td>${req.name}</td>
		<td>${req.phone}</td>
		<td>${req.email}</td>
		<td>${req.message}</td>
		<td>${req.photograph}</td>
		<td>${req.add_line_01}</td>
		<td>${req.add_line_02}</td>
		<td>${req.postal_code}</td>
		<td>${req.province}</td>
		<td>${req.city}</td>
		<td>${req.country}</td>
		<td>${req.c_customer_id}</td>
		<td>${req.artist_name}</td>
	

	
	
	<c:url value="RequestUpdate.jsp" var="requpdate">
		<c:param name="request_id" value="${request_id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="photograph" value="${photograph}"/>
		<c:param name="add_line_01" value="${add_line_01}"/>
		<c:param name="add_line_02" value="${add_line_02}"/>
		<c:param name="postal_code" value="${postal_code}"/>
		<c:param name="province" value="${province}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="c_customer_id" value="${c_customer_id}"/>
		<c:param name="artist_name" value="${artist_name}"/>
		
	</c:url>
	
	<td>
	<a href="${requpdate}">
	<input type="button" name="update" value="Update Request">
	</a>
	</td>
	
	<c:url value="deleteRequest.jsp" var="reqdelete">
		<c:param name="request_id" value="${request_id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="photograph" value="${photograph}"/>
		<c:param name="add_line_01" value="${add_line_01}"/>
		<c:param name="add_line_02" value="${add_line_02}"/>
		<c:param name="postal_code" value="${postal_code}"/>
		<c:param name="province" value="${province}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="c_customer_id" value="${c_customer_id}"/>
		<c:param name="artist_name" value="${artist_name}"/>
	</c:url>
	
	<td>
	<a href="${reqdelete}">
	<input type="button" name="delete" value="Delete Request">
	</a>
	</td>
	
	</c:forEach>
	
	</tr>
	</table>

<style>
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

/* .user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}
 */
.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
	border-radius: 6px;
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}



.btn {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: black;
    background: $color-primary;
    transition: 0.3s;
    
    &:hover {
        background: darken($color-primary, 5%);
    }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}

@media (min-width: 576px)
.container {
    max-width: 540px;
}
</style>	
</body>
</html>