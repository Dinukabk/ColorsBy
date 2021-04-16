<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Styles/SpeRequest.css">
<link type="text/css" rel="stylesheet" href="../css/frontpage.css"/>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Contact Us</title>

</head>
<body>
    <h1>Contact Us</h1>
   <div class="contact-in">
   
      <div class="contact-map">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.0360738239797!2d79.93878721472035!3d6.886282595023944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae250bedfbfd271%3A0x57dbd16623245574!2sJayawadanagama!5e0!3m2!1sen!2slk!4v1614399768104!5m2!1sen!2slk"
          width="100%" height="auto" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <div class="contact-form">
        <h3>Phone Number</h3>
        <p>0714727470</p><br><br>
        <h3>Address</h3>
        <p>blabla bla</p>
      </div>
      
   </div>
   
   <div class="wrapper">
        <div class="buttonIcon">
           <div class="icon"><i class="fab fa-facebook-f"></i></div>
           <span>Facebook</span>
        </div>
        <div class="buttonIcon">
           <div class="icon"><i class="fab fa-instagram"></i></div>
           <span>Instagram</span>
        </div>
      </div>
      <div >
   <h2>We want to hear your feedback or Make a Special Request</h2>
      <form action="insertRequest" method="post">
            <label>Full Name</label><br>
            <input type="text" placeholder="Enter Full Name" class="contact-form-txt" name="name"><br>
            <label>Phone Number</label><br>
            <input type="text" placeholder="Enter Phone Number" class="contact-form-txt" name="phone"><br>
            <label>Email Address</label><br>
            <input type="email" placeholder="Enter Email Address" class="contact-form-txt" name="email"><br>
            <label>Address</label><br>
            <input type="text" placeholder="Line 01" class="contact-form-txt" name="add_line_01">
            <input type="text" placeholder="Line 02" class="contact-form-txt" name="add_line_02"><br>
            <input type="text" placeholder="Postal Code" class="contact-form-txt" name="postal_code">
            <input type="text" placeholder="Country" class="contact-form-txt" name="country"><br>
            <input type="text" placeholder="Province" class="contact-form-txt" name="province">
            <input type="text" placeholder="City" class="contact-form-txt" name="city"><br>
            <label>Choose the Artist</label>
            	<%-- <select>
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
            	</select><br> --%>
            <label>Message</label><br>
            <textarea placeholder="Enter a message" class="contact-form-txtarea" name="message"></textarea>
            <label>Upload Your photograph that you want to be drawn</label><br>
            <input type="file" name="photograph" size="50"><br><br>
            <input type="reset" name="Reset" value="Reset">
            <input type="submit" name="Submit" value="Send ">
         </form>
   
   
   </div>

</body>
</html>