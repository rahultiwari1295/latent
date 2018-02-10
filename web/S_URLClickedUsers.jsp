<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Clicked Shortened URLs and Corresponding Users..</title>
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
.style94 {
	color: #000000;
	font-weight: bold;
	font-size: 15px;
	font-family: "Times New Roman", Times, serif;
}
.style117 {font-size: 14px; color: #FF0000;}
.style121 {color: #009900; font-weight: bold; font-size: 14px; }
.style128 {color: #009900;
	font-weight: bold;
}
.style133 {	font-size: 17px;
	color: #000000;
	font-weight: bold;
}
.style134 {color: #0000FF;
	font-size: 20px;
}
.style140 {color: #FF00FF; font-weight: bold; font-size: 14px; font-family: "Times New Roman", Times, serif; }
.style141 {color: #FF6600}
.style142 {color: #FF6600; font-weight: bold; font-size: 14px; }
.style143 {color: #009900}
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
            <h2 class="style143">Clicked Shortened URLs  and Corresponding  Users..</h2>
            <%@ include file="connect.jsp" %>
                <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select distinct(username) from urlclick"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							
								s1=rs.getString(1);
						
								
								String present="true";
								
							
					if(present=="true"){%>
            <table width="421" border="1" align="center" cellspacing="2">
              <tr>
                <td  valign="middle" height="25" style="color: #2c83b0;" colspan="2"><div align="center" class="style117"><span class="style133">User  Name</span> <span class="style134"><span class="style128">-&gt;</span> 
                <%out.println(s1);%>
                </span></div></td>
              </tr>
              <tr>
                <td  width="168" height="25" valign="middle" style="color: #2c83b0;"><div align="center" class="style121 style141">Clicked URL </div></td>
                <td  width="155" valign="middle" style="color: #2c83b0;"><div align="center" class="style142">Clicked Count </div></td>
              </tr>
              <%present="false";}
			 
			 
			 					int count=0;
								String query1="select * from urlclick where username='"+s1+"' order by url_name ASC"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while ( rs1.next() )
								{
			 
									count=rs1.getInt(4);
									s2=rs1.getString(3);
						
							
			 
			 %>
              <tr>
                <td height="43" align="center"  valign="middle"><span class="style140">
                  <%out.println(s2);%>
                </span></td>
                <td align="center"  valign="middle"><span class="style140">
                  <%out.println(count);%>
                </span></td>
              </tr>
              <%
						}%>
              <br/>
        </table>

              <%}
            
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <p>&nbsp;</p>
              <p align="center"><a href="UserMain.jsp" class="style20"></a></p>
              <table width="529" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="521"><div align="right"><a href="ServerMain.jsp" class="style94"><strong>Back</strong></a></div></td>
                </tr>
        </table>
              <label></label>
      </div>
        
        <div class="cleaner"></div>
    </div>
    
    <div class="col_w300 float_r">
      <h2>Sidebar Menu </h2>
      <p><a href="S_URLClickedUsers.jsp"><strong>Home</strong></a></p>
      <p><a href="index.html"><strong>Log Out</strong></a></p>
      <p class="news_box"><a href="#"></a></p>
      <h2 class="news_box">&nbsp;</h2>
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