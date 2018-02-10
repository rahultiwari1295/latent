
<%@ include file="connect.jsp"%>


<%
try
{

%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
			int age=0;
			String query="select url_name,used_count from urls"; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
						int  count=rs.getInt(2);
						String url_name=rs.getString(1);
						
						%>	
						myData["<%=i%>"]=["<%=url_name%>",<%=count%>];
						<%
						i++;
						
			}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setSize(800,350);
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

