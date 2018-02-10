<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Comments on Tweet Posts..</title>
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
.style105 {color: #0099FF}
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
            <h2><span class="style31 style46 style30  style35 style22">Comments on Tweet Post <span class="style105">'<%=request.getParameter("tname")%>'</span>.. </span></h2>
            <p>&nbsp;</p>
            <table width="817" align="center"  cellpadding="0" cellspacing="0">
          <tr>
            <td  width="43"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">ID</div></td>
            <td  width="142" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">User Name</div></td>
            <td  width="476" valign="middle" style="color: #2c83b0;"><div align="center" class="style98">Comment</div></td>
            <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style98">Date</div></td>
            </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
							String tname=request.getParameter("tname");
						   	String query="select * from tcomments where tname='"+tname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
					%>
          <tr>
            <td height="38" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style102"><span class="style104">
                <%out.println(i);%>
            </span></div></td>
            <td height="38" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style102 style104"> 
                <%out.println(s1);%>
            </div></td>
            <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style102 style104"> 
              <%out.println(s2);%>
            </div></td>
            <td height="38" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style102 style104"> 
                <%out.println(s3);%>
            </div></td>
          </tr>
          <%
						i+=1;}
						
					
				
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
              <table width="529" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="521"><div align="right"><a href="S_RetweetsWithComments.jsp" class="style94"><strong>Back</strong></a></div></td>
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