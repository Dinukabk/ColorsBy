<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Redirect to another page if a session doesn't exist -->
<meta charset="ISO-8859-1">
<title>Under Maintenance - Colors by Diyaa</title>
	<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">
	<link rel="stylesheet" href="./css/home.css">
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

	<!-- Report Button -->
	<div class="container p-3 my-2 rounded col-md-4 form" style="
			background-color: rgba(255, 255, 255, 0.7); 
			box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
		">
		<button type="button" class="btn btn-light border border-primary" onclick="generate_PDF();">Generate a report of payments</button>
	</div>
	
	<!-- Report -->
	<div id="content">
	    <%@ page import="java.sql.Connection" %>
	    <%@ page import="java.sql.PreparedStatement" %>
	    <%@ page import="java.sql.SQLException" %>
	    <%@ page import="java.sql.ResultSet" %>
	    <%@ page import="java.sql.Statement" %>
	    <%@ page import="java.sql.DriverManager" %>
            
    	<h1>Payment Details Report</h1>
    
	    <%
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/colorbydiyaa";
            String username="root";
            String password="root";
            PreparedStatement pst = null;
            
            //String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";
            
            Connection conn = DriverManager.getConnection(url, username, password);
            pst = conn.prepareStatement("SELECT card_id, customer_id FROM rc_card");
            ResultSet rs_1 = pst.executeQuery();
            
            while(rs_1.next()) { 
                %>
                <h3> Card ID : <%=rs_1.getInt("card_id")%></h3>
                <h3> Customer ID : <%=rs_1.getInt("customer_id")%></h3>
            	<%
            } //end of while
            %>
                
            <%         
            rs_1.close();
            pst.close();
            conn.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        %>    
    </div>
    <div id="elementH"></div>
    <%
    System.out.println("Read upto here...");
	%>
	
	<!-- jQuery library -->
	<script src="js/jquery.min.js"></script>
	<!-- jsPDF library -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
	<!-- Save PDF -->
	<script type="text/javascript">
	function generate_PDF(){
        var doc = new jsPDF();
        var elementHTML = $('#content').html(); 
        var specialElementHandlers = {
            '#elementH': function (element, renderer) {
                return true;
            }
        };
        
        doc.fromHTML(elementHTML, 5, 5, {
            'width': 500,
            'elementHandlers': specialElementHandlers
        });

 		// Save the PDF
        doc.save('sample-document.pdf');
	}
	</script>
</body>
</html>