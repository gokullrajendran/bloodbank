<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr{background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<%
 String msg=request.getParameter("msg");
 if("del".equals(msg)){%>
	 <center><h2 style="color:green">Successfully Deleted!!!</h2></center>
 <%}
 if("invalid".equals(msg)){%>
	 <center><h2 style="color:red">Something Went Wrong.TryAgain Later!!!</h2></center>
 <%}
%>

<table id="customers">
<tr>
<th>Id</th>
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>E-Mail</th>
<th>Bloodgroup</th>
<th>Address</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<%
  try{
	  Connection con=ConnectionProvider.getcon();
      Statement st=con.createStatement();
  	  ResultSet rs=st.executeQuery("select * from donor");
  	  while(rs.next()){%>
  	  <td><%=rs.getInt(1) %></td>
  	  <td><%=rs.getString(2) %></td>
  	  <td><%=rs.getString(3) %></td>
  	  <td><%=rs.getString(4) %></td>
  	  <td><%=rs.getString(5) %></td>
  	  <td><%=rs.getString(6) %></td>
  	  <td><%=rs.getString(7) %></td>
  	  <td><%=rs.getString(8) %></td>
  	  <td><%=rs.getString(9) %></td>
  	  <td><a href="updateDonor.jsp?id=<%=rs.getInt(1) %>">Edit</a></td>
  	  <td><a href="deleteDonor.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
 </tr>
  	<%  }
  }
catch(Exception e){
	System.out.println(e);
}
%>

</table>
</center>
<br>
<br>
<br>
<br>
<h3><center>Copyright 2022. All rights reserved @ GokulRajendran. </center></h3>
</body>
</html>