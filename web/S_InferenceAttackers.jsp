<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View All Inference Attackers..</title>
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
.style134 {	color: #0000FF;
	font-size: 20px;
}
.style117 {font-size: 14px; color: #FF0000;}
.style121 {color: #009900; font-weight: bold; font-size: 14px; }
.style128 {	color: #000000;
	font-weight: bold;
}
.style133 {
	font-size: 17px;
	color: #FF0000;
	font-weight: bold;
}
.style142 {color: #000000; font-weight: bold; font-size: 14px; font-family: "Times New Roman", Times, serif; }
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
            <h2><span class="style31 style46 style30  style35 style22">View All Inference Attackers..</span></h2>
            <p>&nbsp;</p>
			<%@ include file="connect.jsp" %>
                <%
					  
						String s1,s2,s33,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select distinct(username) from attacker"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							
								s1=rs.getString(1);
						
								
								String present="true";
								
							
					if(present=="true"){%>
            <table width="922" border="2" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td  valign="middle" height="34" style="color: #2c83b0;" colspan="3"><div align="center" class="style117"><span class="style133">Attacker Name</span> <span class="style134"><span class="style128">-&gt;</span> <a href="S_AttackerProfile.jsp?attacker=<%=s1%>">
                    <%out.println(s1);%>
                </a></span></div></td>
              </tr>
              <tr>
                <td  width="179" valign="middle" style="color: #2c83b0;"><div align="center" class="style121 style22">Tweet Name </div></td>
                <td  width="552" valign="middle" style="color: #2c83b0;"><div align="center" class="style121">URL Shortening Comment</div></td>
                <td  width="183" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style121">Date</div></td>
              </tr>
              <%present="false";}
			 
			 
			 
								String query1="select * from attacker where username='"+s1+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while ( rs1.next() )
								{
			 
								 i=rs1.getInt(1);
								s2=rs1.getString(3);
								s33=rs1.getString(4);
								s4=rs1.getString(5);
								
								String s3=s33.replace("goo.gl","<a href=http://goo.gl target=_blank><strong>goo.gl</strong></a>");
								s3=s3.replace("t.co","<a href=http://t.co  target=_blank><strong>t.co</strong></a>");
								s3=s3.replace("bit.ly","<a href=http://bit.ly  target=_blank><strong>bit.ly</strong></a>");
							
			                  
			 
			 %>
			 
			
			 
              <tr>
                <td align="center"  valign="middle"><span class="style142">
                  <%out.println(s2);%>
                </span></td>
                <td align="center"  valign="middle"><span class="style142">
                  <%out.println(s3);%>
                </span></td>
                <td height="43" align="center"  valign="middle"><span class="style142">
                  <%out.println(s4);%>
                </span></td>
              </tr>
              <%
						}%>
              <br/>
            </table> 
			
			 
            <p>
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
    
    <div class="cleaner"></div>
</div> <!-- end of main -->

<div id="templatemo_footer_wrapper_01">
	<div id="templatemo_footer_wrapper_02">
   	  <div id="templatemo_footer"></div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>