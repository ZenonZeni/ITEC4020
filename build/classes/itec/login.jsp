<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<%
	//Security code to prevent data from being cached
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
<!-- If you disable JavaScript you cannot enter system -->
<script> document.addEventListener('contextmenu', event => event.preventDefault());
</script>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div id="page"
 style="-moz-user-select: none; -webkit-user-select: none; -ms-user-select:none; user-select:none;-o-user-select:none;" 
 unselectable="off"">
 
<form action="Login" method="post">
    Enter username :<input type="text" name="username"> <br>
    Enter password :<input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>

</div>
</body>
</html>


