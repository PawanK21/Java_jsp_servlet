<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
<%
	//retrieve the session attribute
	HttpSession session1 = request.getSession(false);

	//check if the session is not null and the username attibute is set
	if(session1 != null) {
		//get the username from the session
		session1.invalidate();
	} 
		//Redirect to the login page if the session is null
		response.sendRedirect("login.jsp");
%>
</body>
</html>