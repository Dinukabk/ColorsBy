<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/req2.css">
<link type="text/css" rel="stylesheet" href="../css/frontpage.css"/>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Contact us - Colors by Diyaa</title>

<script src="js/Request.js"></script>

</head>
<body>
    <h1>Contact Us</h1>
   <div class="contact-in">
   
      <div class="contact-map">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.0360738239797!2d79.93878721472035!3d6.886282595023944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae250bedfbfd271%3A0x57dbd16623245574!2sJayawadanagama!5e0!3m2!1sen!2slk!4v1614399768104!5m2!1sen!2slk"
          width="100%" height="auto" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <div class="contact-form"><br>
        <h3>Phone Number</h3>
        <p><i>Mr Deepthi Wijewardana:</i><br><b>071 4727470</b></p>
        <p><i>Mr Lahuru Wijewardana:</i><br><b>071 4276146</b></p><br><br>
        <h3>Address</h3>
        <p>6/98,<br>Lake Road,<br>Wickramasinheapura,<br>Baththaramulla,</p><br><br>
        <div class="wrapper">
   		<a href="https://www.facebook.com/Deepthiwije/">
        <div class="buttonIcon">
           <div class="icon"><i class="fab fa-facebook-f"></i></div>
           <span>Facebook</span>
        </div>
        </a>
        
        <div class="buttonIcon">
           <div class="icon"><i class="fab fa-instagram"></i></div>
           <span>Instagram</span>
        </div>
        
      </div>
      <!-- form -->
      
      </div>
      
   </div>
   
   <div>
      <form name="requestForm" action="insertRequest" method="post" class="specialRForm" onsubmit="return validateForm()">
      
      <fieldset>
      <legend style="padding:20px 0; font-size:30px;">We like to have a Special Request from you:</legend>
      
            <label>Full Name</label><br>
            <input type="text" placeholder="Enter Full Name" name="name" class="SRInput"><br><br>
            <label>Phone Number</label><br>
            <input type="number" placeholder="Enter Phone Number" name="phone" class="SRInput"><br><br>
            <label>Email Address</label><br>
            <input type="email" placeholder="Enter Email Address" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="SRInput"><br><br>
            <label>Message</label><br>
            <textarea placeholder="Enter a message" name="message" class="SRInput"></textarea><br><br>
            <label>Upload Your photograph that you want to be drawn</label><br>
            <input type="file" name="photograph" size="50"><br><br>
            <!-- <input type="text" placeholder="photograph" name="photograph"> -->
            <label>Address</label><br>
            <input type="text" placeholder="Line 01" name="add_line_01">
            <input type="text" placeholder="Line 02" name="add_line_02"><br>
            <input type="number" placeholder="Postal Code" name="postal_code">   
            <input type="text" placeholder="Province" name="province"><br>
            <input type="text" placeholder="City" name="city">
            <input type="text" placeholder="Country" name="country"><br><br>
            <label>Choose the Artist</label>
            	<!-- <select>
            		<option>Deepthi Wijewardana</option>
            	</select><br><br> -->
            	<%@page import="java.sql.DriverManager"%>
				<%@page import="java.sql.ResultSet"%>
				<%@page import="java.sql.Statement"%>
				<%@page import="java.sql.Connection"%>
            	<select>
            		<%
            			try{
            				Class.forName("com.mysql.jdbc.Driver");
            				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/colorbydiyaa","root","root");
            				Statement st = con.createStatement();
            				String query = "select name from artist";
            				//get table data
            				ResultSet rs = st.executeQuery(query);
            				//get artist name one by one
            				while(rs.next()){
            					%>
            					<option><%=rs.getString("name") %></option>
            					<%
            				}
            				
            			}catch (Exception e){
            				
            			}
            		%>
            	</select><br><br>
            
            
            
            <input type="reset" name="Reset" value="Reset">
            <input type="submit" name="submit" value="Send ">
            
            </fieldset>
         </form>
   
   
   </div>
   
   
      

</body>
</html>