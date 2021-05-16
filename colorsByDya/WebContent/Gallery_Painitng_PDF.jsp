<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>

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
		
		doc.fromHTML(elementHTML, 5, 5, {
		    'width': 500,
		    'elementHandlers': specialElementHandlers
		});

		// Save the PDF
		doc.save('sample-document.pdf');
		
	}
</script>

</head>
<body>

	<br><br>
	<button onclick="generate_PDF();">Download Report</button> <br><br>

	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.Statement" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.DriverManager" %>
	
	<div id="content">
			<!-- <table>
				<tr style="color:red;">
					<th>Painting ID</th>
					<th>Title</th>
					<th>Category</th>
					<th>Sold-Out</th>					
				</tr> -->
				
		<h1> Artwork Sales - Category Report.</h1>
	
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/colorbydiyaa";
			String username="root";
			String password="root";
			
			
			String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";
						
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			
			boolean in_stock = true;
			int abstrct, nature, bNw, oil, watercol, postercol,acrylic, pencil, other;
			
			abstrct = nature = bNw = oil = watercol = postercol = acrylic = pencil = other = 0;
			
			int max;
			String highest_sales_category = "";
			int total_sales=0;
			double highest_sales_rate = 0.0;
			
			while(rs.next())
			{
				if(!rs.getBoolean("status")){
					
					String category = rs.getString("category");
					
					switch (category) {
					  case "Abstract":
						  abstrct++;
					    break;
					  case "Nature":
						  nature++;
					    break;
					  case "Black and White":
						  bNw++;
						    break;
					  case "Oil Painting":
						  oil++;
						    break;
					  case "Watercolor":
						  watercol++;
						    break;
					  case "Postercolor":
						  postercol++;
						    break;
					  case "Acrylic":
						  acrylic++;
						    break;
					  case "Pencil Sketch":
						  pencil++;
						    break;
					  case "Other":
						  other++;
						    break;
					  default:
					    System.out.println("No Category");
					} // SWITCH ends
					
										
				} // if ends
				
        
			} //end of while
				
				
			total_sales = abstrct + nature + bNw + oil + watercol + postercol + acrylic + pencil + other;
			max= abstrct;
				
			if(abstrct>nature && abstrct>bNw  && abstrct>oil  && abstrct>watercol  && abstrct>postercol  && abstrct>acrylic  && abstrct>pencil  && abstrct>other){
				max = abstrct;
				highest_sales_category = "Abstract";
			}
			
			else if(nature>abstrct && nature>bNw  && nature>oil  && nature>watercol  && nature>postercol  && nature>acrylic  && nature>pencil  && nature>other){
				max = nature;
				highest_sales_category = "Nature";
			}
			
			else if(bNw>nature && bNw>abstrct  && bNw>oil  && bNw>watercol  && bNw>postercol  && bNw>acrylic  && bNw>pencil  && bNw>other){
				max = bNw;
				highest_sales_category = "Black and White";
			}
			
			else if(oil>nature && oil>bNw  && oil>abstrct  && oil>watercol  && oil>postercol  && oil>acrylic  && oil>pencil  && oil>other){
				max = oil;
				highest_sales_category = "Oil Painting";
			}
			
			else if(watercol>nature && watercol>bNw  && watercol>oil  && watercol>abstrct  && watercol>postercol  && watercol>acrylic  && watercol>pencil  && watercol>other){
				max = watercol;
				highest_sales_category = "Watercolor";
			}
			
			else if(postercol>nature && postercol>bNw  && postercol>oil  && postercol>watercol  && postercol>abstrct  && postercol>acrylic  && postercol>pencil  && postercol>other){
				max = postercol;
				highest_sales_category = "Postercolor";
			}
			
			else if(acrylic>nature && acrylic>bNw  && acrylic>oil  && acrylic>watercol  && acrylic>postercol  && acrylic>abstrct  && acrylic>pencil  && acrylic>other){
				max = acrylic;
				highest_sales_category = "Acrylic";
			}
			
			else if(pencil>nature && pencil>bNw  && pencil>oil  && pencil>watercol  && pencil>postercol  && pencil>acrylic  && pencil>abstrct  && pencil>other){
				max = pencil;
				highest_sales_category = "Pencil Sketch";
			}
			
			else if(other>nature && other>bNw  && other>oil  && other>watercol  && other>postercol  && other>acrylic  && other>pencil  && other>abstrct){
				max = other;
				highest_sales_category = "other";
			}
			
			else
				System.out.println("No max value category..");
			
			highest_sales_rate = max * 100.0 /  total_sales;
			
			
			System.out.println("abstract = " +abstrct);
			System.out.println("nature = " +nature);
			System.out.println("bNw = " +bNw);
			System.out.println("oil = "+oil);
			System.out.println("watercol = " +watercol);
			System.out.println("postercol = " +postercol);
			System.out.println("acrylic = " +acrylic);
			System.out.println("pencil = " +pencil);
			System.out.println("other = " +other);
			
			System.out.println("");
			System.out.println(highest_sales_category);
			System.out.println(max);
			System.out.println(highest_sales_rate);
			System.out.println(total_sales);
			%>
			
			<h4> Highest sales rate category : <%=highest_sales_category%> </h4>
			
			<h4> Highest sales rate : <%=highest_sales_rate%></h4>
			<h4> Total Sales : <%=total_sales%></h4>
			
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
		
		
		
			<!-- </tr>
		</table>
		 -->
		
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