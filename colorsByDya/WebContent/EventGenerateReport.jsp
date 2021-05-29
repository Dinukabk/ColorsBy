<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event report</title>
<style>
	table {
  		border-collapse: collapse;
  		width: 100%;
	}

	th, td {
  		text-align: left;
  		padding: 8px;
  		border-bottom: 1px solid #ddd;
	}
	
	td {
  		color: #464866;
  		font-family: Roboto;
	}

	th {
 		background-color: #7395AE;
  		color: white;
	}
	
	
	input {
  			background: #fff;
  			color: #525865;
  			border: 1.2px solid #d1d1d1;							
  			border-radius: 3px;
 			font-family: Roboto;
  			line-height: 1.5;
  			width: 350px;
  			height: 40px;
		}
	
	.submit{
			padding-left : 220px;
			padding-bottom : 20px;
			padding-top:25px;
			font-size:16px;
		}
	
	h1{
			color : black;
			font-weight : 700;
			width:800px;
			background-color:rgb(0,0,0,6);
			margin:auto;
			padding:200px 0px 10px 0px;
			text-align:center;
			border-radius:15px 15px 0px 0px:;
			font-family: Roboto;
		}
	
	
</style>

 
</head>
<body>

	<!-- Generate an event report about held events -->

    <button onclick="generate_PDF();">Download Report</button> 


    <div id="eve">
    
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
            
                
        <h1>Generates an event about held events</h1> <br>
    
    <%
        try
        {
        	//db connection
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/colorbydiyaa";
            String username="root";
            String password="root";
            
                        
            Connection conn=DriverManager.getConnection(url, username, password);
            Statement stmt=conn.createStatement();
            
            //sql statement
            String sql = " SELECT  * FROM event where status = 1";
                
            ResultSet rs = stmt.executeQuery(sql);
            
        %>
                <table>
                    <tr>
                        <th>ID</th>    
                        <th>Name</th>
                        <th>Description</th>
                    </tr>
                    
        <% while(rs.next())
            { 
                %>
            <tr>
                <td>  <%=rs.getInt("event_id")%></td>
                <td>  <%=rs.getString("name")%></td>
                <td>  <%=rs.getString("description")%></td>
        </tr>
            <%
            } 
        	//END OF WHILE LOOP
            %>
            </table>
            
            
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
        
    </div>
    
    <div id="eveRep"></div>


	<script src="js/jquery.min.js"></script>

 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

 
	<script type="text/javascript">

 	
	//button click function calling

    function generate_PDF(){
        
    	
    	//use to instantiate and use the jsPDF object
        var doc = new jsPDF();
    	
    	//adding data
        var elementHTML = $('#eve').html(); 
        
    	//retrieve html context
        var specialElementHandlers = {
        		
            '#eveRep': function (element, renderer) {
                return true;
            }
        };
        
    	//Convert HTML content of the specific part of the web page and generate PDF
        doc.fromHTML(elementHTML, 30, 15, {
            'width': 500,
            'elementHandlers': specialElementHandlers
        });

 		//save pdf
        doc.save('EventReport.pdf');
        
    }
</script>

 

</body>
</html>