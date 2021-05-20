<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/custom.css">
<h1>Colors By Diyaa</h1>

<meta charset="ISO-8859-1">
<title>Artist</title>



<div class="navbar">
	<a href="index.jsp">Home</a> <a href="About_us.jsp">About Us</a> <a
		href="My_profile.jsp">My Profile</a> <a href="EventDataDisplay.jsp">Events</a>
	<a href="gallery_option.jsp">Gallery options</a> <a
		onclick="location.href = 'Servlet_GalleryLogin'">Artwork</a> <a
		onclick="location.href = 'Servlet_AddPainting'">Upload Painting</a> <a
		onclick="location.href = 'requestLoginServlet'">Special Requests</a> <a
		onclick="location.href = 'NegoLoginServlet'">Negotiate Price
		Requests</a> <a href="frontpage.jsp">Logout</a> <a href="#"
		class="navbar1"> <%
 HttpSession httpSession = request.getSession();
 String id = request.getParameter("email");
 httpSession.setAttribute("login1", id);
 out.println("hii " + httpSession.getAttribute("login1"));
 String a = (String) httpSession.getAttribute("login1");
 %>
	</a>
</div>
</head>
<body>





	<div class="main-container">

		<!-- HEADER -->
		<header class="block">
			<ul class="header-menu horizontal-list">
				<li><a class="header-menu-tab" href="Gallery_All.jsp"><span
						class="icon entypo-cog scnd-font-color"></span>Paintings</a></li>
				<li><a class="header-menu-tab" href="Artist.jsp"><span
						class="icon fontawesome-user scnd-font-color"></span>Artist
						Profile</a></li>

				<li><a class="header-menu-tab" href="index.jsp"><span
						class="icon fontawesome-star-empty scnd-font-color"></span>Log Out</a>
				</li>
			</ul>
			<div class="profile-menu">
				<p>
					Artist Dashboard COLORS BY DIYAA <a href="#26"><span
						class="entypo-down-open scnd-font-color"></span></a>
				</p>
				<div class="profile-picture small-profile-picture">
					<img width="40px" alt="Anne Hathaway picture"
						src="./pictures/Logo.png">
				</div>
			</div>
		</header>

		<!-- LEFT-CONTAINER -->
		<div class="left-container container">
			<div class="menu-box block">
				<!-- MENU BOX (LEFT-CONTAINER) -->
				<h2 class="titular">MENU BOX</h2>
				<ul class="menu-box-menu">
					<li><a class="menu-box-tab" href="ArtistInsert.jsp"><span
							class="icon fontawesome-envelope scnd-font-color"></span>Add
							Artist
							<div class="menu-box-number"></div></a></li>
					<li><a class="menu-box-tab" href="ArtistRetrieve.jsp"><span
							class="icon entypo-paper-plane scnd-font-color"></span>Artist
							List
							<div class="menu-box-number"></div></a></li>
					<li><a class="menu-box-tab" href="ArtistPdf.jsp"><span
							class="icon entypo-calendar scnd-font-color"></span>Generate
							Artist Report
							<div class="menu-box-number"></div></a></li>
					<li><a class="menu-box-tab" href="UpdateArtist.jsp"><span
							class="icon entypo-cog scnd-font-color"></span>Update Artist
							Details</a></li>
					<li><a class="menu-box-tab" href="DeleteArtist.jsp"><sapn
								class="icon entypo-chart-line scnd-font-color"></sapn>Delete
							Artist Details </a></li>
				</ul>
			</div>
			<div class="donut-chart-block block">
				<!-- DONUT CHART BLOCK (LEFT-CONTAINER) -->

				<ul class="os-percentages horizontal-list">
			</div>
			<div class="line-chart-block block clear">
				<!-- LINE CHART BLOCK (LEFT-CONTAINER) -->
				<div class="line-chart">
					<!-- LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
					<div class='grafico'>
						<ul class='eje-y'>
							<li data-ejeY='30'></li>
							<li data-ejeY='20'></li>
							<li data-ejeY='10'></li>
							<li data-ejeY='0'></li>
						</ul>
						<ul class='eje-x'>
							<li>Apr</li>
							<li>May</li>
							<li>Jun</li>
						</ul>
						<span data-valor='25'> <span data-valor='8'> <span
								data-valor='13'> <span data-valor='5'> <span
										data-valor='23'> <span data-valor='12'> <span
												data-valor='15'> </span></span></span></span></span></span></span>
					</div>
					<!-- END LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
				</div>

				</li>
				</ul>
			</div>
			<div class="media block">
				<!-- MEDIA (LEFT-CONTAINER) -->
				<div id="media-display">
					<a class="media-btn play" href="#23"><span
						class="fontawesome-play"></span></a>
				</div>
				<div class="media-control-bar">
					<a class="media-btn play" href="#23"><span
						class="fontawesome-play scnd-font-color"></span></a>
					<p class="time-passed">
						4:15 <span class="time-duration scnd-font-color">/ 9:23</span>
					</p>
					<a class="media-btn volume" href="#24"><span
						class="fontawesome-volume-up scnd-font-color"></span></a> <a
						class="media-btn resize" href="#25"><span
						class="fontawesome-resize-full scnd-font-color"></span></a>
				</div>
			</div>

		</div>

		<!-- MIDDLE-CONTAINER -->
		<div class="middle-container container">
			<div class="profile block">
				<!-- PROFILE (MIDDLE-CONTAINER) -->
				<a class="add-button" href="#28"><span
					class="icon entypo-plus scnd-font-color"></span></a>
				<div class="profile-picture big-profile-picture clear">
					<img width="150px" alt="Anne Hathaway picture"
						src="./pictures/Logo.png">
				</div>
				<h1 class="user-name">ARTIST DASHBOARD</h1>
				<div class="profile-description">
					<p class="scnd-font-color">Colors By Diyaa</p>
				</div>
				<ul class="profile-options horizontal-list">
					<li><a class="comments" href="#40"><p>
								<span class="icon fontawesome-comment-alt scnd-font-color"></span>23</li>
					</p>
					</a>
					<li><a class="views" href="#41"><p>
								<span class="icon fontawesome-eye-open scnd-font-color"></span>841</li>
					</p>
					</a>
					<li><a class="likes" href="#42"><p>
								<span class="icon fontawesome-heart-empty scnd-font-color"></span>49</li>
					</p>
					</a>
				</ul>
			</div>


		</div>


		<!-- RIGHT-CONTAINER -->
		<div class="right-container container">
			<div class="join-newsletter block">
				<!-- JOIN NEWSLETTER (RIGHT-CONTAINER) -->
				<h2 class="titular">Send mail</h2>
				<div class="input-container">
					<input type="text" placeholder="yourname@gmail.com"
						class="email text-input">
					<div class="input-icon envelope-icon-newsletter">
						<span class="fontawesome-envelope scnd-font-color"></span>
					</div>
				</div>
				<a class="subscribe button" href="#21"></a>
			</div>

		</div>
		<!-- end right-container -->
	</div>
	<!-- end main-container -->
</body>
</html>






</body>
</html>