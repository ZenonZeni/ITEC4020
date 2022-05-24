<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.*,java.util.*" %>

<%
	//Authentication code
	HttpSession s = request.getSession(false);
	
	if(s.getAttribute("username")==null){
		response.sendRedirect("login");
	}
	else if(s.getAttribute("username")!= null){
		//Set Session Max time limit in Seconds starting when page is visited
		session.setMaxInactiveInterval(120);
	}
%>

<%
    // Set refresh, autoload time as 120 seconds
    response.setIntHeader("Refresh", 120);
    			
%>
<!DOCTYPE html>
<html>
<head>

<!-- If you disable JavaScript you cannot enter system and this disable events such as right click -->
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
	iframe{
		max-height:400px;
		height:400px;
	}
</style>

<!-- Disables the user from printing the page -->
<style type="text/css" media="print">
    * { display: none; }
</style>

<!-- CSS for Navigation Bar -->
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: red;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color:#cb0000;
}

li button{
	display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
</style>

<meta charset="ISO-8859-1">
<title>User Accounts</title>
</head>
<body>
<div id="page"
 style="-moz-user-select: none; -webkit-user-select: none; -ms-user-select:none; user-select:none;-o-user-select:none;" 
 unselectable="on"
 onselectstart="return false;" 
 onmousedown="return false;">
<div>
 <ul>
 
  <li><a class="active" href="/ITEC4020/loggedIn">Home</a></li>
  <li><a class="active" href="/ITEC4020/account">System Accounts</a></li>
  <li style="float:right">
  <form action="Logout" method="post" id="logout">
  <a class="active" href="javascript:{}" onclick="document.getElementById('logout').submit(); return false;">Log Out</a>
  </form>
  </li>
  
</ul>
</div>
<div>
<img src="/ITEC4020/image?id=2" align="left"> <h2>  Accounts </h2>

<iframe src="/ITEC4020/xmlHandler?id=1" align="center" alt="Error in loading xml" width="100%"></iframe>
</div>

</div>
</body>
</html>