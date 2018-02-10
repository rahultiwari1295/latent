<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Inference Attack Details on User Tweets..</title>
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
.style117 {font-size: 14px; color: #FF0000;}
.style121 {color: #009900; font-weight: bold; font-size: 14px; }
.style128 {color: #009900;
	font-weight: bold;
}
.style134 {color: #0000FF;
	font-size: 20px;
}
.style141 {color: #FF6600}
.style142 {color: #FF6600; font-weight: bold; font-size: 14px; }
.style144 {color: #FF00FF}
.style145 {
	color: #993300;
	font-weight: bold;
}
.style147 {color: #000000; font-weight: bold; font-size: 14px; font-family: "Times New Roman", Times, serif; }
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
            <h2><span class="style31 style46 style30  style35 style22">Inference Attack Details on User <span class="style144"><%=(String)application.getAttribute("uname")%></span>'s Tweets..</span></h2>
            <%@ include file="connect.jsp" %>
                <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
							String user=(String)application.getAttribute("uname");
						   	String query="select * from ttopic where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							
								s1=rs.getString(2);
						
								
								String present="true";
								
							
					if(present=="true"){%>
            <table width="866" border="1" align="center"  cellpadding="0" cellspacing="2">
              <tr>
                <td  valign="middle" height="25" style="color: #2c83b0;" colspan="3"><div align="center" class="style117"><span class="style145">Tweet Name</span> <span class="style134"><span class="style128">-&gt;</span> 
                      <%out.println(s1);%>
                </span></div></td>
              </tr>
              <tr>
                <td  width="151" valign="middle" style="color: #2c83b0;"><div align="center" class="style121 style141">Attack By</div></td>
                <td  width="558" height="25" valign="middle" style="color: #2c83b0;"><div align="center" class="style121 style141">Used Comment </div></td>
                <td  width="149" valign="middle" style="color: #2c83b0;"><div align="center" class="style142">Date</div></td>
              </tr>
              <%present="false";}
			 
			 
			 					int count=0;
								String query1="select * from attacker where tname='"+s1+"' order by username ASC"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while ( rs1.next() )
								{
			 
									String attacker=rs1.getString(2);
									String s33=rs1.getString(4);
									String date=rs1.getString(5);
						
								String comment=s33.replace("goo.gl","<a href=http://goo.gl target=_blank><strong>goo.gl</strong></a>");
								comment=comment.replace("t.co","<a href=http://t.co target=_blank><strong>t.co</strong></a>");
								comment=comment.replace("bit.ly","<a href=http://bit.ly target=_blank><strong>bit.ly</strong></a>");
			 			
			 %>
              <tr>
                <td align="center"  valign="middle"><span class="style147">
                  <%out.println(attacker);%>
                </span></td>
                <td height="36" align="center"  valign="middle"><span class="style147">
                  <%out.println(comment);%>
                </span></td>
                <td align="center"  valign="middle"><span class="style147">
                  <%out.println(date);%>
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
              <table width="497" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="489"><div align="right"><a href="UserMain.jsp" class="style94"><strong>Back</strong></a></div></td>
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