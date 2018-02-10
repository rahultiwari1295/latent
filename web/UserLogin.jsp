<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Login Page..</title>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css">
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/carouFredSel.js"></script>
        <script type="text/javascript" src="js/main.js"></script>


<%@ include file="statusbar.html" %>
</head>
<body>


<div id="templatemo_main">
	
    <div class="col_w600 float_l">
    	<div class="content_box">
            <h2><span class="style18">Welcome To User Login</span>..</h2>
            <div class="image_wrapper image_fl">
                <img src="images/templatemo_image_01.jpg" alt="Image" />
            </div>
            <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
              <table width="403" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="149" height="62" align="center"><div align="center" class="style19">
                    <div align="left">Name (required)</div>
                  </div></td>
                  <td width="240"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="46" align="center"><div align="center" class="style19">
                    <div align="left">Password (required)</div>
                  </div></td>
                  <td><input type="password" id="pass" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><span class="style19">
                    <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                    New User?</span><a href="UserRegister.jsp" class="style20"> Register </a></td>
                </tr>
                <tr>
                  <td height="26">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
              <p align="right"><a href="index.html" class="style21"><strong>Back</strong></a></p>
          </form>
            </div>
        
        <div class="cleaner"></div>
    </div>
    
  <div class="col_w300 float_r">
    	<h3>Sidebar Menu </h3>
      <p><a href="UserLogin.jsp"><strong>Home</strong></a></p>
      <p><a href="index.html"><strong>Index Page</strong></a></p>
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