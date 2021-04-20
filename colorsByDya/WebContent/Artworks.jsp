<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artist_ Artwork</title>

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
		
		<c:url value="Gallery_UpdatePainting.jsp" var="paintingUpdate">
		<!-- What data should be carried when going to Gallery_UpdatePainting page -->
		
			<c:param name="painting_id" value="${painting_id}"/>
			<c:param name="title" value="${title}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="price" value="${price}"/>
			<c:param name="drawn_date" value="${drawn_date}"/>
			<c:param name="category" value="${category}"/>
			<c:param name="weight" value="${weight}"/>
			<c:param name="length" value="${length}"/>
			<c:param name="width" value="${width}"/>
			<c:param name="image_url" value="${image_url}"/>
			<c:param name="material" value="${material}"/>
			<c:param name="in_stock" value="${in_stock}"/>
			<c:param name="frame" value="${frame}"/>
			<c:param name="a_artist_id" value="${a_artist_id}"/>
			<c:param name="c_cart_id" value="${c_cart_id}"/>
			
		</c:url>
		
		<c:url value="Gallery_DeletePainting.jsp" var="paintingDelete">
		<!-- What data should be carried when going to Gallery_UpdatePainting page -->
		
			<c:param name="painting_id" value="${painting_id}"/>
			<c:param name="title" value="${title}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="price" value="${price}"/>
			<c:param name="drawn_date" value="${drawn_date}"/>
			<c:param name="category" value="${category}"/>
			<c:param name="weight" value="${weight}"/>
			<c:param name="length" value="${length}"/>
			<c:param name="width" value="${width}"/>
			<c:param name="image_url" value="${image_url}"/>
			<c:param name="material" value="${material}"/>
			<c:param name="in_stock" value="${in_stock}"/>
			<c:param name="frame" value="${frame}"/>
			<c:param name="a_artist_id" value="${a_artist_id}"/>
			<c:param name="c_cart_id" value="${c_cart_id}"/>
			
		</c:url>
		
		<tr>
			<td> 
				<a href="${paintingUpdate}">
				<input type="button" name="edit" value="EDIT"> </a>
		 	</td>
			<td> 
				<a href="${paintingDelete}">
				<input type="button" name="delete" value="DELETE"> </a>
		 	</td>
		</tr>
				
		</c:forEach>
		
		</table><br>
	

</body>
</html>