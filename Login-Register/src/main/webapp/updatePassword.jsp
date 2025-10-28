<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
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
	.forgot-password {
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
     
     .label-input {
     	padding:60px;
     }
     .label-input>label {
     	font-size:15px;
     }
     .label-input>input {
     	width: 60%;
     	padding:12px;
     	border: 1px solid lightgreen;
     	border-radius:7px;
     }
     input::placeholder {
        font-style: italic;
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
<form action="forgotServlet" method="post">
	<div class="forgot-password">
		<div class="label-input">
			<label  style="padding-left:60px;">Email:</label>
			<input type="email" name="email" placeholder="Enter Email">
			<br>
			<label  style="padding-left:-20px;">New Password:</label>
			<input type="password" name="new-password" placeholder="Enter new password">
		</div>
		<div class="links">
			<a href="login.jsp">Submit</a>
		</div>
	</div>
</form>
	

</body>
</html>