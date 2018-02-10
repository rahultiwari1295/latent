<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Searching Tweets..</title>
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
<link href="style1.css" rel="stylesheet" type="text/css" />
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
.style91 {
	color: #FF0000;
	font-weight: bold;
}
.style92 {font-weight: bold}
.style93 {color: #0000FF}
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
            <h2><span class="style35">Search  Tweets and Comment..</span></h2>
            <form id="form1" name="form1" method="post" action="SearchTweets.jsp">
              <table width="453" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="185" height="58"><div align="center">
                      <p class="style49">&nbsp;</p>
                    <p class="style42 style22">Enter Keyword Name :</p>
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

            <h2><span class="style36 style35 style22"><span class="style18">Tweets Found.. </span></span></h2>
            
     
			  <%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
                <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

   try 
	{
      
				
				String uname=(String)application.getAttribute("uname");
				String keyword1=request.getParameter("keyword");
				String keyword=keyword1.toLowerCase();
				
								
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
				Date now = new Date();
		
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
		
				
				if(keyword1.equalsIgnoreCase(""))
				{
					
				}
				else
				{
					
					String query1="insert into tsearch(user,keyword,dt) values('"+uname+"','"+keyword+"','"+dt+"')"; 
					Statement st1=connection.createStatement();
					st1.executeUpdate(query1);
					
				   String query="select * from ttopic where user!='"+uname+"'";
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				   while ( rs.next() )
	  			   {
						i=rs.getInt(1);
						s2=rs.getString(2);
						s3=rs.getString(3);
						s7=rs.getString(4);
						
						String des=s3.toLowerCase();
						String uses=s7.toLowerCase();
						if ((des.indexOf(keyword)>=0)||(uses.indexOf(keyword)>=0))
						{
						
								
							/*Statement stmt2=connection.createStatement();
							String strQuery2 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname+"' and requestto='"+s7+"') ||(requestfrom='"+s7+"' and requestto='"+uname+"'))and status='Accepted' ";
							ResultSet rs2 = stmt2.executeQuery(strQuery2);
							if(rs2.next()==true)
							{*/%>
							
							<figure>
									<img height="100" width="120" src="tweet_Pic.jsp?id=<%=i%>"/>
										<div id="container">
											<figcaption>
												<span class="style92"> <span class="style91">Tweet Name : </span><span class="style95 style93"><%=s2%></span></span></p>
												<p align="center"><a href="SearchTweets1.jsp?tname=<%=s2%>" class="style87"><strong>View Details</strong></a> <br/>
											</figcatption>
										</div>
							</figure>
               
                            <p>
                              <%

	 
	  							/* }*/
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
                          
                           
       

        

    </div>
    
  <div class="col_w300 float_r">
    	<h2>Sidebar Menu </h2>
      <p><a href="#"><strong>Home</strong></a></p>
      <p><a href="index.html"><strong>Log Out </strong></a></p>
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