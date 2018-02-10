<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tweet Server Login Page..</title>
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
.style18 {color: #FF00FF}
.style19 {color: #FF0000; font-weight: bold; }
.style20 {color: #FF00FF; font-weight: bold; }
.style21 {color: #0000FF; font-weight: bold; }
.style25 {color: #FF00FF;
	font-size: 20px;
}
-->
</style>
</head>
<body>


<div id="templatemo_main">
	
    <div class="col_w600 float_l">
    	<div class="content_box">
            <h2><span class="style25">Welcome to Tweet Server Login Page..</span></h2>
            <div class="image_wrapper image_fl">
                <img src="images/templatemo_image_01.jpg" alt="Image" />
            </div>
            <form id="form1" name="form1" method="post" action="ServerAuthentication.jsp">
              <table width="423" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="197" height="46" align="center"><span class="style19">
                    <label for="name">Server Name (required)</label>
                  </span> </td>
                  <td width="212"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="72" align="center"><span class="style19">Password (required)</span></td>
                  <td><input type="password" id="pass" name="pass" class="text" /></td>
                </tr>

                <tr>
                  <td>&nbsp;</td>
                  <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" /></td>
                </tr>
              </table>
              <p align="right"><a href="index.html" class="style20">Back</a></p>
            </form>
    	</div>
        
        <div class="cleaner"></div>
    </div>
    
    
 

<div id="templatemo_footer_wrapper_01">
	<div id="templatemo_footer_wrapper_02">
   	  <div id="templatemo_footer"></div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>