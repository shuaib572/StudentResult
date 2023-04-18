<%@page import="ConnectionProvider.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Student Details</title>
	<style>
		table {
			border-collapse: collapse;
			width: 100%;
			color: #333;
			font-family: Arial, sans-serif;
			font-size: 14px;
			text-align: left;
		}

		th, td {
			padding: 10px;
			border: 1px solid #ccc;
			text-align: left;
		}

		th {
			background-color: #F068CF;
			color: #fff;
		}
	</style>
</head>
<body>
<%
Connection con=Cons.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT Rollno, NAME, f_NAME, COURSE, branch, Gender FROM studentdetalis");
%>

<table>
    <tr><th>Roll No</th><th>Name</th><th>Father Name</th><th>Course</th><th>Branch</th><th>Gender</th></tr>
<%while(rs.next())
{%>

	
  <tr> 
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	</tr>
	
	
<%}%>
</table>

</body>
</html>
