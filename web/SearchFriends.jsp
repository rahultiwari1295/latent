<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Searching Friends..</title>
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
.style22 {color: #009900}
.style49 {color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style42 {color: #009900; font-weight: bold; font-size: 14px; }
.style35 {	font-size: 25px;
	color: #FF00FF;
}
.style18 {color: #FF00FF}
.style72 {font-family: Arial, Helvetica, sans-serif}
.style79 {color: #00CC00;
	font-weight: bold;
}
.style81 {color: #CC9900; }
.style82 {	font-size: 14px;
	color: #CC6600;
	font-weight: bold;
}
.style83 {color: #CC6600; }
.style84 {color: #3366FF}
.style85 {color: #3366FF; font-weight: bold; }
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
            <h2><span class="style35">Search Friends.. </span></h2>
            <form id="form1" name="form1" method="post" action="SearchFriends.jsp">
              <table width="453" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="185" height="58"><div align="center">
                      <p class="style49">&nbsp;</p>
                    <p class="style42 style22">Enter Friend Name :</p>
                  </div></td>
                  <td width="254"><p>&nbsp; </p>
                      <p>
                        <input type="text" name="keyword" />
                    </p></td>
                </tr>
                <tr>
                  <td height="35" colspan="2"><div align="center">
                      <input class="art-button" name="submit" type="submit" value="Search" />
                  </div></td>
                </tr>
              </table>
              <p align="right">&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style20"><strong>Back</strong></a></p>
          </form>
      </div>
	  <div class="content_box">
            <h2><span class="style36 style35 style22"><span class="style18">Results Found.. </span><span class="style18">.. </span></span></h2>
            <div class="img"></div>
            <div class="post_content">
              <p><span class="news_content">
                <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
                <%@ page import="java.sql.*"%>
                <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
                <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(!keyword.equals(""))
										{
											
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into fsearch(username,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
											st3.executeUpdate (query3); 	   
								
							
											String query="select * from user where username!='"+user+"' and username  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												i=rs.getInt(1);
												s1=rs.getString(2);
												s2=rs.getString(4);
												s3=rs.getString(5);
												s4=rs.getString(6);
												s5=rs.getString(7);
												s6=rs.getString(8);
												s7=rs.getString(9);
												s8=rs.getString(11);
												
										
										
										
			  %>
              </span> </p>
              <table width="518" height="250" border="3" style="margin:5px 10px 10px 5px;">
                <tr>
                  <td rowspan="8" width="174" ><input  name="image2" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:170px; height:180px;" class="image_wrapper" />                  </td>
                  <td width="133" height="27" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">User Name :</span></div></td>
                  <td width="185" style="margin-left:20px; color:#000000;"><div align="left" class="style79 style84"><%=s1%></div></td>
                </tr>
                <tr>
                  <td height="25" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">E-Mail :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s2%></div></td>
                </tr>
                <tr>
                  <td height="30" align="left"><div align="left" class="style83"><span class="style82" style="margin-left:20px;">Mobile :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s3%></div></td>
                </tr>
                <tr>
                  <td height="22" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">Address :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s4%></div></td>
                </tr>
                <tr>
                  <td height="26" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">DOB :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s5%></div></td>
                </tr>
                <tr>
                  <td height="24" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">Gender :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s6%></div></td>
                </tr>
                <tr>
                  <td height="24" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">Kind Of User :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s8%></div></td>
                </tr>
                <tr>
                  <td height="46" align="left"><div align="left" class="style81"><span class="style82" style="margin-left:20px;">Status :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><p align="left" class="style85"><%=s7%><span style="float:right"><a href="updaterequest.jsp?rname=<%=s1%>&amp;site=<%=s8%>">
                      <input class="art-button" name="button2" type="button" value="Request" />
                  </a></span></p></td>
                </tr>
              </table>
              <p align="left"><span class="style72">
                <%
						
							
				
						
	  					}}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
              </span></p>
              <p align="right"><a href="UserMain.jsp" class="style20"><strong>Back</strong></a></p>
            </div>
	  </div>
        

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