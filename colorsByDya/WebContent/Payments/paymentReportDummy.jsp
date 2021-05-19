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
	<div id="content1" class="container p-3 my-2 rounded col-md-4 form" style="
			background-color: rgba(255, 255, 255, 0.7); 
			box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
			display: none;
		">
		<table>
			<tr>
				<td>Customer Name</td>
				<td>Painting Name</td>
				<td>Paid Amount</td>
				<td>Payment Status</td>
				<td>Payment Date</td>
			</tr>
			<tr>
				<td>Bhashana Liyanage</td>
				<td>Flowers</td>
				<td>50000</td>
				<td>Paid</td>
				<td>2021/04/01</td>
			</tr>
			<tr>
				<td>Tharana Liyanage</td>
				<td>River</td>
				<td>50000</td>
				<td>Paid</td>
				<td>2021/02/01</td>
			</tr>
		</table>
		<button type="button" class="btn btn-light border border-primary" onclick="generate_PDF();">Generate a report of payments</button>
	</div>
	
	<!-- Report -->
	<div id="content" class="container p-3 my-2 rounded col-md-4 form" style="
			background-color: rgba(255, 255, 255, 0.7); 
			box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
		">
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
            
            Connection conn = DriverManager.getConnection(url, username, password);
            pst = conn.prepareStatement("SELECT r.full_name, p.paid_amount, g.title FROM payment p, painting g, registered_customer r WHERE p.p_painting_id = g.painting_id AND p.c_customer_id = r.customer_id;");
            ResultSet rs_1 = pst.executeQuery();
            %>
            <table>
            <tr>
                <th>Customer Name</th>
                <th>Paid Amount</th>
                <th>Painting Title</th>
            </tr>
           
    		<%
   
    		while(rs_1.next()) {
        	%>
            <tr>
               
                <td><%=rs_1.getString("full_name")%></td>
                <td><%=rs_1.getDouble("paid_amount")%></td>
                <td><%=rs_1.getString("title")%></td>
            </tr>
    		<%
    		} //end of while
    		%>
   
    		</table>
                
            <%         
            rs_1.close();
            pst.close();
            conn.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        %>    
        <br/>
        <button type="button" class="btn btn-light border border-primary" onclick="generate_PDF();">Generate a report of payments</button>
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