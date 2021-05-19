<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>

<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<link rel="stylesheet" href="css/styles_Gallery.css?">
<link rel="stylesheet" href="css/Gallery_SinglePaintingDetails.css?version=1">


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
								class="nav-link text-uppercase font-weight-bold">${artistUserName}</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<br><br>
	<button onclick="generate_PDF();" class="btn text-uppercase font-weight-bold" style="color:#fff;">
		<img id="pdfButton" alt="" src="images/file_download_black_24dp.svg" width="30px"> DOWNLOAD REPORT
	</button> <br><br>

	
	
	<div id="content" class="table-responsive" style="width:auto; text-align:center;">
	
	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
			
				
		<h1> Artwork Sales - Category Report.</h1> <br>
	
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/colorbydiyaa";
			String username="root";
			String password="root";
			
			int artistUserID= Integer.parseInt(request.getParameter("artistUserID"));
			//String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";
			
						
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			
			String query_1 = " WITH temp_table AS"+ 
					" ("+
					  " SELECT p.category as Category, COUNT(*) AS Sales_Count"+
				      " FROM painting p, artist a, payment pay"+ 
				      " WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id='"+artistUserID+"' AND pay.status=true"+
				      " GROUP BY category"+
				      " ORDER BY Sales_Count desc"+ 
				      " )"+
				" SELECT tt.category as Category , MAX(tt.Sales_Count) as Max_Sales_Count, SUM(tt.Sales_Count) AS Total_Sales"+
				" FROM temp_table tt";
				
			ResultSet rs_1 = stmt.executeQuery(query_1);
			
			double sales_rate = 0.0;
			
			while(rs_1.next())
			{ 
				%>
				
				<h5> Highest Sales Rate Category : <%=rs_1.getString("Category")%></h5>
				<h5> Highest Sales Count : <%=rs_1.getInt("Max_Sales_Count")%></h5>
				
				<% 
				sales_rate = (rs_1.getInt("Max_Sales_Count")*100.0) /rs_1.getInt("Total_Sales");
				%>
				
				<h5> Highest Sales Percentage : <%=sales_rate%>%</h5>
				<h5> Total Sales Count : <%=rs_1.getInt("Total_Sales")%></h5>
				
				 <br><br><br>
			<%
			} //end of while
			
			
			String query_2 = " SELECT p.category as Category, COUNT(*) AS Sales_Count"+
				      " FROM painting p, artist a, payment pay"+ 
				      " WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id='"+artistUserID+"' AND pay.status=true"+
				      " GROUP BY category"+
				      " ORDER BY Sales_Count desc";
				
			ResultSet rs_2 = stmt.executeQuery(query_2);
			
			%>
			
			<table>
					<tr>
						<th>Category</th>
						<th>Sales Count</th>
					</tr>
					
			<%
			
			while(rs_2.next())
			{ 
				%>
					<tr>
						
						<td><%=rs_2.getString("Category")%></td>
						<td><%=rs_2.getInt("Sales_Count")%></td>
					</tr>
			<%
			} //end of while
			%>
			
			</table>
			
	<% 		
			rs_1.close();
			rs_2.close();
			stmt.close();
			conn.close();
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
		
	</div>
	
	<div id="elementH"></div> <br><br><br><br><br><br>
	


	
	<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

<!-- <script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script> -->

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
		
		doc.fromHTML(elementHTML, 30, 15, {
		    'width': 500,
		    'elementHandlers': specialElementHandlers
		});

		// Save the PDF
		doc.save('Artwork Sales_Category Report.pdf');
		
	}
</script>

<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>

<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>

</body>
</html>