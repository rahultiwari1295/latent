<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tweet Post Details..</title>
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
.style24 {font-size: 28px; color: #FF00FF; }
.style40 {color: #FF00FF}
.style15 {color: #FF0000}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style70 {	color: #FF6600;
	font-weight: bold;
}
.style73 {color: #FF6600}
.style81 {font-size: 11px}
.style82 {
	color: #FF00FF;
	font-size: 11px;
	font-weight: bold;
}
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
                    <li><a href="UserLogin.jsp" class="style5">User</a></li>
                    <li><a href="ServerLogin.jsp" class="current">Tweet Server</a></li>
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
        <h2><span class="style36 style35 style22"><span class="style41">Tweet Post </span><span class="style24"><%=request.getParameter("tname")%></span><span class="style41">'s Details..</span></span></h2>
            <%@ include file="connect.jsp" %>
 	 <%
						
						String tname=request.getParameter("tname");
						int a=0;
						String str2="select * from ttopic where tname='"+tname+"' "; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						if ( rs2.next() )
						{
							int id=rs2.getInt(1);	
							String des = rs2.getString(3);
							String uses = rs2.getString(4);
							String creator = rs2.getString(7);
							String date= rs2.getString(6);

      					
		%>
        <table width="620" border="1" align="center" cellpadding="0" cellspacing="0" >
          <tr >
            <td width="183" rowspan="4" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                <div align="center"><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="tweet_Pic.jsp?id=<%=id%>" style="width:160px; height:180px;" />
                </a> </div>
            </div></td>
            <td height="47" ><div align="center" class="style70 style73">Tweet Posted By </div></td>
            <td width="257"><div align="center" class="style40"><strong><%= creator%></strong></div></td>
          </tr>
          <tr >
            <td height="77" ><div align="center" class="style70"> Tweet Description </div></td>
            <td>
                <textarea name="textarea" cols="40" rows="5"><%= des%></textarea>            </td>
          </tr>
          <tr >
            <td height="72" ><div align="center" class="style70">Tweet Uses </div></td>
            <td><div align="center" class="style40 style81"><strong><%= uses%></strong></div></td>
          </tr>
          <tr >
            <td width="172" height="39" ><div align="center" class="style70">Date </div></td>
            <td><div align="center" class="style82"><%= date%></div></td>
          </tr>
          <p>&nbsp;</p>
        </table>
		<%}
		
		%>
        <p>&nbsp;</p>
              <p align="right"><a href="S_RetweetsWithComments.jsp" class="style20"><strong>Back</strong></a></p>
      </div>
        
        <div class="cleaner"></div>
    </div>
    
  <div class="col_w300 float_r">
    	<h2>Sidebar Menu </h2>
      <p><a href="#"><strong>Home</strong></a></p>
      <p><a href="index.html"><strong>Log Out </strong></a></p>
    <p class="news_box">&nbsp;</p>
  </div>
    <div class="cleaner"></div>
</div> <!-- end of main -->

<div id="templatemo_footer_wrapper_01">
	<div id="templatemo_footer_wrapper_02">
    	<div id="templatemo_footer">
    	  <div class="cleaner h20"></div>
            
      </div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>