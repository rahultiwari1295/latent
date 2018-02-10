<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>URL Shortenings..</title>
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
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style3 {color: #FF00FF}
.style94 {	color: #000000;
	font-weight: bold;
	font-size: 15px;
	font-family: "Times New Roman", Times, serif;
}
.style7 {
	color: #006600;
	font-size: 13px;
	font-weight: bold;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style68 {font-family: Arial, Helvetica, sans-serif}
.style69 {font-size: 13px}
.style85 {color: #FF0000}
.style87 {	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
}
.style98 {color: #000000}
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
            <h2><span class="style23">Add Short URLs.. </span></h2>
            <form action="S_URLShortening.jsp" method="post">
              <table width="336" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td  width="162" height="55" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style15 style18 style21 style4" style="margin-left:20px;">Enter Short URL </div></td>
                  <td  width="160" height="55" valign="middle" style="color:#000000;"><label>
                    <input type="text" name="url" />
                  </label></td>
                </tr>
                <tr>
                  <td height="29" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input name="submit2" type="submit" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;" value="Add"/></td>
                </tr>
              </table>
            </form>
            <p align="justify">&nbsp;</p>
            <div align="right"><a href="ServerMain.jsp" class="style94"><strong>Back</strong></a>
            </div>
            <div class="cleaner"></div>
	  </div>
        
        <%@ include file="connect.jsp" %>
        <%
		try
		{		
		 %>
        <div class="clr"> 
          <h2 class="style23">Added Short URLs.. </h2>
            <br/>
            <%
						
					  		int test=1;
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						
						  	String query="select * from urls"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(2);
							
					
						if(test==1)
						{%>
            <p></p>
          <table width="411" border="1" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td height="28" align="center"  valign="middle"><div align="center" class="style5 style37 style55 style68 style69 style85"><span class="style69">Si No. </span></div></td>
                <td height="28" align="center"  valign="middle"><div align="center" class="style5 style37 style55 style68 style69 style85">Short URL Name </div></td>
              </tr>
            <%test=2;}
								
						
					%>
              <tr>
                <td width="134" height="39" align="center"  valign="middle"><div align="center" class="style5 style37 style55 style68 style69 style86 style98">
                    <%out.println(i);%>
                </div></td>
                <td width="271" height="39" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style55 style68 style69 style86 style98">
                    <%out.println(s1);%>
                </div></td>
              </tr>
              <%
							i+=1;
							}%>
          </table>
          <%
							
					String url="";
					url=request.getParameter("url");
					if(!url.equals(""))
					{
						String query1="select * from urls where url_name='"+url+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
							
								
						if ( rs1.next() )
						   {
								%>
            </p>
            <p align="center" class="style39 style7 style85 style87"><strong>URL Already Exist..</strong></p>
          </p>
            <% 
					
						   }
						   else
						   {
								int count=0;	
								String strQuery2 = "insert into urls(url_name,used_count) values('"+url+"','"+count+"')";
								Statement st2=connection.createStatement();
								st2.executeUpdate(strQuery2);
								response.sendRedirect("S_URLShortening.jsp");
								
							}
			
					}
								
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <p>&nbsp;</p>
      </div>
        <div class="cleaner"></div>
    </div>
    
  <div class="col_w300 float_r">
    	<h2>Sidebar Menu </h2>
            <p><a href="#"><strong>Home</strong></a></p>
            <p><a href="index.html"><strong>Log Out</strong></a></p>
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