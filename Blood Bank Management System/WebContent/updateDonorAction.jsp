<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String id=request.getParameter("id");
String Name=request.getParameter("name");
String Father=request.getParameter("fname");
String Mother=request.getParameter("mname");
String Mobile=request.getParameter("number");
String Gender=request.getParameter("gender");
String email=request.getParameter("email");
String bg=request.getParameter("bloodgroup");
String Address=request.getParameter("address");
try{
	Connection con=ConnectionProvider.getcon();
	PreparedStatement ps= con.prepareStatement("update donor set name=?,father_name=?,mother_name=?,mobilenumber=?,gender=?,email=?,bloodgroup=?,address=? where id=? ");
	ps.setString(1, Name);
	ps.setString(2, Father);
	ps.setString(3, Mother);
	ps.setString(4, Mobile);
	ps.setString(5, Gender);
	ps.setString(6, email);
	ps.setString(7, bg);
	ps.setString(8, Address);
	ps.setString(9, id);
	ps.executeUpdate();
	response.sendRedirect("editDeleteList.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>