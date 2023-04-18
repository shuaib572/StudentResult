<%@page import="ConnectionProvider.*"%>
<%@page import="java.sql.*"%>
<% 
Connection con = Cons.getCon();

PreparedStatement stm=con.prepareStatement("insert into result1 values(?,?,?,?,?,?,?)");
int rno=Integer.parseInt(request.getParameter("roll"));
int i1=Integer.parseInt(request.getParameter("m1"));
int i2=Integer.parseInt(request.getParameter("m2"));
int i3=Integer.parseInt(request.getParameter("m3"));
int i4=Integer.parseInt(request.getParameter("m4"));
int i5=Integer.parseInt(request.getParameter("m5"));
int i6=Integer.parseInt(request.getParameter("m6"));
stm.setInt(1, rno);
stm.setInt(2, i1);
stm.setInt(3, i2);
stm.setInt(4, i3);
stm.setInt(5, i4);
stm.setInt(6,i5);
stm.setInt(7, i6);
int x=stm.executeUpdate();
if(x>0)
	out.println(rno+" result incertione done....");

%>
<jsp:forward page="adminHome.jsp"/>