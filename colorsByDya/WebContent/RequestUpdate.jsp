<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/frontpage.css">
<link rel="stylesheet" href="css/styles_Gallery.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<title>Update - Colors by Diyaa</title>
</head>
<body>

	<!-- Navbar -->
	<div class="container" style="height: 132px;">
		<header class="header" class="py-5 mt-5">
			<nav class="navbar navbar-expand-lg fixed-top py-3">
				<div class="container">
					<img alt="logo" src="./pictures/Logo.png" width="100" height="100">
					<button type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"
						class="navbar-toggler navbar-toggler-right">
						<i class="fa fa-bars"></i>
					</button>

					<div id="navbarSupportedContent" class="collapse navbar-collapse">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Home <span
									class="sr-only"></span></a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">About</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold">${userName }</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>
	
	<h1>Update Request</h1>

	<%
		String request_id = request.getParameter("request_id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String photograph = request.getParameter("photograph");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String c_customer_id = request.getParameter("c_customer_id");
		String artist_name = request.getParameter("artist_name");
	%>

	<div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">
	<form action="UpdateRequestServlet" method="post" class="form">
	    <%-- <img name="photograph" src="images/<%=photograph%>" width="200px" height="200px"/><br> --%>
	    <table>
		<tr><td>Request ID</td><td> <input type="text" name="request_id" value="<%= request_id %>" readonly></td></tr>
		<tr><td>Name</td><td> <input type="text" name="name" value="<%= name %>" required oninvalid= "alert('Please enter the Name');"></td></tr>
		<tr><td>Phone Number</td><td> <input type="text" name="phone" value="<%= phone %>" pattern="{10}" required oninvalid= "alert('Please enter valid Phone Number');"></td></tr>
		<tr><td>Email Address</td><td> <input type="text" name="email" value="<%= email %>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required oninvalid= "alert('Please enter the Email Address');" title="Enter valid email"></td></tr>
		<tr><td>Message</td><td> <input type="text" name="message" value="<%= message %>"></td></tr>
		<tr><td>Photograph</td><td> <input type="text" name="photograph" value="<%= photograph %>" readonly></td></tr> 
		<tr><td>Address line 01</td><td> <input type="text" name="add_line_01" value="<%= add_line_01 %>"></td></tr>
		<tr><td>Address line 02</td><td> <input type="text" name="add_line_02" value="<%= add_line_02 %>"></td></tr>
		<tr><td>Postal code</td><td> <input type="text" name="postal_code" value="<%= postal_code %>"></td></tr>
		<tr><td>Province</td><td> <input type="text" name="province" value="<%= province %>"></td></tr>
		<tr><td>City</td><td> <input type="text" name="city" value="<%= city %>"></td></tr>
		<tr><td>Country</td><td> <input type="text" name="country" value="<%= country %>"></td></tr>
		<tr><td>Customer ID</td><td> <input type="text" name="c_customer_id" value="<%= c_customer_id %>" readonly></td></tr>
		<tr><td>Artist Name</td><td> <input type="text" name="artist_name" value="<%= artist_name %>" readonly></td></tr>
		</table><br><br>
		
		<input type="submit" class="btn btn-secondary" name="submit" value="Update Request"><br>
	</form>
	</div>
	
	
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
	
<style>
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: var(--font-family);
    font-size: var(--font-size);
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    /* transform: translate3d(0, 0, 0); */
    background: linear-gradient(45deg, #04404a 10%, #A2C7E5 90%);
    /* background: linear-gradient(45deg, #04404a 10%, #4ca1af 90%); */
    /* height: 100vh */
    min-height: 110vh;
}

/* .user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}
 */
.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
	border-radius: 6px;
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}



.btn {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: black;
    background: $color-primary;
    transition: 0.3s;
    
    &:hover {
        background: darken($color-primary, 5%);
    }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}

@media (min-width: 576px)
.container {
    max-width: 540px;
}
</style>
</body>
</html>