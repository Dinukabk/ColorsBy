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
</head>
<body>



	<h1>EVENTS</h1>
	<table border="1">
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


</body>
</html>