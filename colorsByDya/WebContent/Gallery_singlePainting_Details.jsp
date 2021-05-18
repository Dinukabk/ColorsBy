<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery - Single painting details</title>

<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/magnific-popup.css?version=1">
<link rel="stylesheet" href="css/salvattore.css">


<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css?version=1">
<link rel="stylesheet" href="css/home.css">


<link rel="stylesheet" href="css/Gallery_SinglePaintingDetails.css?">

<script type="text/javascript" href="js/frontpage.js"></script>
<link rel="shortcut icon" href="favicon.ico">
 <script src="js/modernizr-2.6.2.min.js"></script>

</head>
<body>
	<header>
		<!-- Navbar -->
	<div class="container" style="height: 132px;">
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
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold"><%=request.getParameter("cusUsername")%></a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>
	</header>
	
	
	<main>

	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<%@ page import="java.sql.PreparedStatement" %>
	
	
	 <%
		int painting_id =Integer.parseInt(request.getParameter("painting_id")); 
	 	String artistName = request.getParameter("artistName");
		
	%> 
	
	 
	 
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
		
			
			
			<!-- div placement testing  -->
			<div class="flex-container" style="width : 100%;">

			  <div class="flex-child" style="width : 65%">
			  
			    
			    <img src="images/<%=rs.getString("image_url")%>" width="70%" height="auto" >	 			
			    
			  </div>
			  
			  <div class="flex-child" style="width : 35%">
			    
			    
			    <%-- <h1> <%=Integer.parseInt(request.getParameter("painting_id"))%> </h1> --%>
			    <h3 class="artwork_single_title"><b><%=rs.getString("title")%></b></h3>
			    <h6 class="artworks_by"> by <%=request.getParameter("artistName")%> </h6>
			    <h5><b>"</b> <i> <%=rs.getString("description")%> </i> <b>"</b></h5>
			    
			    <div class="artworks_cat">
			    	<table>
			    		<tr>
			    		<% if(!rs.getString("category").isEmpty()) {%>
			    			<td> Category:</td>
			    			<td> <%=rs.getString("category")%></td>
			    			<% } %>
			    		</tr>
			    		<tr>
			    		<% if(!rs.getString("material").isEmpty()) {%>
			    			<td> Material:</td>
			    			<td> <%=rs.getString("material")%></td>
			    			<% } %>
			    		</tr>
			    		<tr>
			    		<% if(!rs.getString("frame").isEmpty()) {%>
			    			<td> Frame:</td>
			    			<td> <%=rs.getString("frame")%></td>
			    			<% } %>
			    		</tr>
			    		<tr>
			    		<% if(!rs.getString("drawn_date").isEmpty()) {%>
			    			<td> Date:</td>
			    			<td> <%=rs.getString("drawn_date")%></td>
			    			<% } %>
			    		</tr>
			    		<tr>
			    		<% if(!rs.getString("width").isEmpty()) {%>
			    			<td> Size:</td>
			    			<td> <%=rs.getString("length")%> x <%=rs.getString("width")%> &nbsp INCHES</td>
			    			<% } %>
			    		</tr>
			    		<tr>
			    		<% if(!rs.getString("weight").isEmpty()) {%>
			    			<td> Weight:</td>
			    			<td> <%=rs.getString("weight")%> &nbsp KG</td>
			    			<% } %>
			    		</tr>
			    	</table>
			    	
			    </div>
			    <div class="single_painitng_price">
			    	<% if(rs.getString("price").equals("Negotiate Price")){ %>
		        		<button class="btnNC" style="margin-top:10px;">
		        			<img id="negotiateButton" alt="Negotiate Icon" src="images/negotiate.svg" width="30px" onclick="location.href='negoNavServlet'" data-title="NEGOTIATE PRICE"> NEGOTIATE
		        		</button>
	        		<% } 
			    	
	        		else
	        		{ %> 
	        		
	        			<h5><b>Rs. <%=rs.getString("price") %>.00</b></h5>
		        		<button class="btnNC" style="margin-top:10px;">
		        			<img alt="Cart Icon" src="images/cart-plus.svg" width="25px" onclick="location.href=' '" title="ADD TO CART"> ADD TO CART
		        		</button>
	        		
	        		<%} %>
			    </div>
				
			    
			  </div>
			  
			</div>
			
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
		
		</main>
		
		<footer></footer>
		
<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
	 

</body>
</html>