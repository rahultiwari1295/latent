<title>User Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");


	try {
					application.setAttribute("uname", name);
			
					String sql = "SELECT * FROM user where username='"+name+"' and password='"+pass+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where username='"+name+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);
									
									application.setAttribute("uid", i);
									response.sendRedirect("UserMain.jsp");
								}
								else
								{
										%>
									<div align="center"><br/>
								    </div>
									<p align="center">You are not Authorized by the Admin, Please wait!! </p>
									<div align="center"><br/>
								      <br/>
									  <a href="UserLogin.jsp">Back</a>
								      <%
								 }
					
					}
					else
					{
						response.sendRedirect("UserRe-Login.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>
									  
                                    </div>
									