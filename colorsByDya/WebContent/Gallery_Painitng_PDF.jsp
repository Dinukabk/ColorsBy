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
		doc.save('sample-document.pdf');
		
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
			<table>
				<tr>
					<th>Painting ID</th>
					<th>Title</th>
					<th>Category</th>
					<th>Sold-Out</th>					
				</tr>
	
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/colorbydiyaa";
			String username="root";
			String password="root";
			//String query="select * from painting";
			
			String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";
						
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
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
					<td><%=rs.getInt("painting_id") %></td>
					<td><%=rs.getString("title") %></td>
					<td><%=rs.getString("category") %></td>
					<td><%=rs.getBoolean("status") %></td>
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