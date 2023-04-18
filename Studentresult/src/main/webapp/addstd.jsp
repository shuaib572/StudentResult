<%@page import="ConnectionProvider.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<center>

		<%
		Connection con = Cons.getCon();
PreparedStatement stm = con.prepareStatement
("INSERT INTO studentdetalis VALUES (?, ?, ?, ?, ?, ?)");
		
		int id = Integer.parseInt(request.getParameter("roll"));
		String s1 = request.getParameter("sname");
		String s2 = request.getParameter("fname");
		String s3=request.getParameter("course");
		String s4=request.getParameter("bname");
		String s5=request.getParameter("gn");
		
		stm.setInt(1, id);
		stm.setString(2,s1);
		stm.setString(3,s2);
		stm.setString(4,s3);
		stm.setString(5,s4);
		stm.setString(6, s5);
		int x = stm.executeUpdate();
		if (x > 0)
			out.println("Record Incertion Sucessfully done....");
		%><jsp:forward page="adminHome.jsp"/>
		<%out.println("Record ...."); %>
		
		
	</center>
</body>
</html>
