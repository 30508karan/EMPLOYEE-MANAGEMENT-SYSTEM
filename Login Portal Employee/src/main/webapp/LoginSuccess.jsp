<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Success Page</title>
</head>
<body>
<%
String userName = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
}
}
if(userName == null) response.sendRedirect("login.html");
%>
<div><header><h1><marquee>Hii <%=userName %> Login successful. If you wants to register Yourself then click on the below registration link. </marquee></h1></header></div>
<br>
<header><h1>This a official website. Please register yourself carefully.</h1></header><br><br><br>
<a href="http://localhost:8081/Employee_Management_System/user-list.jsp"><h1>Click Here to Register Yourself</h1></a><br>
<form action="LogoutServlet" method="post">
<h1><input type="submit" value="Logout" ></h1>
</form>
</body>
</html>
