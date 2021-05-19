<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>


<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
<!-- header css -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<style>
.myRepo {
	background-color: #dddddd;
	position: absolute;
	margin-top: 115px;
	margin-left: 309px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
	cursor: pointer;
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

	<div id="content">

		<%@ page import="java.sql.ResultSet"%>
		<%@ page import="java.sql.Statement"%>
		<%@ page import="java.sql.Connection"%>
		<%@ page import="java.sql.DriverManager"%>

		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
			String username = "root";
			String password = "root";

			//String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";

			Connection conn = DriverManager.getConnection(url, username, password);
			Statement stmt = conn.createStatement();

			String query_1 = " Select *  from delivery ";

			ResultSet rs_2 = stmt.executeQuery(query_1);
		%>
		<div class="myRepo">

			<h1>Generate a Monthly Delivery Report</h1>
			<br>
			<center>
				<table border="5">
					<tr>
						<th>Full name</th>
						<th>line01</th>
						<!-- <th>line02</th> -->
						<th>postalcode</th>
						<th>province</th>
						<th>city</th>
						<th>country</th>

					</tr>
					<%
					while (rs_2.next()) {
					%>
					<tr>
						<td><%=rs_2.getString("full_name")%></td>
						<td><%=rs_2.getString("add_line_01")%></td>
						<%-- <td><%=rs_2.getString("add_line_02")%></td> --%>
						<td><%=rs_2.getString("postal_code")%></td>
						<td><%=rs_2.getString("province")%></td>
						<td><%=rs_2.getString("city")%></td>
						<td><%=rs_2.getString("country")%></td>
					</tr>

					<%
					} //end of while
					%>
				</table>
			</center>

			<br> <br>
			<button onclick="generate_PDF();">Generate a Report</button>
			<br>
		</div>
		<%
		rs_2.close();
		stmt.close();
		conn.close();
		}

		catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</div>

	<div id="elementH"></div>

	<!-- jQuery library -->
	<script src="js/jquery.min.js"></script>

	<!-- jsPDF library -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

	<!-- <script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script> -->

	<!-- <script src="js/jsPDF/dist/jspdf.min.js"></script> -->

	<script type="text/javascript">
		function generate_PDF() {

			var doc = new jsPDF();
			var elementHTML = $('#content').html();

			var specialElementHandlers = {
				'#elementH' : function(element, renderer) {
					return true;
				}
			};

			doc.fromHTML(elementHTML, 30, 15, {
				'width' : 700,
				'elementHandlers' : specialElementHandlers
			});

			// Save the PDF
			doc.save('sample-document.pdf');

		}
	</script>
</body>
</html>