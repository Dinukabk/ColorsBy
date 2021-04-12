<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">
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
						<li class="nav-item"><a href="./login_01.jsp"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

<<<<<<< HEAD
=======
          <!-- <div class="top-row"> -->
            <div class="field-wrap">
              <label>
                Full Name<span class="req">*</span>
              </label>
              <input type="text" name="fullname" pattern="[A-Za-z.\s]{1,}"required autocomplete="off" title="Fullname should only contain letters. e.g. john" />
            </div>
            <div class="field-wrap">
            <label>
              username<span class="req">*</span>
            </label>
            <input type="text" name="ArtistId"  pattern="[0-9]{10}" required autocomplete="off" title="ID pattern =  Adhaar no(10 digit)"/>
          </div>
            <div class="field-wrap">
              <label>
                password<span class="req">*</span>
              </label>
              <input type="text" name="state"  pattern="[A-Za-z]{1,}" required autocomplete="off" />
            </div>
            <div class="field-wrap">
              <label>
                AddressLine 1<span class="req">*</span>
              </label>
              <input type="text" name="city"  pattern="[A-Za-z]{1,}" required autocomplete="off" />
            </div>
            <div class="field-wrap">
              <label>
                AddressLine 2<span class="req">*</span>
              </label>
              <input type="text" name="pincode" Pattern= "[0-9]{6}" required autocomplete="off" title="pincode should contain 6 digit " />
            </div>
            <div class="field-wrap">
              <label>
                City<span class="req">*</span>
              </label>
              <input type="text" name="mobileno" Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no." />
            </div>
            
>>>>>>> refs/remotes/origin/Ashan

	<!-- For demo purpose -->
	<div class="container">
		<div class="pt-5 text-white">
			<header class="py-5 mt-5">
				<h1 class="display-4">This is test project</h1>
				<p class="lead mb-0">Get ready gys this is the home page heshan
					make this</p>
				<p class="lead mb-0">
					LEADER Miyuru
					<!-- <a href="https://bootstrapious.com" class="text-white">
																	<u>Bootstrapious</u></a> -->
				</p>
			</header>
			<div class="py-5">
				<p class="lead">
					A- <strong class="font-weight-bold">We need your ideas.we
						need a fixed colour </strong> if you have a any idea leave a comment in
					discode group <strong class="font-weight-bold">recusandae
					</strong>placeat! Voluptatum voluptate, ex modi illum quas nam distinctio.
				</p>
				<p class="lead">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum.</p>
			</div>
		</div>
	</div>

<<<<<<< HEAD
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
=======
          <div class="field-wrap">
            <label>
              Email<span class="req">*</span>
            </label>
            <input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid email"/>
          </div>

          <div class="field-wrap">
            <label>
              Mobile No :<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          

          <button type="submit" class="button button-block"/>Get Started</button>

          </form>

        </div>

     <!-- tab-content -->

</div> 
<!-- /form -->
<%-- <% /* String passThis = request.getParameter("loginid");
        request.setAttribute("param1",passThis); */
        HttpSession httpSession = request.getSession();
        String id = request.getParameter("email");
        httpSession.setAttribute("login1",id );
        %> --%>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

>>>>>>> refs/remotes/origin/Ashan
</body>
</html>