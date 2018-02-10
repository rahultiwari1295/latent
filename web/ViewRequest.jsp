<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View Friends Requests..</title>
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
.style48 {	color: #FFFFFF;
	font-weight: bold;
	font-size: 13px;
}
.style50 {color: #FF00FF; font-weight: bold; font-size: 13px; }
.style51 {color: #009900; font-weight: bold; }
.style7 {color: #FFFFFF}
.style9 {color: #FF0000; font-weight: bold; }
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
            <h2><span class="style36 style35 style22">Friend Requests To<span class="style24"> <%=(String)application.getAttribute("uname")%></span><span class="style41">..</span></span></h2>
            <p>&nbsp;</p>
            <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
              <table width="933" border="2" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                <tr>
                  <td  width="157" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style9">Username</div></td>
                  <td  width="165" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style9">E-mail</div></td>
                  <td  width="134" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style9">Mobile</div></td>
                  <td  width="216" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style9">Address</div></td>
                  <td  width="109" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style9">Gender</div></td>
                  <td  width="111" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style9">Status</div></td>
                </tr>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
                <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s6=rs.getString(4);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
										
											
						
					%>
                <tr>
                  <td  width="157" height="54" align="center" valign="middle" class="style48" style="color:#FF00FF;">&nbsp;&nbsp;
                  <%out.println(s1);%>                  </td>
                  <td  width="165" align="center" valign="middle" class="style50"><%out.println(s6);%></td>
                  <td  width="134" height="54" align="center" valign="middle" class="style50">&nbsp;&nbsp;
                  <%out.println(s3);%>                  </td>
                  <td height="54" align="center"  valign="middle" class="style50">&nbsp;&nbsp;
                      <%out.println(s4);%>                  </td>
                  <td height="54" align="center"  valign="middle" class="style50">&nbsp;&nbsp;
                      <%out.println(s5);%>                  </td>
                  <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                  <td  width="111" valign="middle" height="54" style="color:#000000;"align="center"><a href="updaterequest1.jsp?rid=<%=j%>" class="style51"><strong>waiting</strong></a></td>
                  <%
						}
						else
						{
						%>
                  <td  width="23" height="54"align="center" valign="middle" class="style7" style="color:#000000;"><span class="style21">
                    <%out.println(status);%>
                  </span><span class="style21">&nbsp;</span></td>
                  <%
						}
						%>
                </tr>
                <%
						}
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
              <p align="center"><a href="UserMain.jsp" class="style20"></a></p>
              <table width="470" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="462"><div align="right"><a href="UserMain.jsp" class="style20"><strong>Back</strong></a></div></td>
                </tr>
              </table>
            </form>
      </div>
        
        <div class="cleaner"></div>
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