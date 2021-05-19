<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report of Requests</title>
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">

<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script>

<!-- <script src="js/jsPDF/dist/jspdf.min.js"></script> -->

<script type="text/javascript">

	function generate_PDF(){
		
		var doc = new jsPDF();
		var elementHTML = $('#content').html();
		
		var specialElementHandlers = {
		    '#elementH': function (element, renderer) {
		        return true;
		    }
		};
		doc.fromHTML(elementHTML, 15, 15, {
		    'width': 170,
		    'elementHandlers': specialElementHandlers
		});

		// Save the PDF
		doc.save('Requests.pdf');
		
	}
</script>

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

	<br><br>
	<button onclick="generate_PDF();" class="btn btn-secondary">Download Report</button>
	
	

	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<div id="content">
	
		<h1>Accepted Requests Report</h1>	
	
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/colorbydiyaa";
			String username="root";
			String password="root";
			//String query="select * from painting";
			
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			
			//counting all requests
			String sql_1 = "SELECT COUNT(*) AS RCount from special_request where artist_name=3";
			ResultSet rs1 = stmt.executeQuery(sql_1);
			
			if(rs1.next()) {
				double count = rs1.getInt("RCount");
				System.out.println(count);
				//listR.add(new ListItem("No of Requests : " + count));
			}
			
	%>	
	
	<h3>No of Requests : <%=rs1.getInt("RCount")%></h3>
	<%-- <h3><%=rs1.getInt("RCount")%></h3> --%>
	
	<%
	//counting accepted requests
	String sql_2 = "SELECT COUNT(*) AS RCountA from special_request where artist_name=3 AND accept=1";
	ResultSet rs2 = stmt.executeQuery(sql_2);
	
	if(rs2.next()) {
		double acceptCount = rs2.getInt("RCountA");
		//listR.add(new ListItem("No of Accepted Requests : " + acceptCount));
		
	} 
	%>
	
	
	<h3>No of Accepted Requests : <%=rs2.getInt("RCountA")%></h3>
	
	
	<%-- <h3><%=rs2.getInt("RCountA")%></h3> --%>
	<h2>List of Accepted Requests</h2>
	
			<table>
				<tr>
					<th>Request ID</th>
					<th>Customer</th>
					<th>Phone Number</th>
					<th>Message</th>					
				</tr>	
	
			
	<%
			
			String query="select sr.request_id,sr.name,sr.phone,sr.message FROM special_request sr, artist a WHERE sr.artist_name=a.artist_id AND a.artist_id=3 AND sr.accept=1";
						
			
			ResultSet rs=stmt.executeQuery(query);
			
			while(rs.next())
			{
	
	%>
	
		<!-- <div id="content">
			<table>
				<tr>
					<th>Painting ID</th>
					<th>Title</th>
					<th>Category</th>
					<th>Sold-Out</th>					
				</tr> -->
				<tr>
					<td><%=rs.getInt("request_id") %></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getInt("phone") %></td>
					<td><%=rs.getString("message") %></td>
				<!-- </tr>
			</table>
		
		</div> -->
	
	<%-- <%double perc = (rs2.getInt("RCountA")*100.0)/rs1.getInt("RCount"); %> --%>
        					
        <%
			} //end of while
				
		/* double perc = (rs2.getInt("RCountA")*100.0)/rs1.getInt("RCount"); */ %>
		
		
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
		
			</tr>
		</table>
		<%-- <h3>No of Accepted Percentage : <%=perc%></h3> --%>
	</div>
	
	<div id="elementH"></div>
<!-- 
	<button onclick="generate_PDF();">Download Report</button>

	 <div id="content">
		<h1> Artwork Report</h1>
		<p>
			Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia
		</p>
	</div>  -->
	
	
	
	<%System.out.println("Read upto here..."); %>
	
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
	
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