<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="Styles/NegotiatePrice.css">
<link rel="stylesheet" href="css/req2.css">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<title>Negotiate Price - Colors by Diyaa</title>

<script src="js/negoPrice.js"></script>

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
								class="nav-link text-uppercase font-weight-bold">${cusUsername}</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

  <h1>Negotiate the Price of the Painting</h1><br><br>
  
  <%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<%@ page import="java.sql.PreparedStatement" %>
	
	
	 <%
	 int painting_id =Integer.parseInt(request.getParameter("painting_id")); 
		
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
			
			
			if(rs.next())
			{
				
		
		%>
		
		<div class="contact-in">
	  		<h3 style="text-align:center">We recommend you to contact the Artist before entering the Negotiate Price.</h3><br>
	  		<h2 style="text-align:center"> Otherwise request may be rejected</h2>
  		</div><br><br>
  
  		<div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">
		
		<center>
		<h3><%=rs.getString("title")%></h3><br>
		<img src="images/<%=rs.getString("image_url")%>" width="200px" height="auto" ><br><br>
		</center>
		
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

  
  <div>
  	<form name="negoForm" action="negotiateInsertServlet" method="post" onsubmit="return validateForm()">
  		<label>Please enter the Price</label><br>
  		<input type="number" placeholder="Price in LKR" name="message" class="form__input" min="10000" oninput="this.value = 
 !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"><br>
  		<%-- <input name="painting_id" value="<%=rs.getInt("painting_id")%>" class="form__input"><br> --%>
  		<input type="hidden" name="painting_id" value="<%= painting_id %>" readonly>
  		<input type="hidden" name="userID" value="${userID}" readonly><br>
  		
  		<input type="submit" class="btn btn-secondary" name="Submit" value="Send" onClick="alert( 'We recommend you to contact the Artist before entering the Negotiate Price' )">
  	</form>
  </div>
  <br>
    
  
  </div>
  
  
  
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
  
  <!-- <button onclick="buttonEnable()">Try it</button> -->
  <style>
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

/* .user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}
 */
.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
	border-radius: 6px;
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}



.btn {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: black;
    background: $color-primary;
    transition: 0.3s;
    
    &:hover {
        background: darken($color-primary, 5%);
    }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}

@media (min-width: 576px)
.container {
    max-width: 540px;
}
</style>
</body>
</html>