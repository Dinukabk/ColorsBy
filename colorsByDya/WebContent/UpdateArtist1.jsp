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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from artist where artist_id="+artist_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<h1>Update data </h1>
<form method="post" action="UpdateArtistProcess.jsp">
<input type="hidden" name="artist_id" value="<%=resultSet.getString("artist_id") %>">
<input type="text" name="artist_id" value="<%=resultSet.getString("artist_id") %>">
<br>
 Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
Phone<br>
<input type="text" name="phone_no" value="<%=resultSet.getString("phone_no") %>">
<br>
Email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
Description:<br>
<input type="text" name="description" value="<%=resultSet.getString("description") %>">
<br>
Province:<br>
<input type="text" name="province" value="<%=resultSet.getString("description") %>">
<br>
City:<br>
<input type="text" name="city" value="<%=resultSet.getString("city") %>">
<br>
Country:<br>
<input type="text" name="country" value="<%=resultSet.getString("country") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>