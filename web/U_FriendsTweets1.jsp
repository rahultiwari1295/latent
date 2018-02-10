<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <%
				String uname=(String)application.getAttribute("uname");
				String tname=request.getParameter("tname");
				String tuser=request.getParameter("tuser");
				String tcomment=request.getParameter("tcomment");
				String tdate=request.getParameter("tdate");
				String retweet=request.getParameter("textarea");

			

  try{      
         		if(!retweet.equals(""))
				{
   		
						   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
						   
						   
						   String url_name="";
						 
							//retweet +=new String(" ");
							//String pad=String.format("%-20s",retweet);
							
						
							String space=" ";
							StringBuffer bf=new StringBuffer(retweet);
							bf.append(space);
							
						
						String present="false";
						String query="select * from urls"; 
						Statement st=connection.createStatement();
						ResultSet rs=st.executeQuery(query);
						while ( rs.next() )
						{
							url_name=rs.getString(2);
						
							
							int foundcount=0;
								//To Count the urls Number of times repeated
								java.util.regex.Pattern pattern=java.util.regex.Pattern.compile(url_name+"[^a-z,A-Z] ",java.util.regex.Pattern.CASE_INSENSITIVE);
								java.util.regex.Matcher matcher=pattern.matcher(bf);
								while(matcher.find())
								{
									present="true";
									for(int ja=0;ja<=matcher.groupCount();ja++)
									{
									 foundcount+=1;
									 
									}
							
								}
				
								if(foundcount>0)
								{
									String str2="select * from urls where url_name='"+url_name+"'";
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(str2);
									if ( rs2.next() )
									{
									
										int count=rs2.getInt(3);
										int totalcount=count+foundcount;
										String strQuery3 = "update urls set used_count='"+totalcount+"' where url_name='"+url_name+"'";
										Statement st3=connection.createStatement();
										st3.executeUpdate(strQuery3);
										
									 } 
									
									String str4="select * from user_url_count where url_name='"+url_name+"' and username='"+uname+"'";
									Statement st4=connection.createStatement();
									ResultSet rs4=st4.executeQuery(str4);
									if ( rs4.next() )
									{
									
										int count1=rs4.getInt(4);
										int totalcount1=count1+1;
										String strQuery5 = "update user_url_count set used_count='"+totalcount1+"' where url_name='"+url_name+"' and username='"+uname+"'";
										Statement st5=connection.createStatement();
										st5.executeUpdate(strQuery5);
									 } 
									 else
									 {
										Statement st8= connection.createStatement();
										String query8 ="insert into user_url_count (username,url_name,used_count) values ('"+uname+"','"+url_name+"','"+foundcount+"')";
										int h=st8.executeUpdate (query8);
									 
									 
									 }
								} 
						}
										String status="Inference Attacker";
										String strQuery8 = "update user set user_kind='"+status+"' where username='"+uname+"'";
										Statement st8=connection.createStatement();
										int e=st8.executeUpdate(strQuery8);
										
						Statement st1 = connection.createStatement();
						String query1 ="insert into retweets (tname,tweet_by,comment,tweet_dt,retweet_by,re_comment,retweet_dt) values ('"+tname+"','"+tuser+"','"+tcomment+"','"+tdate+"','"+uname+"','"+retweet+"','"+date+"')";
						
						int k=st1.executeUpdate (query1);
						
						
						  if(k>0&&e>0)
						  {
								if(present=="true")
								{
								Statement st6 = connection.createStatement();
								String query6 ="insert into attacker (username,tname,comment,date) values ('"+uname+"','"+tname+"','"+retweet+"','"+date+"')";
								st6.executeUpdate (query6);
							
								%>	
								<br/><p align="center" class="style46 style2"><strong>This Comment Contains Short terms of URLs..These are Strictly Prohibited..</strong></p><%
						
								}%>
														
</div>
								<br/><p align="center" class="style46 style3"><strong>Re-Tweeted Successfully..</strong></p>
								<p align="center" class="style17">&nbsp;</p>
								<p align="center"><a href="U_FriendsTweets.jsp" class="style44"><strong>Back</strong></a></p>
								<div align="center">
								<%
								
								
						  }
						  else
						  {
						  
						 	%> <p align="center" class="style46 style2"><strong>Tweet Not Submitted..</strong></p>
							   <p align="center" class="style17">&nbsp;</p>
							   <p align="center"><a href="U_FriendsTweets.jsp" class="style44"><strong>Back</strong></a></p>
						  	<%
						  }
						   
						   

		}
		else
		{
					
					%>
					<br/>
					</div>
					<p align="center" class="style46 style1">Enter Your Re-Tweet Comment !!..</p>
					<p align="center" class="style17">&nbsp;</p>
					<p align="center"><a href="U_FriendsTweets.jsp" class="style44"><strong>Back</strong></a></p>
					<div align="center">
					<%
		}

  }
  catch (Exception e){
    out.print(e);
  }
%>
								    
</div>
</body>
</html>