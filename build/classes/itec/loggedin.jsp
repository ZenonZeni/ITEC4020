<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.*,java.util.*" %>

<%
	//Security code to prevent caching
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires",0);

	//Authentication code
	HttpSession s = request.getSession(false);
	
	if(s.getAttribute("username")==null){
		response.sendRedirect("login");
	}
%>

<%
    // Set refresh, autoload time as 60 seconds
    response.setIntHeader("Refresh", 60);
    			
%>
<!DOCTYPE html>
<html>
<head>

<!-- If you disable JavaScript you cannot enter system -->
<script> document.addEventListener('contextmenu', event => event.preventDefault());
</script>

<style>
	::selection {
    color: none;
    background: none;
	}
	/* For Mozilla Firefox */
	::-moz-selection {
	    color: none;
	    background: none;
	}
</style>

<!-- Disables the user from printing the page -->
<style type="text/css" media="print">
    * { display: none; }
</style>

<meta charset="ISO-8859-1">
<title>LoggedIn</title>
</head>
<body>
<div id="page"
 style="-moz-user-select: none; -webkit-user-select: none; -ms-user-select:none; user-select:none;-o-user-select:none;" 
 unselectable="on"
 onselectstart="return false;" 
 onmousedown="return false;">
 
<img src="/ITEC4020/image" align="left">


<br>
<p> Logged in: <% String name=(String)s.getAttribute("username"); out.print(name); %></p>
<p> Your Password: <% String password=(String)s.getAttribute("password"); out.print(password); %> </p>
<form action="Logout" method="post">
<button type="submit"> log out </button>

</form>

<br>
<br>
<img src="<%%>" align="left" alt="Image being tested">

</div>

</body>
</html>