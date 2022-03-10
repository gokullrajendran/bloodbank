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
%>
<%
try{
	Connection con=ConnectionProvider.getcon();
	PreparedStatement pst=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?)");
	pst.setString(1, id);
	pst.setString(2, Name);
	pst.setString(3, Father);
	pst.setString(4, Mother);
	pst.setString(5, Mobile);
	pst.setString(6, Gender);
	pst.setString(7, email);
	pst.setString(8, bg);
	pst.setString(9, Address);
	pst.executeUpdate();
	response.sendRedirect("addNewDonor.jsp?msg=valid");
	
}
catch(Exception e){
	response.sendRedirect("addNewDonor.jsp?msg=invalid");
}
%>