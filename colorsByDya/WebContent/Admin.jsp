<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Administration</title>
	<link type="text/css" rel="stylesheet" href="css/frontpage.css" />
	<meta charset="utf-8">
	<meta name="Homepage" content="Starting page for the survey website ">
</head>
<body>
	<h1>Colors By Diyaa</h1>
	<style>
		#buttons {
			margin-top: 350px;
			overflow: hidden;
			margin-left: 20px;
			position: centre
		}
		
		#buttons :first-child {
			float: left;
		}
		
		#buttons :nth-child(2) {
			margin-right: 270px;
			float: right;
			padding: 10px 25px;
		}
		
		button {
			background: rgba(10, 190, 81, 1);
			padding: 10px 25px;
			border: none;
			color: #fff;
			cursor: pointer;
			border-radius: 4px;
			outline: none;
		}
		Open
		
		 
		
		in
		
		 
		
		new
		
		 
		
		window
	</style>
	
	<script type="text/javascript">
		document.getElementById("submit1").onclick = function() {
			location.href = "add_exhibition.jsp";
		};
		document.getElementById("cancel").onclick = function() {
			location.href = "add_customer.jsp";
		};
		document.getElementById("gallery").onclick = function() {
			location.href = "add_gallery.jsp";
		};
	</script>
	
	<div class="navbar">
		<a href="frontpage.jsp">Home</a> <a href="About_us.jsp">About us</a> <a
			href="Change_password.jsp">Change Password</a> <a
			href="frontpage.jsp">Logout</a>
	</div>

	<div class="image">
		<img
			src="https://www.thechannels.org/wp-content/uploads/2016/09/MTWTsuno3-edit-1.jpg"
			style="float: left; height: 15em; margin-right: 10%; margin-bottom: 0.5em; margin-top: 5%">
	</div>
	<div class="image">
		<img
			src="https://www.thechannels.org/wp-content/uploads/2016/09/MTWTsuno3-edit-1.jpg"
			style="float: left; height: 15em; margin-right: 1%; margin-bottom: 0.5em; margin-top: 5%">
	</div>
	<div class="image">
		<img
			src="https://1.bp.blogspot.com/-r3YNBP3Cohk/Wa0p9Wjy9YI/AAAAAAAAkeM/OssgRUkyRv4J0duhN72SgM3q9NnZXWInQCLcBGAs/s1600/corey_barksdale_art.jpg"
			style="float: left; height: 15em; margin-right: 10px; margin-bottom: 0.5em; margin-top: 10%">
	</div>

	<div id="buttons">
		<button onclick="location.href = 'add_exhibition.jsp';" id="submit1">Add Event</button>
		<button onclick="location.href = 'add_customer.jsp';" id="cancel">Add Customer</button>
		<button onclick="location.href = 'add_gallery.jsp';" id="gallery"margin-top: 600px; >Add Gallery</button>
		<button onclick="location.href = 'PaymentReportRedirector'" id="pReport">Generate Payment Report</button>
	</div>

	<br>
	<br>


</body>
</html>