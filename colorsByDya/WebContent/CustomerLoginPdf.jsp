<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details report</title>



</head>
<body>

	<br><br>
	<button onclick="generate_PDF();">Download Report</button> <br><br>

	
	
	<div id="content">
	
	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
			
				
		&nbsp<h1>Customer Details - Report</h1> <br>
	
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/colorbydiyaa";
			String username="root";
			String password="root";
			
			
			//String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";
			
						
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			
			String query_1 = " SELECT  customer_id, full_name, phone_no FROM registered_customer";
				
			ResultSet rs_1 = stmt.executeQuery(query_1);
			
		/* 	double sales_rate = 0.0; */
		%>
				<table>
					<tr>
						<th>ID</th>	
						<th>Customer name</th>
						<th>Phone no</th>
					</tr>
					
		<% while(rs_1.next())
			{ 
				%>
			<tr>
				<td>  <%=rs_1.getInt("customer_id")%></td>
				<td>  <%=rs_1.getString("full_name")%></td>
				<td>  <%=rs_1.getString("phone_no")%></td>
		</tr>
			<%
			} //end of while
			
			
		/* 	String query_2 = " SELECT p.category as Category, COUNT(*) AS Sales_Count"+
				      " FROM painting p, artist a, payment pay"+ 
				      " WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1 AND pay.status=true"+
				      " GROUP BY category"+
				      " ORDER BY Sales_Count desc";
				
			ResultSet rs_2 = stmt.executeQuery(query_2); */
			
			%>
			
		

			</table>
			
	<% 		
			rs_1.close();
			stmt.close();
			conn.close();
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
		
	</div>
	
	<div id="elementH"></div>


	
	<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

<!-- <script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script> -->

<!-- <script src="js/jsPDF/dist/jspdf.min.js"></script> -->

<!-- Creating pdf file -->
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
		doc.save('CustomerDetails.pdf');
		
	}
</script>

</body>
</html>