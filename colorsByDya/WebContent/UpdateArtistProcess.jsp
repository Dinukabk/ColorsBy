<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/colorbydiyaa";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String artist_id = request.getParameter("artist_id");
String name=request.getParameter("name");
String phone_no=request.getParameter("phone_no");
String email=request.getParameter("email");
String description=request.getParameter("description");
String province=request.getParameter("province");
String city=request.getParameter("city");
String country=request.getParameter("country");
if(artist_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int id = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update artist set artist_id=?,name=?,phone_no=?,email=?,description=?,province=?,city=?,country=? where artist_id="+artist_id;
ps = con.prepareStatement(sql);
ps.setString(1,artist_id);
ps.setString(2, name);
ps.setString(3, phone_no);
ps.setString(4, email);
ps.setString(5, description);
ps.setString(6, province);
ps.setString(7, city);
ps.setString(8, country);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>