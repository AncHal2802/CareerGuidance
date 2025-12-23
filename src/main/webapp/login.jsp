<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Career Guidance</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="auth-page">

    <div class="container">
        
        <div class="illustration-side">
            <img src="images/career_guidance.png" alt="Login Illustration">
        </div>
        
        <div class="form-side">
            <h2 align="center">Welcome Back!</h2>
            
            <form action="LoginServlet" method="post">
                
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" placeholder="Enter your email" required>
                </div>
                
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Enter your password" required>
                </div>
                
                <button type="submit" class="submit-btn">Login</button>
                
                <div class="login-link">
                    Don't have an account? <a href="register.jsp">Register Here</a>
                </div>
                
            </form>
        </div>
        
    </div>

</body>
</html>