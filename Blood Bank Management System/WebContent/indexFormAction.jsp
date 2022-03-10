<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String status="pending";
try{
	Connection con=ConnectionProvider.getcon();
	PreparedStatement pst =con.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	pst.setString(1,name);
	pst.setString(2,mobilenumber);
	pst.setString(3,email);
	pst.setString(4,bloodgroup);
	pst.setString(5,status);
	pst.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
	
}
catch(Exception e){
	response.sendRedirect("index.jsp?msg=invalid");
}
%>