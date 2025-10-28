<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Registration Form </title>
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
	.login-page {
		width: 300px;
		height: 400px;
		background: white;
		text-align: center;
		padding: 25px;
		margin: auto;
		margin-top: 10%;
		border: 2px solid gray;
		border-radius: 5px;
		background: #3CB371;
		box-shadow: 7px 10px 15px rgba(0, 0, 0, 0.35);
	}
	#login-heading {
		font-size:24px;
	}

	
</style>
</head>
<body>
	<div class="login-page">
		<form action="loginServlet">
			<label id="login-heading">Login</label>
			<label>Username</label>
			<input type="text"></input>
			<label>Password</label>
			<input type="password"></input>
		</form>
	</div>
</body>
</html>
  -->
  
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
        	background: #98FB98;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('city1.png');
			background-size: contain;
			background-position: center ceter;
			background-repeat: repeat-x; 
			font-family: sans-serif;
            padding: 20px;
        }
        
        .login-container {
            width: 100%;
            max-width: 400px;
            padding: 40px;
           	background: #D0F0C0;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            transform: translateY(0);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .login-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
        }
        
        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .login-header h1 {
            color: #333;
            font-weight: 600;
            font-size: 2.5rem;
            margin-bottom: 10px;
            position: relative;
            display: inline-block;
        }
        
        .login-header h1::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 50px;
            height: 4px;
            background: linear-gradient(90deg, #667eea, #764ba2);
            border-radius: 2px;
        }
        
        .login-header p {
            color: #666;
            margin-top: 20px;
            font-size: 0.9rem;
        }
        
        .input-group {
            margin-bottom: 25px;
            position: relative;
        }
        
        .input-group input {
            width: 100%;
            padding: 15px 20px;
            font-size: 1rem;
            border: none;
            background: #f5f5f5;
            border-radius: 10px;
            outline: none;
            transition: all 0.3s ease;
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.05);
        }
        
        .input-group input:focus {
            background: #fff;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.3);
        }
        
        .input-group input::placeholder {
            color: #aaa;
        }
        
        .input-group i {
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: #764ba2;
            font-size: 1.2rem;
        }
        
        .remember-forgot {
            display: flex;
            justify-content: space-between;
            margin-bottom: 25px;
            font-size: 0.9rem;
        }
        
        .remember-forgot label {
            color: #666;
            display: flex;
            align-items: center;
            cursor: pointer;
        }
        
        .remember-forgot input {
            margin-right: 8px;
            accent-color: #667eea;
        }
        
        .remember-forgot a {
            color: #667eea;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        
        .remember-forgot a:hover {
            color: #764ba2;
            text-decoration: underline;
        }
        
        .login-button {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);
            color: white;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
        
        .login-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.6);
        }
        
        .login-button:active {
            transform: translateY(0);
            box-shadow: 0 3px 10px rgba(102, 126, 234, 0.4);
        }
        
        .register-link {
            text-align: center;
            margin-top: 25px;
            color: #666;
            font-size: 0.9rem;
        }
        
        .register-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        
        .register-link a:hover {
            color: #764ba2;
            text-decoration: underline;
        }
        
        @media (max-width: 480px) {
            .login-container {
                padding: 30px 20px;
            }
        }
        
        .back-to-home {
            margin-left:112px;
            margin-top:10px;
            padding: 15px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);
            color: white;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
        .back-to-home a {
        	color:white;
        	text-decoration:none;
        }
        
        .back-to-home:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.6);
        }
        
        .back-to-home:active {
            transform: translateY(0);
            box-shadow: 0 3px 10px rgba(102, 126, 234, 0.4);
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <h1>Login</h1>
            <p>Welcome back! Please enter your details</p>
        </div>
        
        <form action="loginServlet" method="post">
            <div class="input-group">
                <input type="text" placeholder="Username" name="username" required>
                <i class="fas fa-user"></i>
            </div>
            
            <div class="input-group">
                <input type="password" placeholder="Password" name="password" required>
                <i class="fas fa-lock"></i>
            </div>
            
            <div class="remember-forgot">
                <label>
                    <input type="checkbox"> Remember me
                </label>
                <a href="updatePassword.jsp">Forgot password?</a>
            </div>
            
            <button type="submit" class="login-button">Login</button>
            
            <div class="register-link">
                <p>Don't have an account? <a href="registration.jsp">Register</a></p>
            </div>    	
        </form>
        <button type="submit" class="back-to-home"><a href="index.html">Home</a></button>
            
         <%--display error massage if login fails --%>
         <% String error = request.getParameter("error");
         	if(error != null && error.equals("1")) { %>
         		<p style = "color: red; text-align: center;">Invalid User or doesn't exist! </p>
         <% } %>
    </div>
</body>
</html>