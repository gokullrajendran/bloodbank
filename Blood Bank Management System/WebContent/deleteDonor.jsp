<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	System.out.print(id);
	st.executeUpdate("delete from donor where id ='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=del");
}
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>