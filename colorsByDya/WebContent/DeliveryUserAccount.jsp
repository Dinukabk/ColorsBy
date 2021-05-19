<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery User Account content</title>
</head>
<body>
	<table>
		<c:forEach var="cus " items="${DeliCusDetails}">

			<c:set var="Did" value="${cus.delivery_id}" />
			<c:set var="DFname" value="${cus.full_name}" />
			<c:set var="lineOne" value="${cus.add_line_01}" />
			<c:set var="lineTwo" value="${cus.add_line_02}" />
			<c:set var="PCode" value="${cus.postal_code}" />
			<c:set var="Dprovince" value="${cus.province}" />
			<c:set var="Dcity" value="${cus.city}" />
			<c:set var="Dcountry" value="${cus.country}" />
			<c:set var="Dstatus" value="${cus.status}" />
			<c:set var="DPId" value="${cus.p_payment_id}" />

			<tr>
				<td>Customer ID</td>
				<td>${cus.delivery_id}</td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td>${cus.full_name}</td>
			</tr>
			<tr>
				<td>Customer Email</td>
				<td>${cus.add_line_01}</td>
			</tr>
			<tr>
				<td>Customer Phone</td>
				<td>${cus.add_line_02}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.postal_code}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.province}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.city}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.country}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.status}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.p_payment_id}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.username}</td>
			</tr>
			<tr>
				<td>Customer User Name</td>
				<td>${cus.password}</td>
			</tr>

		</c:forEach>
	</table>

	<c:url value="DeliveryUpdate.jsp" var="DeliUpdate">
		<c:param name="DeliID" value="${Did}" />
		<c:param name="dfname" value="${DFname}" />
		<c:param name="lineone" value="${lineOne}" />
		<c:param name="linetwo" value="${lineTwo}" />
		<c:param name="dpcode" value="${PCode}" />
		<c:param name="dprovi" value="${Dprovince}" />
		<c:param name="dcity" value="${Dcity}" />
		<c:param name="dcontry" value="${Dcountry}" />
		<c:param name="dstatus" value="${Dstatus}" />
		<c:param name="dpid" value="${DPId}" />

	</c:url>
	<a href="${DeliUpdate}"> <input type="Button" name="Upadate"
		value="Upadate My Details">
	</a>
</body>
</html>