<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Styles/SpeRequest.css">
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
      <div>
   <h2>We want to hear your feedback or Make a Special Request</h2>
      <form>
            <label>Full Name</label><br>
            <input type="text" placeholder="Enter Full Name" class="contact-form-txt"><br>
            <label>Phone Number</label><br>
            <input type="text" placeholder="Enter Phone Number" class="contact-form-txt"><br>
            <label>Email Address</label><br>
            <input type="email" placeholder="Enter Email Address" class="contact-form-txt"><br>
            <label>Address</label><br>
            <input type="text" placeholder="Line 01" class="contact-form-txt">
            <input type="text" placeholder="Line 02" class="contact-form-txt"><br>
            <input type="text" placeholder="Postal Code" class="contact-form-txt">
            <input type="text" placeholder="Country" class="contact-form-txt"><br>
            <input type="text" placeholder="Province" class="contact-form-txt">
            <input type="text" placeholder="City" class="contact-form-txt"><br>
            <label>Choose the Artist</label>
            <label>Message</label><br>
            <textarea placeholder="Enter a message" class="contact-form-txtarea"></textarea>
            <label>Upload Your photograph that you want to be drawn</label><br>
            <input type="file" name="photo" size="50"><br><br>
            <input type="reset" name="Reset" value="Reset">
            <input type="submit" name="Submit" value="Send ">
         </form>
   
   
   </div>

</body>
</html>