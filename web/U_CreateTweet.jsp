<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Posting Tweets..</title>
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
.style20 {color: #FF00FF; font-weight: bold; }
.style41 {font-size: 28px}
.style22 {color: #009900}
-->
</style>
</head>
<body>

<div id="templatemo_top_wrapper">
	<div id="templatemo_top">
		<div id="templatemo_header">
            
            <div>
              <table width="965" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="957"><p><span class="style4">Latent-data Privacy Preserving with Customized Data Utility for Social Network Data</span><span class="style4"></span></p>
                  </td>
                </tr>
              </table>
          </div>
            
        </div> <!-- end of header -->
        <div id="templatemo_middle">
        	<div id="templatemo_menu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="UserLogin.jsp" class="current">User</a></li>
                    <li><a href="ServerLogin.jsp">Tweet Server</a></li>
                </ul>
                
                <div id="search_box">
                    <form action="#" method="post">
                        <input type="text" value="Enter keyword here..." name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="submit" name="Search" value="" id="searchbutton" title="Search" />
                    </form>
                </div>
                <div class="cleaner"></div>
            </div> <!-- end of templatemo_menu -->
            
            <div id="mid_content">
            	<h2>Twitter -  Online Social Network </h2>
            	<p>Twitter is a popular online social network service for sharing short messages (tweets) among friends.</p>
          </div>
            
        </div> <!-- end of middle -->
	</div> <!-- end of top -->
</div> <!-- end of top wrapper -->

<div id="templatemo_main">
	
    <div class="col_w600 float_l">
    	<div class="content_box">
            <h2><span class="style36 style35 style22"><span class="style41">Posting Tweets.. </span><span class="style41"></span></span></h2>
            <p>&nbsp;</p>
            <form action="U_CreateTweetStatus.jsp" method="post" enctype="multipart/form-data" name="form1">
              <table width="450" height="354" align="center"  cellpadding="0" cellspacing="0"  >
                <tr>
                  <td valign="middle" height="40" style="color: #2c83b0;"><span class="style20">Tweet Name </span></td>
                  <td valign="middle" height="40" style="color:#000000;"><label>
                    <input name="tname" type="text" size="39" />
                  </label></td>
                </tr>
                <tr>
                  <td  width="191" valign="middle" height="118" style="color: #2c83b0;"><span class="style20">Tweet Description </span></td>
                  <td  width="257" valign="middle" height="118"><label>
                    <textarea name="des" cols="40" rows="6"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td  width="191" align="left" valign="middle" height="40" style="color: #2c83b0;"><span class="style20">Tweet Uses </span></td>
                  <td  width="257" align="left" valign="middle" height="40"><textarea name="uses" cols="40" rows="4"></textarea></td>
                </tr>
                <tr>
                  <td valign="middle" height="54" style="color: #2c83b0;"><span class="style20">Select Tweet Image </span></td>
                  <td valign="middle" height="54" style="color:#000000;"><label>
                    <input type="file" name="file" />
                  </label></td>
                </tr>
                <tr>
                  <td  width="191" align="left" valign="middle" height="70" style="color: #2c83b0;">&nbsp;</td>
                  <td  width="257" align="left" valign="middle" height="70"><label>
                    <div align="center">
                      <input type="submit" name="Submit" value="    Post Tweet    " style="height:35px; color:#000000; background-color:#00FF33"  />
                    </div>
                  </label></td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style20"><strong>Back</strong></a></p>
          </form>
      </div>
        
        <div class="cleaner"></div>
    </div>
    
  <div class="col_w300 float_r">
    	<h2>Sidebar Menu </h2>
      <p><a href="U_CreateTweet.jsp"><strong>Home</strong></a></p>
      <p><a href="index.html"><strong>Log Out </strong></a></p>
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