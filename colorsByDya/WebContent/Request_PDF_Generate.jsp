<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>

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

	<br><br>
	<button onclick="generate_PDF();">Download Report</button>

	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<div id="content">
	
			
	
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
				String count = String.valueOf(rs1.getInt("RCount"));
				System.out.println(count);
				//listR.add(new ListItem("No of Requests : " + count));
			}
			
	%>	
	
	<h1>No of Requests :</h1>
	<h3><%=rs1.getInt("RCount")%></h3>
	
	<%
	//counting accepted requests
	String sql_2 = "SELECT COUNT(*) AS RCountA from special_request where artist_name=3 AND accept=1";
	ResultSet rs2 = stmt.executeQuery(sql_2);
	
	if(rs2.next()) {
		String acceptCount = String.valueOf(rs2.getInt("RCountA"));
		//listR.add(new ListItem("No of Accepted Requests : " + acceptCount));
	} 
	%>
	
	<h1>No of Accepted Requests :</h1>
	<h3><%=rs2.getInt("RCountA")%></h3>
			<table>
				<tr>
					<th>Request ID</th>
					<th>Customer Name</th>
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
	
	
        					
        <%
			} //end of while
			
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

</body>
</html>