<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String bg=request.getParameter("bg");
String incdec=request.getParameter("incdec");
String units=request.getParameter("unit");
int unit=Integer.parseInt(units);
try{
	    Connection con=ConnectionProvider.getcon();
		Statement st= con.createStatement();
		if("inc".equals(incdec)){
	       st.executeUpdate("update stocks set units=units+'"+unit+"' where bloodgroup='"+bg+"'"); 
	       response.sendRedirect("manageStock.jsp?msg=valid");
		}
		else if("dec".equals(incdec)){
			st.executeUpdate("update stocks set units=units-'"+unit+"' where bloodgroup='"+bg+"'"); 
			response.sendRedirect("manageStock.jsp?msg=valid");
		}
	  
}
catch(Exception e){
	response.sendRedirect("manageStock.jsp?msg=invalid");
}
%>