<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	//session authenticator
	HttpSession s = request.getSession(true);
	
	if(s.getAttribute("username")!=null){
		response.sendRedirect("loggedIn");
	}
	
%>


<!DOCTYPE html>
<html>
<head>

<!-- Disables the user from printing the page -->
<style type="text/css" media="print">
    * { display: none; }
</style>
<style>
#uname{
    width:100%;
     font-weight:bold;
}
#pass{
    width:100%;
    font-weight:bold;
}
input[type=text], select {
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
 
}

input[type=submit] {
  width: 100%;
  background-color: red;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #cb0000;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
label {
    font-weight: bold;
}
input[type="password" i] {
    -webkit-text-security: disc !important;
    padding: 12px 20px;
  	margin: 8px 0;
  	display: inline-block;
  	border: 1px solid #ccc;
  	border-radius: 4px;
  	box-sizing: border-box;
}
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<div align="center">
	<h3>Group 3</h3>
	<h1>York University Student Management Information System</h1>
</div>

<div style="padding-left:25%; padding-right:25%;">
<form action="Login" method="post">
    <label for="uname"> Enter username :</label>
    <input type="text" name="username"  id="uname" placeholder="Your username.."> <br>
    <label for="pass"> Enter password :</label>
    <input type="password" name="password" id="pass" placeholder="Your password.."><br>
    <input type="submit" value="Login">
</form>
</div>

</body>
</html>


