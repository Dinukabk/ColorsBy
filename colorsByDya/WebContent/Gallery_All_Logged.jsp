<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery Logged</title>

<!-- Gallery testing links -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Webfonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- SEARCH BAR LINKS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/magnific-popup.css?version=1">
<link rel="stylesheet" href="css/salvattore.css">

<link rel="stylesheet" href="css/style1.css?version=1"> 

<!-- <script src="js/modernizr-2.6.2.min.js"></script> -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css?version=1">
<link rel="stylesheet" href="css/home.css">

<link rel="stylesheet" href="css/styles_Gallery.css?"> 


</head>
<body>


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

					<div id="navbarSupportedContent" class="collapse navbar-collapse" style="font-size:16px">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a href="userDashboard.jsp"
								class="nav-link text-uppercase font-weight-bold">Home <span
									class="sr-only"></span></a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">About</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">${cusUsername}</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>
	
<!-- SEARCH BAR  -->
	<!-- <div class="topnav">
	    <div class="search-container">
		    <form action="#" method="post">
		      <input type="text" id="search-input" placeholder="Search.." name="search">
		      <button type="submit"><i class="fa fa-search"></i></button>
		    </form>
	  	</div>
	 </div> -->
	
	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
				
			<!--Gallery testing  -->
			
			<div id="fh5co-main">
				<div class="container">
					<div class="row">
					
						<div id="fh5co-board" data-columns>
        				
	        				<%
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						String url="jdbc:mysql://localhost:3306/colorbydiyaa";
						String username="root";
						String password="root";
						
						
						Connection conn=DriverManager.getConnection(url, username, password);
						Statement stmt=conn.createStatement();
						
						String query="select * from painting p, artist a WHERE p.a_artist_id = a.artist_id";
						ResultSet rs=stmt.executeQuery(query);
						
						while(rs.next())
						{
						%>

        					<div class="item">
        						<div class="animate-box"> 
        			
					        		<a href="images/<%=rs.getString("image_url") %>" class="image-popup fh5co-board-img" title="<%=rs.getString("title") %>">
					        		<%-- title="<%=rs.getString("title") %>" --%>
					        		
					        		<img src="images/<%=rs.getString("image_url") %>" alt="Free HTML5 Bootstrap template"></a>
					        		
					        		<!-- VIEW MORE DETAILS -->
					        		<a target="_blank" href="Gallery_singlePainting_Details.jsp?painting_id=<%= rs.getInt("painting_id")%>&artistName=<%=rs.getString("a.name")%>&cusUsername=${cusUsername}" style = "text-align:right; margin: 5px 10px 5px 5px;"> View more details </a>
					        		
        						</div>
        						<div class="fh5co-desc">  		
					        		<h3><b><%=rs.getString("title") %></b></h3>
					        		<h6>by <%=rs.getString("a.name") %></h6>
					        		
					        		<%if(rs.getString("price").equals("Negotiate Price")){ %>
					        	
						        		<button class="btnNC" onclick="location.href='negoNavServlet?painting_id=<%= rs.getInt("painting_id")%>'">
						        			<img id="negotiateButton" alt="Negotiate Icon" src="images/negotiate.svg" width="30px" onclick="location.href='negoNavServlet?painting_id=<%= rs.getInt("painting_id")%>'" data-title="NEGOTIATE PRICE"> NEGOTIATE
						        		</button>

					        		
					        		<% } 
					        		else
					        		{ %> 
					        		
					        			<h5><b>Rs. <%=rs.getString("price") %>.00</b></h5>
					        			
					        			<!-- <input type="button" id="cartButton" value="ADD TO CART"> -->
						        		
						        		
						        		<form action="addCart" method="post" >
                            		<input type="hidden" name="id" id="id" value="<%=rs.getInt("painting_id") %>" />
		                    		    <input type="number" class="form-control" style="width:30%" name="quantity" id="quantity" min="1" max="5" required>
		                    		    <br>
		                    		    <button class="btnNC" type="submit">
						        		        <img alt="Cart Icon" src="images/cart-plus.svg" width="25px" title="ADD TO CART"> ADD TO CART
						        		        </button>
		                        </form>
					        		
					        		<%} %>
					        	</div>
        					</div>
        					
        					<%
					} //WHILE ends
				
				rs.close();
				stmt.close();
				conn.close();
				}
				catch(Exception e)
				{
				e.printStackTrace();
				}
		%>
        					
        					
        				</div>
        			</div>
      	 		</div>
			</div>
			
			
	
<!-- <script type="text/javascript" href="js/frontpage.js"></script>	 -->
<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>

	
<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/salvattore.min.js"></script>
<script src="js/main1.js"></script>


</body>
</html>