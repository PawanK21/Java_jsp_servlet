<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
        
        .register-container {
            width: 100%;
            max-width: 450px;
            padding: 40px;
            background: #D0F0C0;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            transform: translateY(0);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .register-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
        }
        
        .register-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .register-header h1 {
            color: #333;
            font-weight: 600;
            font-size: 2.5rem;
            margin-bottom: 10px;
            position: relative;
            display: inline-block;
        }
        
        .register-header h1::after {
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
        
        .register-header p {
            color: #666;
            margin-top: 20px;
            font-size: 0.9rem;
        }
        
        .input-group {
            margin-bottom: 20px;
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
        
        .password-requirements {
            background: #f0f4ff;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
            font-size: 0.85rem;
            color: #555;
        }
        
        .password-requirements ul {
            padding-left: 20px;
            margin-top: 8px;
        }
        
        .password-requirements li {
            margin-bottom: 5px;
        }
        
        .terms {
            display: flex;
            margin-bottom: 25px;
            font-size: 0.9rem;
        }
        
        .terms label {
            color: #666;
            display: flex;
            align-items: flex-start;
            cursor: pointer;
        }
        
        .terms input {
            margin-right: 10px;
            margin-top: 3px;
            accent-color: #667eea;
        }
        
        .terms a {
            color: #667eea;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        
        .terms a:hover {
            color: #764ba2;
            text-decoration: underline;
        }
        
        .register-button {
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
        
        .register-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.6);
        }
        
        .register-button:active {
            transform: translateY(0);
            box-shadow: 0 3px 10px rgba(102, 126, 234, 0.4);
        }
        
        .login-link {
            text-align: center;
            margin-top: 25px;
            color: #666;
            font-size: 0.9rem;
        }
        
        .login-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        
        .login-link a:hover {
            color: #764ba2;
            text-decoration: underline;
        }
        
        @media (max-width: 480px) {
            .register-container {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="register-header">
            <h1>Register</h1>
            <p>Create your account to get started</p>
        </div>
        
        <form>
            <div class="input-group">
                <input type="text" placeholder="Username" required>
                <i class="fas fa-user"></i>
            </div>
            
            <div class="input-group">
                <input type="email" placeholder="Email Address" required>
                <i class="fas fa-envelope"></i>
            </div>
            
            <div class="input-group">
                <input type="password" placeholder="Enter Password" required>
                <i class="fas fa-lock"></i>
            </div>
            
            <div class="input-group">
                <input type="password" placeholder="Retype Password" required>
                <i class="fas fa-lock"></i>
            </div>
            
            <div class="password-requirements">
                <strong>Password must include:</strong>
                <ul>
                    <li>At least 8 characters</li>
                    <li>One uppercase letter</li>
                    <li>One number</li>
                    <li>One special character</li>
                </ul>
            </div>
            
            <div class="terms">
                <label>
                    <input type="checkbox" required>
                    I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                </label>
            </div>
            
            <button type="submit" class="register-button">Create Account</button>
            
            <div class="login-link">
                <p>Already have an account? <a href="login.jsp">Login</a></p>
            </div>
        </form>
    </div>
</body>
</html>