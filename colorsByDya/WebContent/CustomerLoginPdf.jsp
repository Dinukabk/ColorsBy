<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>



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
			
			String query_1 =  " WITH temp_table AS"+ 
				" ("+ " SELECT p.category as Category, COUNT(*) AS Sales_Count"+
				      " FROM painting p, artist a, payment pay"+ 
				      " WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1 AND pay.status=true"+
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
				
				<h4> Highest Sales Rate Category : <%=rs_1.getString("Category")%></h4>
				<h4> Highest Sales Count : <%=rs_1.getInt("Max_Sales_Count")%></h4>
				
				<% 
				sales_rate = (rs_1.getInt("Max_Sales_Count")*100.0) /rs_1.getInt("Total_Sales");
				%>
				
				<h4> Highest Sales Percentage : <%=sales_rate%>%</h4>
				<h4> Total Sales Count : <%=rs_1.getInt("Total_Sales")%></h4>
			<%
			} //end of while
			
			
			String query_2 = " SELECT p.category as Category, COUNT(*) AS Sales_Count"+
				      " FROM painting p, artist a, payment pay"+ 
				      " WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1 AND pay.status=true"+
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
		doc.save('sample-document.pdf');
		
	}
</script>

</body>
</html>