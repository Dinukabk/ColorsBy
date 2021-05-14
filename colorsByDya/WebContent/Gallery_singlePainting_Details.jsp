<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery - Single painting details</title>
</head>
<body>
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
			
			String query="select * from painting";
			
			//String query="select * from painting p, artist a WHERE p.a_artist_id = a.artist_id";
			
			/* "SELECT * FROM painting p, artist a WHERE p.a_artist_id = a.artist_id AND a.artist_id=?" */
			
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			
			while(rs.next())
			{
				if(rs.getInt("painting_id") ==){ 
		%>
		
	 <% } %>
	 

</body>
</html>