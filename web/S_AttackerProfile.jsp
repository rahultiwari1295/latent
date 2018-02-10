<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Attacker Profile Details..</title>
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
.style21 {color: #0000FF; font-weight: bold; }
.style41 {font-size: 28px}
.style22 {color: #009900}
.style24 {font-size: 28px; color: #FF00FF; }
.style26 {font-size: 14px}
.style26 {color: #3366FF}
.style40 {color: #FF00FF}
.style42 {color: #CC3300}
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
                    <li><a href="UserLogin.jsp">User</a></li>
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
            <h2><span class="style36 style35 style22"><span class="style41">Inference Attacker</span><span class="style24"> <%=request.getParameter("attacker")%></span><span class="style41">'s Profile..</span></span></h2>
            <p>&nbsp;</p>
            <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
              <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
                <%@ include file="connect.jsp" %>
                <%@ page import="org.bouncycastle.util.encoders.Base64"%>
                <%
						
						String user=request.getParameter("attacker");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(9);
								
								
								
								
								
								
					%>
                <tr>
                  <td width="230" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
                  </a></strong></div></td>
                </tr>
                <tr>
                  <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style42 style26" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
                  <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style40 style10" style="margin-left:20px;"><strong>
                    <%out.println(s1);%>
                  </strong></div></td>
                </tr>
                <tr>
                  <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style42 style26" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                  <td  width="164" valign="middle" height="40"><div align="left" class="style40 style10" style="margin-left:20px;"><strong>
                    <%out.println(s2);%>
                  </strong></div></td>
                </tr>
                <tr>
                  <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style42 style26" style="margin-left:20px;"><strong>Address</strong></div></td>
                  <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style40 style10" style="margin-left:20px;"><strong>
                    <%out.println(s3);%>
                  </strong></div></td>
                </tr>
                <tr>
                  <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style42 style26" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
                  <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style40 style10" style="margin-left:20px;"><strong>
                    <%out.println(s5);%>
                  </strong></div></td>
                </tr>
                <tr>
                  <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style42 style26" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
                  <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                      <div align="left" class="style22 style10" style="margin-left:20px;"><strong>
                      <%out.println(s4);%>
                      </strong></div></td>
                </tr>
                <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
              </table>
              <p>&nbsp;</p>
              <p align="right"><a href="S_InferenceAttackers.jsp" class="style20"><strong>Back</strong></a></p>
          </form>
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
   	  <div id="templatemo_footer"></div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>