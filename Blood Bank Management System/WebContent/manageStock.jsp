<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
}

#customers td, #customers th {
  border: 2px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

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
<div class="container">
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){%>
	 <center><h2 style="color:green">Successfully Updated!!!</h2></center>
<%}
if("invalid".equals(msg)){%>
	 <center><h2 style="color:red">Something Went Wrong.TryAgain Later!!!</h2></center>
<%}
%>
<form action="manageStockAction.jsp"method="post">
<div class="form-group">
<center><h2>Select Bloodgroup</h2></center>
<select name="bg">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
</select>
<center><h2>Select Increase/Decrease</h2></center>
<select name="incdec">
<option value="inc">Increase</option>
<option value="dec">Decrease</option>
</select> 
<center><h2>Enter the Units</h2></center>
<input type="text" placeholder="Enter Units"name="unit">
<center><button type="submit"class="button">Save</button></center>
</div>	  
</form> 
<br>
<center><table id="customers">
<tr>
  <th>Bloodgroup</th>
  <th>Units</th>
</tr>  
<tr>
  <%
  try{
		Connection con=ConnectionProvider.getcon();
	    Statement st=con.createStatement();
		  ResultSet rs=st.executeQuery("select * from stocks");
		  while(rs.next()){%>
		    <td><%=rs.getString(1) %>
	        <td><%=rs.getString(2) %>
	        <tr>
	<%}}
	catch(Exception e){
		System.out.println(e);
	}
	%>
</tr>
 
</table></center>

<br>
<br>
<br>
<h3><center>Copyright 2022. All rights reserved @ GokulRajendran.  </center></h3>
</body>
</html>