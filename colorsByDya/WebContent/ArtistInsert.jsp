
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Insert Artist Details</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<h2>Colors By Diyaa</h2>
  <div class="form">
        <div id="signup">
          <h1>Insert Artist Details</h1>

          <form action="artistinsert" method="post">

          <!-- <div class="top-row"> -->
            <div class="field-wrap">
              
            <label>
              Name<span class="req">*</span>
            </label>
            <input type="text" name="name"   />
          </div>
            <div class="field-wrap">
              <label>
                Phone Number<span class="req">*</span>
              </label>
              <input type="text" name="phone_no"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Email<span class="req">*</span>
              </label>
              <input type="text" name="email"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Description<span class="req">*</span>
              </label>
              <input type="text" name="discription" />
            </div>
            
            
            <div class="field-wrap">
              <label>
                Address Line 1<span class="req">*</span>
              </label>
              <input type="text" name="add_line_01"   />
            </div>
            <div class="field-wrap">
              <label>
                Address Line 2<span class="req">*</span>
              </label>
              <input type="text" name="add_line_02"   />
            </div>
            <div class="field-wrap">
              <label>
                Postal Code<span class="req">*</span>
              </label>
              <input type="text" name="postal_code"   />
            </div>
            
            <div class="field-wrap">
              <label>
                Province<span class="req">*</span>
              </label>
              <input type="text" name="province"   />
            </div>
            
            <div class="field-wrap">
              <label>
                City<span class="req">*</span>
              </label>
              <input type="text" name="city"   />
            </div>
            
            <div class="field-wrap">
              <label>
                Country<span class="req">*</span>
              </label>
              <input type="text" name="country"  />
            </div>
            
            <div class="field-wrap">
              <label>
                User Name<span class="req">*</span>
              </label>
              <input type="text" name="username"  />
            </div>
            
            <div class="field-wrap">
              <label>
                Password<span class="req">*</span>
              </label>
              <input type="text" name="password"   />
            </div>
            
            <div class="field-wrap">
              
          <button type="submit" class="button button-block"/>Add</button>

          </form>

        </div>

     <!-- tab-content -->

</div> 
<!-- /form -->

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

 