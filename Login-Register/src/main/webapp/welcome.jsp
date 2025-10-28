<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
<style>
	body {
		background: #98FB98;
		align-items: center;
		margin: 0;
		height: 100vh;
		justify-content: center;
		display: flex;
		flex-direction: column;
		background-image: url('city1.png');
		background-size: contain;
		background-position: center ceter;
		background-repeat: repeat-x; 
		font-family: sans-serif;
	}
	.login-reg-page {
		width: 600px;
		height: 250px;
		text-align: center;
		padding: 25px;
		margin: auto;
		margin-top: 10%;
		border: 2px solid gray;
		border-radius: 5px;
		background: #D0F0C0;	
		border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(10px);
        transform: translateY(0);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
	}
	.login-reg-page:hover {
         transform: translateY(-5px);
         box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
     }
     
	.links>a {
		text-decoration:none;
		padding: 10px;
		color: green;
		font-size: 18px;
		border: 2px solid lightgray;
		border-radius:4px;
		box-shadow: 5px 3px 7px gray;
	}
	a:hover {
		font-size: 20px;								
		padding: 15px;
		color: #004526;
		border: 2px solid lightgray;
		border-radius:4px;
		box-shadow: 5px 3px 7px gray;
	}
	
</style>
</head>
<body>
<%
	//retrieve the session attribute
	HttpSession session1 = request.getSession(false);

	//check if the session is not null and the username attibute is set
	if(session1 != null && session1.getAttribute("username") != null) {
		//get the username from the session
		String username = (String)session1.getAttribute("username");
%>
	<div class="login-reg-page">
		<h1>Welcome, <%= username %>!</h1>
		
		<h1>Now you can enjoy this DSA sheet</h1>
		<h2>My name is Pawan Kumar</h2>	
		<h3>I am a Java Software Engineer</h3>
		<div class="links">
			<a href="logout.jsp">Logout</a>
		</div>
	</div>
<%
	} else {
		//Redirect to the login page if the session is null
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>