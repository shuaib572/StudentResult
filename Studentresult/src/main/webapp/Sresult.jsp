<%@page import="java.sql.*" %>
<%@page import="ConnectionProvider.*"%>

<html>
<head>
<style>   table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 1em;
	font-family: Arial, sans-serif;
	font-size: 14px;
}

th, td {
	border: 1px solid #ddd;
	text-align: left;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color:
</style>
</head>
<body>
<%
    try{
    	
    
	
	int roll=Integer.parseInt(request.getParameter("roll"));
	Connection con=Cons.getCon();
	Statement stm1=con.createStatement();
	Statement stm2=con.createStatement();
	
	ResultSet rs1=stm1.executeQuery("select * from studentdetalis where rollno='"+roll+"' ");
	ResultSet rs2=stm2.executeQuery("select * from result1 where rollno='"+roll+"'");
		if(rs1.next() && rs2.next())
		{%>
		<table>
		<setion>
			<tr>
			<th>Institute Name:SCRIET</th>
			<th>Course:<%=rs1.getString(4) %></th>
			<th>Branch:<%=rs1.getString(5) %></th> 
			</tr>
			<tr>
			<th>Student Name:<%=rs1.getString(2) %></th>
			<th>Father Name:<%=rs1.getString(3) %></th>
			<th>RollNo:<%=rs1.getString(1) %></th> 
			</tr></setion>
			<tr>
			<tr>
			<th>Code</th>
			<th> Subject</th>
			<th>Passing Marks</th>
			<th>Obtaiend Marks </th>
			<th>Maxmium Marks</th>
			</tr>
			<tr>
			<td>J101</td>
			<td>JAVA</td>
			<td>40</td>
			<td><%=rs2.getInt(2) %></td>
			<td>100</td><br>
			</tr>
			<tr>
			<td>J102</td>
			<td>C Lang</td>
			<td>40</td>
			<td><%=rs2.getInt(3) %></td>
			<td>100</td><br>
			</tr>
			<tr>
			<td>J103</td>
			<td>HTML</td>
			<td>40</td>
			<td><%=rs2.getInt(4) %></td>
			<td>100</td><br>
			</tr>
			<tr>
			<td>J104</td>
			<td>Data St</td>
			<td>40</td>
			<td><%=rs2.getInt(5) %></td>
			<td>100</td><br>
			</tr>
			<tr>
			<td>J105</td>
			<td>DataBase</td>
			<td>40</td>
			<td><%=rs2.getInt(6) %></td>
			<td>100</td><br>
			</tr>
			<tr>
			<td>J106</td>
			<td>CN</td>
			<td>40</td>
			<td><%=rs2.getInt(7) %></td>
			<td>100</td><br>
			</tr>
			<tr>
			<td><%double sum=rs2.getInt(2)+rs2.getInt(3)+rs2.getInt(4)+rs2.getInt(6)+rs2.getInt(6)+rs2.getInt(7); %>
			<td> TotalMarks  <%out.println(sum);%>/500</td>
			</tr>
			<tr>
			<th> Persantage</th>
			<td><%out.println((sum*100)/600); %>
			</tr>
			</table>
		<%}
		else
		{
			out.println("Wrong Roll No");
		}
    }catch(Exception e)
{
    out.println(e);
}	
%>

						
</body>
</html>						
						