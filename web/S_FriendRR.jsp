<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All Friend Requests/Response..</title>
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
.style94 {
	color: #000000;
	font-weight: bold;
	font-size: 15px;
	font-family: "Times New Roman", Times, serif;
}
.style33 {font-size: 13px;
	color: #6666FF;
	font-weight: bold;
}
.style34 {font-size: 18px; color: #00FF00; }
.style36 {font-size: 18px; color: #FF3300; }
.style38 {font-size: 18px; color: #666666; }
.style48 {font-size: 14px; color: #FFFFFF; }
.style49 {	color: #990000;
	font-size: 13.5px;
}
.style50 {color: #FF9900;
	font-size: 13.5px;
	font-weight: bold;
}
.style52 {font-size: 12px}
.style55 {font-size: 16px}
.style64 {color: #0099FF}
.style65 {	color: #FF9900;
	font-size: 13.5px;
}
.style67 {color: #993300}
.style70 {font-size: 13.5px}
.style102 {color: #FF00FF}
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
            <h2><a href="#"><span class="style31 style46 style30 style22">All Friend Requests/Response..</span></a></h2>
              <table width="961" border="1" align="center">
                <tr>
                  <td width="42" height="47" align="center" valign="middle"><div align="center" class="style33 style49"><span class="style3 style67">Id </span></div></td>
                  <td width="129" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Request From </span></strong></div></td>
                  <td width="176" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Requested User </span></strong></div></td>
                  <td width="137" align="center" valign="middle"><div align="center" class="style55 style34 style65"><strong><span class="style3 ">Request To </span></strong></div></td>
                  <td width="167" align="center" valign="middle"><div align="center" class="style34 style50"><span class="style3 "> Request To Name </span></div></td>
                  <td width="112" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Status</span></strong></div></td>
                  <td width="152" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Date</span></strong></div></td>
                </tr>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
                <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
					   String query="select * from  frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                <tr>
                  <td height="111"><div align="center" class="style102 style52 style48"><strong><%=i%></strong></div></td>
                  <td><div align="center" class="style48 style52 style54">
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style102 style52 style48"><strong><%=s2 %></strong></div></td>
                  <td><div align="center" class="style52 style54">
                      <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style102 style52 style48"><strong><%=s3 %></strong></div></td>
                  <td><div align="center" class="style102 style54 style52 style48"><strong><%= s5%></strong></div></td>
                  <td><div align="center" class="style102 style54 style52 style48"><strong><%= s4%></strong></div></td>
                </tr>
                <%
		  }
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
              <table width="455" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="447"><div align="right"><a href="ServerMain.jsp" class="style94"><strong>Back</strong></a></div></td>
                </tr>
        </table>
              <label></label>
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