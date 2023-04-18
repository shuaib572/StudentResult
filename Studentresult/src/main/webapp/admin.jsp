<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String s1=request.getParameter("uname");
		String s2=request.getParameter("pword");
		if(s1.equals("aaa") && s2.equals("aaa"))
			{out.println("Welomce");
			%>
			<jsp:forward page="adminHome.jsp"/>
			<%}
		else
		{
			out.println("Wrong Username password");
			%>
			<jsp:include page="admin.html"/>
			
		<%}
		%>
</body>
</html>