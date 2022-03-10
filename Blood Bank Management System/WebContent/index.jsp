<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:inline;}

input[type="text"], input[type="mail"]
{
    border: none;
    border-radius:20px;
    background:#e0e0d1;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
	color: gray;
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  
</div>




<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg)){
	  %>
	  <center><font color="green"size="5">Your Request has Submitted Successfully. You'll get notified within 8 hours!!!</font></center>
  <%
   }
  %>
  <%
  if("invalid".equals(msg)){
	  %>
	  <center><font color="red"size="5">Invalid Data.Try Again Later!!!</font></center>
  <%
   }
  %>
  
   <center><h1 style=" font-family: monospace;color: #b30000">Enter Your details to request for Blood</h1></center>
   <form action="indexFormAction.jsp"method="post">
   <center>
   <input type="text"name="name"placeholder="Enter Name" required>
   <input type="text"name="mobilenumber"placeholder="Enter Mobile Number" required>
   <input type="mail"name="email"placeholder="Enter E-mail Address" required>
   <input type="text"name="bloodgroup"placeholder="Enter Bloodgroup" required>
   <button class="button1"><span>Submit</span></button>
   </center>
   </form>
 
 
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center> Copyright 2022. All rights reserved @ GokulRajendran. </center></h3>

</body>
</html>

