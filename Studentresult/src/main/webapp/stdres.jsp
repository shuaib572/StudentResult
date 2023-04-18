
<%@page import="ConnectionProvider.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

h1 {
	color: #333;
	margin: 50px 0 30px;
	text-align: center;
	text-transform: uppercase;
}

table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 80%;
}

thead th {
	background-color: #333;
	color: #fff;
	font-weight: bold;
	padding: 10px;
	text-align: left;
}

tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

tbody td {
	border: 1px solid #333;
	padding: 10px;
	text-align: center;
}

tbody td:first-child {
	font-weight: bold;
}

</style>
	<meta charset="UTF-8">
	<title>Student Results</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Student Results</h1>
	<table>
		<thead>
			<tr>
				<th>RollNo</th>
				<th>Java</th>
				<th>C_lan</th>
				<th>HTML</th>
				<th>DS</th>
				<th>DataBase</th>
				<th>CN</th>
			</tr>
		</thead>
		<tbody>
			<%
			Connection con = Cons.getCon();
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from result1");
			while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getInt(2)%></td>
				<td><%=rs.getInt(3)%></td>
				<td><%=rs.getInt(4)%></td>
				<td><%=rs.getInt(5)%></td>
				<td><%=rs.getInt(6)%></td>
				<td><%=rs.getInt(7)%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>
