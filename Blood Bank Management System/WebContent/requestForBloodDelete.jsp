<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber = '"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e){
	System.out.println("Error"+e);
	response.sendRedirect("requestForBlood.jsp");
}
%>