<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/colorbydiyaa";
	String userid = "root";
	String password = "root";
	
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events</title>



<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="styles_Gallery.css">
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
  	
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<style>
	table {
  		border-collapse: collapse;
  		width: 100%;
	}

	th, td {
  		text-align: left;
  		padding: 8px;
	}
	
	td {
  		color: #464866;
  		font-family: Roboto;
	}

	th {
 		background-color: #7395AE;
  		color: white;
	}
	
	
	input {
  			background: #fff;
  			color: #525865;
  			border: 1.2px solid #d1d1d1;							
  			border-radius: 3px;
 			font-family: Roboto;
  			line-height: 1.5;
  			width: 350px;
  			height: 40px;
		}
	
	.submit{
			padding-left : 220px;
			padding-bottom : 20px;
			padding-top:25px;
			font-size:16px;
		}
	
	h1{
			color : white;
			font-weight : 700;
			width:800px;
			background-color:rgb(0,0,0,6);
			margin:auto;
			color:#FFFFFF;
			padding:200px 0px 10px 0px;
			text-align:center;
			border-radius:15px 15px 0px 0px:;
			font-family: Roboto;
		}
	
	
</style>





</head>
<body>

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
							
						<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							
						<li class="nav-item"><a onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>

						<li class="nav-item"><a onclick="location.href = 'ArtistLoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in as an Artist</a></li>

						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>





	<h1>EVENTS</h1>
	<table>
	<tr>
		<th>Event name</th>
		<th>Event date</th>
		<th>Description</th>
	</tr>
	
	
	<%
	try{
		connection = DriverManager.getConnection(connectionUrl, userid, password);
		statement=connection.createStatement();
		String sql ="select * from event";
		resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
	%>

	<tr>
		<td><%=resultSet.getString("name") %></td>
		<td><%=resultSet.getString("date") %></td>
		<td><%=resultSet.getString("description") %></td>
	</tr>

	<%
	}
		connection.close();
		} 
	catch (Exception e) {
		e.printStackTrace();
		}
%>


</table>
	<a href="EventDetailsRetri.jsp"
	<div class="submit">
		<input type="submit" name="submit" value="Manage events">
	</div>

</body>
</html>