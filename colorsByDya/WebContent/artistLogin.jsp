<!-- Artist Login -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	
<head>
<meta charset="UTF-8">
<title>Artist - Login to Colors By Diyaa</title>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="form text-dark" style="background-color: rgba(255, 255, 255, 0.9);">
	<div id="login d-flex justify-content-center"">
		<center><img alt="logo" src="./pictures/Logo.png" width="300" height="300"></center>
		<h1 class="h1 text-center mb-5 text-dark">Artist Login</h1>
		
		<form action="ArtistLoginServlet" method="post">
			<div class="field-wrap">
				<label class="text-dark h6">User Name<span class="req text-danger">*</span></label>
				<input type="text" name="username" class="text-dark border border-dark rounded h6"/>
			</div>
			<div class="field-wrap">
				<label class="text-dark h6"> Password<span class="req text-danger">*</span></label>
				<input type="password" name="pass" class="text-dark border border-dark rounded h6"/>
			</div>
			<p class="forgot">
				<a href="Forgot_password.jsp" class="gray">Forgot Password?</a>
			</p>
			<button class="button-block btn btn-dark p-3" />
			Log In
			</button>

		</form>

	</div>

</div>
<!-- /form -->

<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="js/index.js"></script>

</body>
</html>
