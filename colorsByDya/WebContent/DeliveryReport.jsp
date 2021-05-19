<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
<!-- header css -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">


<!-- filter -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
	$(document)
			.ready(
					function() {
						$('#search').keyup(function() {
							search_table($(this).val());
						});
						function search_table(value) {
							$('#employee_table tr')
									.each(
											function() {
												var found = 'false';
												$(this)
														.each(
																function() {
																	if ($(this)
																			.text()
																			.toLowerCase()
																			.indexOf(
																					value
																							.toLowerCase()) >= 0) {
																		found = 'true';
																	}
																});
												if (found == 'true') {
													$(this).show();
												} else {
													$(this).hide();
												}
											});
						}
					});
</script>

<!-- FILTER END JS AND LINKS -->

<style>
.myFilter {
	background-color: #dddddd;
	position: absolute;
	margin-top: -45px;
	margin-left: 224px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
	cursor: pointer;
}
</style>
</head>
<body>


	<!-- Navbar -->
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
						<li class="nav-item"><a
							onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>
						<li class="nav-item"><a
							onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>


	<br />
	<br />
	<div class="myFilter">
		<div class="container" style="width: 900px;">

			<h3 align="center">PREVIUS DELIVERY DATA</h3>
			<br /> <br />
			<div align="center">
				<input type="text" name="search" id="search" class="form-control"
					placeholder="Serch Hera" />
			</div>
			<br /> <br />
			<div class="table-responsive">
				<center>
					<table class="table table-bordered" id="employee_table">
						<tr>
							<th width="5%">ID</th>
							<th width="25%">Name</th>
							<th width="35%">Address</th>
							<th width="10%">Gender</th>
							<th width="20%">Designation</th>
							<th width="5%">Age</th>
						</tr>
						<tr>
							<td>175</td>
							<td>Ronald D. Colella</td>
							<td>1571 Bingamon Branch Road, Barrington, IL 60010</td>
							<td>Male</td>
							<td>Top executive</td>
							<td>32</td>
						</tr>
						<tr>
							<td>174</td>
							<td>Martha B. Tomlinson</td>
							<td>4005 Bird Spring Lane, Houston, TX 77002</td>
							<td>Female</td>
							<td>Systems programmer</td>
							<td>38</td>
						</tr>
						<tr>
							<td>173</td>
							<td>Cameron K. Barnett</td>
							<td>2822 River Road, Colorado Springs, CO 80903</td>
							<td>Male</td>
							<td>Mortgage loan officer</td>
							<td>52</td>
						</tr>
						<tr>
							<td>172</td>
							<td>James V. Foreman</td>
							<td>4881 Adams Drive, Houston, TX 77002</td>
							<td>Male</td>
							<td>Sports instructor</td>
							<td>32</td>
						</tr>
						<tr>
							<td>171</td>
							<td>Dallas V. Jones</td>
							<td>2672 Broaddus Avenue, Bowling Green, KY 42103</td>
							<td>Male</td>
							<td>Tractor driver</td>
							<td>45</td>
						</tr>
						<tr>
							<td>170</td>
							<td>Patricia R. Lohman</td>
							<td>2653 Courtright Street, Garrison, ND 58540</td>
							<td>Female</td>
							<td>Counseling psychologist</td>
							<td>24</td>
						</tr>
						<tr>
							<td>169</td>
							<td>Lee H. Young</td>
							<td>4097 Cambridge Place, Cockeysville, MD 21030</td>
							<td>Male</td>
							<td>Refractory mason</td>
							<td>24</td>
						</tr>
						<tr>
							<td>168</td>
							<td>Melina T. Reza</td>
							<td>68 Elk Creek Road, Chamblee, GA 30341</td>
							<td>Female</td>
							<td>Manpower development manager</td>
							<td>40</td>
						</tr>
						<tr>
							<td>167</td>
							<td>Sandra P. Swain</td>
							<td>3563 Wolf Pen Road, San Jose, CA 95134</td>
							<td>Female</td>
							<td>Mortgage banker</td>
							<td>32</td>
						</tr>
						<tr>
							<td>166</td>
							<td>Thomas K. Herrman</td>
							<td>4342 Despard Street, Atlanta, GA 30331</td>
							<td>Male</td>
							<td>Scientific photographer</td>
							<td>47</td>
						</tr>
						<tr>
							<td>165</td>
							<td>Nick M. Gilligan</td>
							<td>4951 North Bend River Road, Lexington, KY 40505</td>
							<td>Male</td>
							<td>Supply manager</td>
							<td>42</td>
						</tr>
						<tr>
							<td>164</td>
							<td>Ronald S. Keefe</td>
							<td>4388 Goff Avenue, Grand Rapids, MI 49508</td>
							<td>Male</td>
							<td>Landscaping worker</td>
							<td>22</td>
						</tr>
						<tr>
							<td>163</td>
							<td>William C. Wright</td>
							<td>2653 Pyramid Valley Road, Cedar Rapids, IA 52404</td>
							<td>Male</td>
							<td>Political geographer</td>
							<td>33</td>
						</tr>
						<tr>
							<td>162</td>
							<td>Jarrod D. Jones</td>
							<td>3827 Bingamon Road, Garfield Heights, OH 44125</td>
							<td>Male</td>
							<td>Manpower development advisor</td>
							<td>64</td>
						</tr>
						<tr>
							<td>161</td>
							<td>Glenda J. Stewart</td>
							<td>3482 Pursglove Court, Rossburg, OH 45362</td>
							<td>Female</td>
							<td>Cost consultant</td>
							<td>28</td>
						</tr>
						<tr>
							<td>8</td>
							<td>Charles D. Horst</td>
							<td>1636 Walnut Hill Drive Cincinnati, OH 45202</td>
							<td>Male</td>
							<td>Financial investigator</td>
							<td>29</td>
						</tr>
						<tr>
							<td>7</td>
							<td>Antonio J. Forbes</td>
							<td>403 Snyder Avenue Charlotte, NC 28208</td>
							<td>Male</td>
							<td>Faller</td>
							<td>32</td>
						</tr>
						<tr>
							<td>6</td>
							<td>Barbra K. Hurley</td>
							<td>1241 Canis Heights Drive Los Angeles, CA 90017</td>
							<td>Female</td>
							<td>Service technician</td>
							<td>26</td>
						</tr>
						<tr>
							<td>5</td>
							<td>Clara Gilliam</td>
							<td>63 Woodridge Lane Memphis, TN 38138</td>
							<td>Female</td>
							<td>Programmer</td>
							<td>24</td>
						</tr>
						<tr>
							<td>1</td>
							<td>Bruce Tom</td>
							<td>656 Edsel Road Sherman Oaks, CA 91403</td>
							<td>Male</td>
							<td>Driver</td>
							<td>36</td>
						</tr>
					</table>
				</center>
			</div>
		</div>

	</div>
</body>
</html>