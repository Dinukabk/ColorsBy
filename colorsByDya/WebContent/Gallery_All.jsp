<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery</title>
<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>

</head>
<body>
	<h1>Gallery</h1>
	
	<table>
		<c:forEach var="paint" items="${paintingDetails}">
		
		<c:set var="painting_id" value="${paint.painting_id}"/>
		<c:set var="title" value="${paint.title}"/>
		<c:set var="description" value="${paint.description}"/>
		<c:set var="price" value="${paint.price}"/>
		<c:set var="drawn_date" value="${paint.drawn_date}"/>
		<c:set var="category" value="${paint.category}"/>
		<c:set var="weight" value="${paint.weight}"/>
		<c:set var="length" value="${paint.length}"/>
		<c:set var="width" value="${paint.width}"/>
		<c:set var="image_url" value="${paint.image_url}"/>
		<c:set var="material" value="${paint.material}"/>
		<c:set var="in_stock" value="${paint.in_stock}"/>
		<c:set var="frame" value="${paint.frame}"/>
		<c:set var="a_artist_id" value="${paint.a_artist_id}"/>
		<c:set var="c_cart_id" value="${paint.c_cart_id}"/>
		
		<tr>
			<td>Artwork ID</td>
			<td>${paint.painting_id}</td>
		</tr>
		<tr>
			<td> Title </td>
			<td>${paint.title}</td>
		</tr>
		<tr>
			<td>Description</td>
			<td>${paint.description}</td>
		</tr>
		<tr>
			<td>Price</td>
			<td>${paint.price}</td>
		</tr>
		<tr>
			<td>Drawn Date</td>
			<td>${paint.drawn_date}</td>
		</tr>
		<tr>
			<td>Category</td>
			<td>${paint.category}</td>
		</tr>
		<tr>
			<td> Weight</td>
			<td>${paint.weight}</td>
		</tr>
		<tr>
			<td>Length</td>
			<td>${paint.length}</td>
		</tr>
		<tr>
			<td>Width</td>
			<td>${paint.width}</td>
		</tr>
		<tr>
			<td> Image </td>
			<td>${paint.image_url}</td>
		</tr>
		<tr>
			<td> Material</td>
			<td>${paint.material}</td>
		</tr>
		<tr>
			<td> In-stock </td>
			<td>${paint.in_stock}</td>
		</tr>
		<tr>
			<td> Frame </td>
			<td>${paint.frame}</td>
		</tr>
		<tr>
			<td> Artist ID </td>
			<td>${paint.a_artist_id}</td>
		</tr>
		<tr>
			<td> Cart ID </td>
			<td>${paint.c_cart_id}</td>
		</tr>
		
		</c:forEach>
		
	</table>
	
	

</body>
</html>