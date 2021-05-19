<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</head>
<body>

	<dev class ="container">
	
		<dev class="form-group">
			<h2>Find My previous Orders</h2>
		</dev>
		<br>
		<dev class = "form-group>"
		
			<form method="post" action = "DeliverySerchSeverlet">
		
				<dev class = "form-group>"
					
					<h3>Select The Province</h3>
					
					<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
					
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
			            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/colorbydiyaa?autoReconnect=true&useSSL=false","root","root");
			            pst = con.prepareStatement("select distinct province from delivery");
				        rs=pst.executeQuery();
						
						if(rs.next())
						{
							out.println("<tr>");
							out.print("<td> chose name</td>");
							out.println("<tr>");
							out.println("<select name = 'combo'>");
							
							do{
								String Province = rs.getString("province");
								out.println("<option value = '" +"'>"+ Province + "</option>");
															
							}
							while(rs.next());
							out.println("</select>");
							rs.close();
							out.println("</td></tr>");
							out.println("</tr><td colspan=2 alingn=center> <input type=submit value=Retrive></td></tr>");
								
						}
						else{
							out.println("<tr>");
							out.println("<td colspan=2 aling = right>");
							out.println("Sorry Table Is Empty");
							out.println("<td>");
							
						}
						
						out.println("<form>");
					}
					catch (Exception e){
						
						e.printStackTrace();
					}
					%>
					
				</dev>
			</form>
		</dev>
	</dev>

</body>
</html>