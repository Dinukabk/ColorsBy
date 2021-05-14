<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery - Single painting details</title>
</head>
<body>

	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<%@ page import="java.sql.PreparedStatement" %>
	

	<h3> Single painting details </h3>
	
	 <%
		int painting_id =Integer.parseInt(request.getParameter("painting_id")); 
	 	String artistName = request.getParameter("artistName");
		
	%> 
	
	 <h1> <%=Integer.parseInt(request.getParameter("painting_id"))%> </h1> 
	 <h1> <%=request.getParameter("artistName")%> </h1>
	 
	 <%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/colorbydiyaa";
			String username="root";
			String password="root";
			
			/*
			String query="SELECT * FROM painting";
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			*/
			
			
			String query= "SELECT * FROM painting WHERE painting_id=?";
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, painting_id);
			
			ResultSet rs=ps.executeQuery();
			
			
			while(rs.next())
			{
				
		
		%>
		
			<h3><b><%=rs.getString("title")%></b></h3>
			<img src="images/<%=rs.getString("image_url")%>" width="200px">
			
	 <%
			} // end of While
		
			rs.close();
			ps.close();
			//stmt.close();
			conn.close();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		%>
	 

</body>
</html>