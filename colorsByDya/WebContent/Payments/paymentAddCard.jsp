<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Redirect to another page if a session doesn't exist -->
	<meta charset="ISO-8859-1">
	<title>Add a card - Colors by Diyaa</title>
		<script src="./js/payments.js"></script>
		<link rel="stylesheet" href="./css/bootstrap.css" type='text/css'>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/styles.css">
		<link rel="stylesheet" href="./css/home.css">
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
							<li class="nav-item">
								<a href="#" class="nav-link text-uppercase font-weight-bold">${userName }</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<!-- Card -->
	<div class="container p-3 my-3 rounded col-md-4" style="
			background-color: rgba(255, 255, 255, 0.7); 
			box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
		">
		<form name="paymentForm" action="PaymentAddCardFormServlet" method="post" class="form" onsubmit="return validateForm()">
			<table class="table table-borderless form-check">
				<tr>
					<td>
						<p class="h5 text-dark">Enter Your Card Details</p>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img alt="visa/master" src="./pictures/VisaAndMaster.png" width="60" height="36">
					</td>
				</tr>
				<tr>
					<td>
						<p class="text-dark h6 text-right">Card Number:</p>
					</td>
					<td>
						<input type="number" name="cardNumber" class="border border-dark bg-light rounded pl-1" placeholder="Card Number">
					</td>
				</tr>
				<tr>
					<td>
						<p class="text-dark h6 text-right">Name on Card:</p>
					</td>
					<td>
						<input type="text" class="border border-dark bg-light rounded pl-1" name="nameOnCard" placeholder="Name on Card">
					</td>
				</tr>
				<tr>
					<td>
						<p class="text-dark h6 text-right">Expiration Date:</p>
					</td>
					<td>
						<input type="date" class="border border-dark bg-light rounded pl-1" name="expDate" placeholder="Expiration Date">
					</td>
				</tr>
				<tr>
					<td>
						<p class="text-dark h6 text-right">CVV:</p>
					</td>
					<td>
						<input type="number" class="border border-dark bg-light rounded pl-1" name="cvv" placeholder="CVV"> <br> 
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<input type="checkbox" class="css-checkbox" id="saveCard" name="saveCard" value="Save this card for future uses"> 
						<label for="saveCard" class="css-label lite-green-check text-dark h6">Save this card for future uses</label><br>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<button type="submit" class="btn btn-primary">Save Card</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>

<!-- <style>
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
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
	 -->
</body>
</html>