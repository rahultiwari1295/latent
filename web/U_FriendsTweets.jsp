<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Re-Tweeting on Friends Tweets..</title>
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
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style98 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style102 {color: #FF00FF}
.style104 {font-size: 13px}
.style15 {color: #FF0000}
.style71 {	font-weight: bold;
	color: #000000;
}
.style77 {font-size: 14px}
.style110 {color: #006600; font-family: "Courier New", Courier, monospace; font-weight: bold; font-size: 13px; }
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
            <h2><span class="style22">Re-Tweet on Friends Tweets..</span></h2>
            <p>&nbsp;</p> 
			<table width="1013" border="1" align="center"  cellpadding="0" cellspacing="0">
          <tr>
            <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">ID</div></td>
            <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">Tweet Name</div></td>
            <td  width="132" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">Friend Name </div></td>
            <td  width="318" valign="middle" style="color: #2c83b0;"><div align="center" class="style98">Friend Tweet</div></td>
            <td  width="120" valign="middle" style="color: #2c83b0;"><div align="center" class="style98">Date</div></td>
            <td  width="240" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">Re-Tweet</div></td>
            </tr>
           
          <%@ include file="connect.jsp" %>
          <%
					  	String uname=(String)application.getAttribute("uname");
						String s1,s2,s33,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from tcomments order by user ASC";// where user='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s33=rs.getString(4);
								s4=rs.getString(5);
															
								//String s3=s33.replace("goo.gl","<a href=goo.gl.com target=_blank><strong>goo.gl</strong></a>");
								//s3=s3.replace("t.co","<a href=t.co.com?url=t.co target=_blank><strong>t.co</strong></a>");
								//s3=s3.replace("bit.ly","<a href=bit.ly.com target=_blank><strong>bit.ly</strong></a>");
								
								String s3=s33.replace("goo.gl","<a href=urllinks.jsp?url=goo.gl><strong>goo.gl</strong></a>");
								s3=s3.replace("t.co","<a href=urllinks.jsp?url=t.co><strong>t.co</strong></a>");
								s3=s3.replace("bit.ly","<a href=urllinks.jsp?url=bit.ly><strong>bit.ly</strong></a>");
							
								
							Statement stmt2=connection.createStatement();
							String strQuery2 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname+"' and requestto='"+s1+"') ||(requestfrom='"+s1+"' and requestto='"+uname+"'))and status='Accepted' ";
							ResultSet rs2 = stmt2.executeQuery(strQuery2);
							if(rs2.next()==true)
							{
						
					%>
					
			
          <tr>
            <td height="82" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style102"><span class="style104">
                <%out.println(i);%>
            </span></div></td>
            <td rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style54 style55 style102 style104">
              <%out.println(s2);%>
            </div></td>
            <td height="82" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style102 style104">
                <%out.println(s1);%>
            </div></td>
            <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style102 style104">
              <%out.println(s3);%>
            </div></td>
            <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style102 style104">
                <%out.println(s4);%>
            </div></td>
            <td height="82" align="center"  valign="middle">
			  <form action="U_FriendsTweets1.jsp" method="post">
				  <p>
				    <textarea name="textarea" cols="35" placeholder="Enter your comment here"></textarea>
				  </p>
				  <p>
				    <input type="hidden" value="<%=s2%>" name="tname"/>
				    <input type="hidden" value="<%=s1%>" name="tuser"/>
				    <input type="hidden" value="<%=s3%>" name="tcomment"/>
				    <input type="hidden" value="<%=s4%>" name="tdate"/>
				    <input type="submit" name="Submit" value="Post" />
			          </p>
			  </form>
				</td>
            </tr>
					 <%}
         
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
              <table width="543" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="535"><div align="right"><a href="UserMain.jsp" class="style94"><strong>Back</strong></a></div></td>
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