<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery Logged</title>

<!-- Gallery testing links -->
<script type="text/javascript" href="js/frontpage.js"></script>
 -<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
		
	
	Animate.css
	<link rel="stylesheet" href="css/animate.css">
	Icomoon Icon Fonts
	<link rel="stylesheet" href="css/icomoon.css">
	Magnific Popup
	<link rel="stylesheet" href="css/magnific-popup.css?version=1">
	Salvattore
	<link rel="stylesheet" href="css/salvattore.css">
	Theme Style
	<link rel="stylesheet" href="css/style1.css?version=1">
	Modernizr JS
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	<!-- <link rel="stylesheet" href="css/frontpage.css"> --> 
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css?version=1">
	<link rel="stylesheet" href="./css/home.css">
	
	<link rel="stylesheet" href="css/styles_Gallery.css">


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
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold">${userName }</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>


	
	
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
					//String query="select * from painting";
					
					String query="select * from painting p, artist a WHERE p.a_artist_id = a.artist_id";
					
					/* "SELECT * FROM painting p, artist a WHERE p.a_artist_id = a.artist_id AND a.artist_id=?" */
					
					Connection conn=DriverManager.getConnection(url, username, password);
					Statement stmt=conn.createStatement();
					ResultSet rs=stmt.executeQuery(query);
					
					while(rs.next())
					{
			
			%>

        					<div class="item">
        						<div class="animate-box"> 
        			
					        		<a href="images/<%=rs.getString("image_url") %>" class="image-popup fh5co-board-img" title="<%=rs.getString("title") %>">
					        		<%-- title="<%=rs.getString("title") %>" --%>
					        		
					        		<img src="images/<%=rs.getString("image_url") %>" alt="Free HTML5 Bootstrap template"></a>
					        		
					        		<a target="_blank" href="Gallery_singlePainting_Details.jsp?painting_id=<%= rs.getInt("painting_id")%>&artistName=<%=rs.getString("a.name")%>" style = "text-align:right; margin: 5px 10px 5px 5px;"> View more details </a>
					        		
        						</div>
        						<div class="fh5co-desc">
        						
        											        		
					        		<h3><b><%=rs.getString("title") %></b></h3>
					        		<%-- <h6>by <%=rs.getString("p.a_artist_id") %></h6> --%>
					        		<h6>by <%=rs.getString("a.name") %></h6>
					        		
					        		
					        		<% if(rs.getString("price").equals("Negotiate Price")){ %>
					        		<!-- <input type="button" id="negotiateButton" value="NEGOTIATE PRICE" onclick="location.href='negoNavServlet'"> -->
					        		<button class="btnNC">
					        		<!-- style="background-color: #B2BEB5; border: none; border-radius: 5px; color: black; padding: 5px 5px; font-size: 10px; cursor: pointer;"> -->
					        		<img id="negotiateButton" alt="Negotiate Icon" src="images/negotiate.svg" width="30px" onclick="location.href='negoNavServlet?painting_id=<%= rs.getInt("painting_id")%>'" data-title="NEGOTIATE PRICE"> NEGOTIATE
					        		</button>
					        		
					        		<% } 
					        		else
					        		{ %> 
					        		
					        			<h5><b>Rs. <%=rs.getString("price") %>.00</b></h5>
					        			
					        			<!-- <input type="button" id="cartButton" value="ADD TO CART"> -->
						        		<button class="btnNC">
						        		<img alt="Cart Icon" src="images/cart-plus.svg" width="25px" onclick="location.href=' '" title="ADD TO CART"> ADD TO CART
						        		</button>
					        		
					        		<%} %>
					        		
					        		<!-- <a href="#" style = "text-align:right"> View more details </a> -->
					        		
					        	</div>
					        	
					        	
        		
        					</div>
        					
        					
        					<%
					}
			
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
			
			
			
			<%-- 
			Gallery testing  
			
			<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>

        	<div class="item">
        		<div class="animate-box">
        			
	        		<a href="images/swing.jpg" class="image-popup fh5co-board-img" title="<%=rs.getString("title") %>">
	        		<img src="images/swing.jpg" alt="Free HTML5 Bootstrap template"></a>
        		</div>
        		<div class="fh5co-desc">
        		
        		<% if(rs.getString("price") == "Negotiate Price"){ %>
        		<input type="button" id="negotiateButton" value="NEGOTIATE PRICE" onclick="location.href='negoNavServlet'">
        		<% } %>
        		
        		<input type="button" id="cartButton" value="ADD TO CART">
        		<h4><b><%=rs.getString("title") %></b></h4>
        		<h6>by <%=rs.getString("a_artist_id") %></h6>
        		<h5><b> <%=rs.getString("price") %> </b></h5>
        		</div>
        		
        	</div>
        	
        	  
        	<div class="item">
        		<div class="animate-box">
	        		<a href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOZ7RkIj3EdeDqsWiz_mcdID9L9IhJnga9HCTuWoCaiZOyew1FyA" class="image-popup fh5co-board-img"><img src="images/img_23.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Black and white</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/img_3.jpg" class="image-popup fh5co-board-img"><img src="images/img_3.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc"> Abstract</div>
        		</div>
        	
        	
        	
        	 </div>
        </div>
       </div>
	</div> 
	  --%>
			
			
			<%-- 
						<tr>
						<td><%=rs.getInt("painting_id") %></td>
						<td><%=rs.getString("title") %></td>
						<td><%=rs.getString("description") %></td>
						<td><%=rs.getString("price") %></td>
						<td><%=rs.getDate("drawn_date") %></td>
						<td><%=rs.getString("category") %></td>
						<td><%=rs.getDouble("weight") %></td>
						<td><%=rs.getDouble("length") %></td>
						<td><%=rs.getDouble("width") %></td>
						<td><%=rs.getString("image_url") %></td>
						<td><%=rs.getString("material") %></td>
						<td><%=rs.getString("in_stock") %></td>
						<td><%=rs.getString("frame") %></td>
						<td><%=rs.getInt("a_artist_id") %></td>
						<td><%=rs.getInt("c_cart_id") %></td>
						
						<td>
							<input type="button" id="negotiateButton" value="NEGOTIATE PRICE" onclick="location.href='negoNavServlet'">
						</td>
						<td><input type="button" id="cartButton" value="ADD TO CART"></td>
						</tr>
						
			 
			 <%
			
					}
			%>
			
			
			
		</table>
		<%
			rs.close();
			stmt.close();
			conn.close();
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
		%>
	</form>
	
	--%>
	
	
<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>


	jQuery
	<script src="js/jquery.min.js"></script>
	jQuery Easing
	<script src="js/jquery.easing.1.3.js"></script>
	Bootstrap
	<script src="js/bootstrap.min.js"></script>
	Waypoints
	<script src="js/jquery.waypoints.min.js"></script>
	Magnific Popup
	<script src="js/jquery.magnific-popup.min.js"></script>
	Salvattore
	<script src="js/salvattore.min.js"></script>
	Main JS
	<script src="js/main1.js"></script>


</body>
</html>