<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Friends..</title>
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
.style33 {font-size: 13px;
	color: #6666FF;
	font-weight: bold;
}
.style34 {font-size: 18px; color: #00FF00; }
.style36 {font-size: 18px; color: #FF3300; }
.style38 {font-size: 18px; color: #666666; }
.style48 {	font-size: 13px;
	color: #FFFFFF;
	font-weight: bold;
}
.style49 {color: #990000;
	font-size: 13.5px;
}
.style50 {color: #FF0000;
	font-size: 13.5px;
	font-weight: bold;
}
.style52 {font-size: 12px}
.style70 {font-size: 13.5px}
.style90 {color: #FF00FF; font-weight: bold; font-size: 13px; }
.style93 {color: #FF0000}
.style94 {
	color: #000000;
	font-weight: bold;
	font-size: 15px;
	font-family: "Times New Roman", Times, serif;
}
.style97 {
	font-size: 25px;
	color: #009900;
}
.style98 {color: #FF00FF}
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
            <h2 class="style97">User<span class="style98"> <%=(String)application.getAttribute("uname")%></span>'s Friends..</h2>
      <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
        <table width="957" align="center">
          <tr>
            <td width="69" height="47" align="center" valign="middle"><div align="center" class="style33 style49 style93"><span class="style3 ">Si No. </span></div></td>
            <td width="110" align="center" valign="middle"><div align="center" class="style36 style70 style93"><strong>Friend Image</strong></div></td>
            <td width="156" align="center" valign="middle"><div align="center" class="style36 style70 style93"><strong>Friend Name </strong></div></td>
            <td width="171" align="center" valign="middle"><div align="center" class="style34 style50"><span class="style93 style70"><strong>E-mail</strong></span></div></td>
            <td width="142" align="center" valign="middle"><div align="center" class="style38 style70 style93"><strong><span class="style3 ">Phone No. </span></strong></div></td>
            <td width="119" align="center" valign="middle"><div align="center" class="style38 style70 style93"><strong>DOB</strong></div></td>
            <td width="158" align="center" valign="middle"><div align="center" class="style38 style70 style93"><strong>Address</strong></div></td>
          </tr>
<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
          <%
 
      	
	      String s1,s2,s3,s4,s5,s6,s7,user1="";
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("uname");
						   	String query="select *  from user where username!='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									i=rs.getInt(1);
									s2=rs.getString(2);
										//String i=rs.getInt(1);;
										String email=rs.getString(4);
										String phone=rs.getString(5);										
										String address=rs.getString(6);	
										String dob=rs.getString(7);	

									Statement stmt9=connection.createStatement();
									String strQuery9 = "select requestfrom,requestto from frequest where ((requestfrom ='"+user+"' and requestto='"+s2+"') ||(requestfrom ='"+s2+"' and requestto='"+user+"'))and status ='Accepted' ";
									ResultSet rs9 = stmt9.executeQuery(strQuery9);
									if(rs9.next()==true)
									{
								
																			
												%>
          <tr>
            <td height="102"><div align="center" class="style90"><%=j%></div></td>
            <td><div align="center" class="style48 style52 style18">
                <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" width="100" height="100" alt="Submit" />
            </div></td>
            <td><div align="center" class="style90"><%=s2 %></div></td>
            <td><div align="center" class="style90"><%=email %></div></td>
            <td><div align="center" class="style90"><%=phone%></div></td>
            <td><div align="center" class="style90"><%=dob%></div></td>
            <td><div align="center" class="style90"><%=address%></div></td>
          </tr>
          <%
		  j+=1;}
	 
		
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
              <table width="452" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="444"><div align="right"><a href="UserMain.jsp" class="style94"><strong>Back</strong></a></div></td>
                </tr>
              </table>
              <label></label>
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