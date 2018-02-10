<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Posting Tweets Status..</title>
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
.style41 {
	font-size: 28px;
	color: #FF00FF;
}
.style22 {color: #009900}
.style18 {font-size: 16px;
	color: #0099FF;
}
.style21 {color: #0000FF; font-weight: bold; }
.style24 {font-size: 16px; color: #33CC00; }
.style3 {color: #FF00FF}
.style42 {font-size: 16px; color: #009900; }
.style43 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style44 {font-size: 14px}
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
            <h2><span class="style36 style35 style22"><span class="style41">Posting Tweets Status..</span></span></h2>
            <div>
              <label for="name">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
              <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname=null,pass=null,tname=null,des=null,uses=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("tname"))
							{
								tname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("des"))
							{
								des=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
				
				if(tname.equals("")||des.equals("")||uses.equals(""))
				{
		%>
							</p>
			  </label>
							<p>&nbsp;</p>
							<p align="center" class="style43">Please enter all values.. </p>
							<p align="center" class="style18 style24">&nbsp;</p>
							<p align="center" class="style21"><a href="U_CreateTweet.jsp"><strong>Back</strong></a></p>
							<p align="center">
							<%
						
			 	}
				else	
				{
				
				
						FileInputStream fs1 = null;
						String query1="select * from ttopic  where tname='"+tname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
							%>
							</p>
							</label>
							<p>&nbsp;</p>
							<p align="center" class="style24 style25 style43">Tweet Name Already Exists.. </p>
							<p align="center" class="style18 style24">&nbsp;</p>
			  <p align="center" class="style21"><a href="U_CreateTweet.jsp"><strong>Back</strong></a></p>
							<p align="center">
							<%
							
					   }
					   else
					   {
					   					
						String user=(String )application.getAttribute("uname");

					  int rank=0;
					  
					  
					  
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
									
									
PreparedStatement ps=connection.prepareStatement("insert into ttopic(tname,description,uses,image,dt,user,rank) values(?,?,?,?,?,?,?)");
						ps.setString(1,tname);
						ps.setString(2,des);
						ps.setString(3,uses);	
						ps.setBinaryStream(4, (InputStream)fs, (int)(file1.length()));
						ps.setString(5,dt);
						ps.setString(6,user);
						ps.setInt(7,rank);
				
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
              </p>
              <p align="center">&nbsp;</p>
              <p align="center" class="style25 style42 style44"><strong>Tweet Posted Successfully..</strong></p>
              <p align="center" class="style42">&nbsp;</p>
              <p align="center"><a href="U_CreateTweet.jsp" class="style21"><strong>Back</strong></a></p>
              <%
			
					}}
				}
			}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
              </p>
              <p align="left" class="style3">&nbsp;</p>
            </div>
   	  </div>
        
        <div class="cleaner"></div>
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
   	  <div id="templatemo_footer"></div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>