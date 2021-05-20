<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String artist_id = request.getParameter("artist_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "colorbydiyaa";
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
<html>
<body>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>ID</td>
<td>Name</td>
<td>Phone</td>
<td>Email</td>
<td>Description</td>
<td>Province</td>
<td>City</td>
<td>Country</td>
<td>update</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from artist";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("artist_id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phone_no") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("province") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("country") %></td>
<td><a href="UpdateArtist1.jsp?artist_id=<%=resultSet.getString("artist_id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>