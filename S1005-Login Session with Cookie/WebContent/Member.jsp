<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
Welcome to Member Area<br/>

<%
String sessionId=null, username=null;
Cookie cookies[] = request.getCookies();
for(Cookie cookie : cookies){
	out.print(cookie.getName()+ ":- "+cookie.getValue()+"<br/>");
	if(cookie.getName().equals("username")){
		username = cookie.getValue();
	}
	if(cookie.getName().equals("JSESSIONID")){
		sessionId = cookie.getValue();
	}
	
	
}
if(sessionId ==null || username == null){
	response.sendRedirect("Login.jsp");
}
%>

<form action= "<%=request.getContextPath()%>/MemberController"  method="get">
<!-- <input type=hidden name="logout" value="Logout">-->
 <input type="submit" value="Logout" name="action" value="Logout">
</form>





</body>
</html>