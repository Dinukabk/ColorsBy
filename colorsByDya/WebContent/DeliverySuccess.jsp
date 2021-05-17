<%@page import="art_Gallery.DeliveryCustomer"%>
<%@page import="art_Gallery.DeliveryDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Success retrieve page here</title>

<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
<!-- header-->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<script>
	function myFunction2() {
		location.replace("./DeliveryThankU.jsp")

	}
	function myFunction8() {
		location.replace("./DeliveryHomaPage.jsp")

	}
</script>

<style>
.btn1 {
	background-color: #dddddd;
	position: absolute;
	margin-top: 464px;
	margin-left: 920px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
}

.btn2 {  /* cancel my order button */
	background-color: #dddddd;
	position: absolute;
	margin-top: 440px;
	margin-left: 382px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
}

.btn3 {
	background-color: #dddddd;
	position: absolute;
	margin-top: 464px;
	margin-left: 643px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
}

.update1 {
	background-color: #dddddd;
	position: absolute;
	margin-top: 118px;
	margin-left: 382px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
}
</style>

</head>
<body>
	<!-- Navbar -->
	<header class="header" class="py-5 mt-5">
		<nav class="navbar navbar-expand-lg fixed-top py-3">
			<div class="container">
				<img alt="logo" src="./pictures/Logo.png" width="100" height="100">
				<button type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation"
					class="navbar-toggler navbar-toggler-right">
					<i class="fa fa-bars"></i>
				</button>

				<div id="navbarSupportedContent" class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Home <span
								class="sr-only"></span></a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">About</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- data retrieve  test pass -->
	<%
	int pid = (int) request.getAttribute("pid");
	%>
	<%
	DeliveryCustomer d = DeliveryDBUtil.retriveDeliveryInfo(pid);
	%>


	<div class="update1">
		<h1>Delivery Details inserted Successfully</h1>
		<br>

		<table>
			<form action="Deliveyinsert" method="post">

				<tr>
					<td>Full Name</td>
					<td><input type="text" name="Fname"
						value="<%=d.getFull_name()%>" readonly></td>
				</tr>

				<tr>
					<td>Address Line 01</td>
					<td><input type="text" name="addLineOne"
						value="<%=d.getAdd_line_01()%>" readonly></td>
				</tr>

				<tr>
					<td>Address Line 02</td>
					<td><input type="text" name="addLineTwo"
						value="<%=d.getAdd_line_02()%>" readonly></td>
				</tr>

				<tr>
					<td>Postal Code</td>
					<td><input type="text" name="PostalCo"
						value="<%=d.getPostal_code()%>" readonly></td>
				</tr>

				<tr>
					<td>Province</td>
					<td><input type="text" name="DeliveryPro"
						value="<%=d.getProvince()%>" readonly></td>
				</tr>

				<tr>
					<td>City</td>
					<td><input type="text" name="eliveryCityy"
						value="<%=d.getCity()%>" readonly></td>
				</tr>

				<tr>
					<td>Country</td>
					<td><input type="text" name="DelivertCountry"
						value="<%=d.getCountry()%>" readonly></td>
				</tr>
		</table>
		<br> <br> <br>

		</form>
	</div>

	<div class="#">
		<form method="post"
			action="<%=request.getContextPath()%>/DeliveryRetriveEditServlet">
			<input type="hidden" name="P_id" value="<%=d.getP_payment_id()%>">
			<div class="btn1">
				<input type="submit" name="submit" value="Update My Data">
			</div>
		</form>

		<!-- Delete part Start-->
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

		</c:forEach>

		<!--Delete Button  -->
		<c:url value="DeliveryDelete.jsp" var="deliDelete">

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

		<!--Delete part Start	-->
		<form method="post"
			action="<%=request.getContextPath()%>/DeliveryDeleteServelet">
			<div class="btn2">
				<input type="hidden" name="P_id" value="<%=d.getP_payment_id()%>">
				<br> <input type="submit" name="submit" value="Cancel My Order">
			</div>
		</form>
		<!--Delete part End	-->



		<!--Confirm button part start-->
		<div class="btn3">
			<button onclick="myFunction2()">Confirm My Delivery</button>
			<br>
		</div>
		<!--Confirm button part end-->

	</div>
</body>
</html>