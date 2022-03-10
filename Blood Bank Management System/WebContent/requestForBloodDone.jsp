<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection con=ConnectionProvider.getcon();
	PreparedStatement ps=con.prepareStatement("update bloodrequest set status='Completed' where mobilenumber ='"+mobilenumber+"'");
	ps.executeUpdate();
	response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e){
	System.out.println("Error"+e);
	response.sendRedirect("requestForBlood.jsp");
}
%>