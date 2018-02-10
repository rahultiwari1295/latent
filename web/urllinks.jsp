<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
	
  	try{  
	     
		String url_name = request.getParameter("url");
		String uname=(String)application.getAttribute("uname");

		
		if(url_name.equals("bit.ly"))	
		{
				int b1=0,b2=0;
				String str4="select * from urlclick where username='"+uname+"' and url_name='"+url_name+"'";
				Statement st4=connection.createStatement();
				ResultSet rs4=st4.executeQuery(str4);
				if ( rs4.next() )
				{
				
					int count1=rs4.getInt(4);
					int totalcount1=count1+1;
					String strQuery5 = "update urlclick set used_count='"+totalcount1+"' where url_name='"+url_name+"' and username='"+uname+"'";
					Statement st5=connection.createStatement();
					b1=st5.executeUpdate(strQuery5);
				 } 
				 else
				 {
				 	int used=1;
					Statement st8= connection.createStatement();
					String query8 ="insert into urlclick (username,url_name,used_count) values ('"+uname+"','"+url_name+"','"+used+"')";
					 b2=st8.executeUpdate (query8);
				 
				 
				 }
				if(b1>0 || b2>0)
				{
						response.sendRedirect("http://bit.ly");
				}
				else
				{
				
				}
		
		}	
		else if(url_name.equals("t.co"))	
		{
				
				int t1=0,t2=0;
				String str4="select * from urlclick where username='"+uname+"' and url_name='"+url_name+"'";
				Statement st4=connection.createStatement();
				ResultSet rs4=st4.executeQuery(str4);
				if ( rs4.next() )
				{
				
					int count1=rs4.getInt(4);
					int totalcount1=count1+1;
					String strQuery5 = "update urlclick set used_count='"+totalcount1+"' where url_name='"+url_name+"' and username='"+uname+"'";
					Statement st5=connection.createStatement();
					t1=st5.executeUpdate(strQuery5);
				 } 
				 else
				 {
				 	int used=1;
					Statement st8= connection.createStatement();
					String query8 ="insert into urlclick (username,url_name,used_count) values ('"+uname+"','"+url_name+"','"+used+"')";
					t2=st8.executeUpdate (query8);
				 
				 
				 }
				if(t1>0 || t2>0)
				{
						response.sendRedirect("http://t.co");
				}
				else
				{
				
				}
	
		}		
		else if(url_name.equals("goo.gl"))	
		{
				
				int g1=0,g2=0;
				String str4="select * from urlclick where username='"+uname+"' and url_name='"+url_name+"'";
				Statement st4=connection.createStatement();
				ResultSet rs4=st4.executeQuery(str4);
				if ( rs4.next() )
				{
				
					int count1=rs4.getInt(4);
					int totalcount1=count1+1;
					String strQuery5 = "update urlclick set used_count='"+totalcount1+"' where url_name='"+url_name+"' and username='"+uname+"'";
					Statement st5=connection.createStatement();
					g1=st5.executeUpdate(strQuery5);
				 } 
				 else
				 {
				 	int used=1;
					Statement st8= connection.createStatement();
					String query8 ="insert into urlclick (username,url_name,used_count) values ('"+uname+"','"+url_name+"','"+used+"')";
					g2=st8.executeUpdate (query8);
				 
				 
				 }
				if(g1>0 || g2>0)
				{
						response.sendRedirect("http://goo.gl");
				}
				else
				{
				
				}
	
		}		
		else
		{}
		
		
			
			
		
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>