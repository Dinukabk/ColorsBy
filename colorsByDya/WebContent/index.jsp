<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<h2>Colors By Diyaa</h2>
  <div class="form">
        <div id="signup">
          <h1>Sign Up </h1>

          <form action="SignupServlet" method="post">

          <!-- <div class="top-row"> -->
            <div class="field-wrap">
              <label>
                Artist ID<span class="req">*</span>
              </label>
              <input type="text" name="artist_id" pattern="[A-Za-z.\s]{1,}"required autocomplete="off" />
            </div>
            <div class="field-wrap">
            <label>
              Name<span class="req">*</span>
            </label>
            <input type="text" name="name"  pattern="[A-Za-z.\s]{1,}" required autocomplete="off" "/>
          </div>
            <div class="field-wrap">
              <label>
                Phone Number<span class="req">*</span>
              </label>
              <input type="text" name="phone_no"  pattern="[A-Za-z]{1,}" required autocomplete="off" />
            </div>
            
            <div class="field-wrap">
              <label>
                Email<span class="req">*</span>
              </label>
              <input type="text" name="email" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Description<span class="req">*</span>
              </label>
              <input type="text" name="discription" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            
            <div class="field-wrap">
              <label>
                Address Line 1<span class="req">*</span>
              </label>
              <input type="text" name="add_line_01"  pattern="[A-Za-z]{1,}" required autocomplete="off" />
            </div>
            <div class="field-wrap">
              <label>
                Address Line 2<span class="req">*</span>
              </label>
              <input type="text" name="add_line_02" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            <div class="field-wrap">
              <label>
                Postal Code<span class="req">*</span>
              </label>
              <input type="text" name="postal_code" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Province<span class="req">*</span>
              </label>
              <input type="text" name="province" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                City<span class="req">*</span>
              </label>
              <input type="text" name="city" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Country<span class="req">*</span>
              </label>
              <input type="text" name="country" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                User Name<span class="req">*</span>
              </label>
              <input type="text" name="username" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Password<span class="req">*</span>
              </label>
              <input type="text" name="password" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>
            
            <div class="field-wrap">
              <label>
                A_Admin_ID<span class="req">*</span>
              </label>
              <input type="text" name="a_admin_id" Pattern= "[A-Za-z]{1,}" required autocomplete="off"  />
            </div>

            <!-- <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off"/>
            </div> -->
            
          <!-- </div> -->
          

         
          

          <button type="submit" class="button button-block"/>Sign Up</button>

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

</body>
</html>
 