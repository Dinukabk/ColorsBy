<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event report</title>

 
</head>
<body>

    <button onclick="generate_PDF();">Download Report</button> 


    <div id="eve">
    
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
            
                
        <h1>Event report</h1> <br>
    
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

 

    function generate_PDF(){
        
        var doc = new jsPDF();
        var elementHTML = $('#eve').html(); 
        
        var specialElementHandlers = {
            '#eveRep': function (element, renderer) {
                return true;
            }
        };
        
        doc.fromHTML(elementHTML, 30, 15, {
            'width': 500,
            'elementHandlers': specialElementHandlers
        });

 
        doc.save('EventReport.pdf');
        
    }
</script>

 

</body>
</html>