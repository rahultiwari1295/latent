r <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Registration Page..</title>
<%@ include file="statusbar.html" %>
<meta name="keywords" content="Holiday, free CSS template, clean, neat, aqua, white" />
<meta name="description" content="Holiday is a clean and neat free CSS template using aqua and white colors." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>



<style type="text/css">
<!--
.style4 {
	color: #9933FF;
	font-size: 25px;
}
.style22 {color: #FF00FF}
.style44 {color: #00CC00}
.style45 {	color: #996600;
	font-weight: bold;
}
.style11 {
	color: #000000;
	font-weight: bold;
	font-size: 14px;
}
-->
</style>
</head>
<body>


<div id="templatemo_main">
	
    <div class="col_w600 float_l">
    	<div class="content_box">
            <h2 class="style22">Welcome to User Registration..</h2>
            <form action="UserRegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
              <label for="name"><span class="style45">User Name (required)</span></label>
              <p class="style45">
                <input id="name" name="userid" class="text" />
              </p>
              <span class="style45">
              <label for="password">Password (required)</label>
              </span>
              <p class="style45">
                <input type="password" id="password" name="pass" class="text" />
              </p>
              <span class="style45">
              <label for="email">Email Address (required)</label>
              </span>
              <p class="style45">
                <input id="email" name="email" class="text" />
              </p>
              <span class="style45">
              <label for="mobile">Mobile Number (required)</label>
              </span>
              <p class="style45">
                <input id="mobile" name="mobile" class="text" />
              </p>
              <span class="style45">
              <label for="address">Your Address</label>
              </span>
              <p class="style45">
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </p>
              <span class="style45">
              <label for="dob">Date of Birth (required)<br />
              </label>
              </span>
              <p class="style45">
                <input id="dob" name="dob" class="text" />
              </p>
              <span class="style45">
              <label for="gender">Select Gender (required)</label>
              </span>
              <p class="style45">
                <select id="s1" name="gender" style="width:480px;" class="text">
                  <option>--Select--</option>
                  <option>MALE</option>
                  <option>FEMALE</option>
                </select>
              </p>
              <p class="style45">&nbsp;</p>
              <span class="style45">
              <label for="pincode"></label>
              <label for="location"></label>
              </span>
              <p class="style44"> <span class="style45">
                <label for="pic">Select Profile Picture (required)</label>
                </span>
                  <input type="file" id="pic" name="pic" class="text" />
              </p>
              <p><br />
                  <input name="submit" type="submit" value="REGISTER" />
              </p>
            </form>
    	    <div align="center"><a href="index.html" class="style11"><strong>Back</strong></a></div>
    	</div>
        
        <div class="cleaner"></div>
    </div>
    
  <div class="col_w300 float_r">
    	<h2>Sidebar Menu </h2>
      <p><a href="UserRegister.jsp"><strong>Home</strong></a></p>
      <p><a href="UserLogin.jsp"><strong>User Login </strong></a></p>
    <p class="news_box">&nbsp;</p>
  </div>
    <div class="cleaner"></div>
</div> <!-- end of main -->

<div id="templatemo_footer_wrapper_01">
	<div id="templatemo_footer_wrapper_02">
   	  <div id="templatemo_footer"></div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>