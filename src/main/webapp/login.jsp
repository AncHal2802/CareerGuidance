<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body { font-family: sans-serif; padding: 20px; }
        form { margin-top: 10px; }
        input { margin-bottom: 10px; padding: 5px; }
    </style>
</head>
<body>
    <h2>Login Page</h2>
    
    <form action="LoginServlet" method="post">
        <label>Name:</label><br>
        <input type="text" name="username" required><br>
        
        <label>Password:</label><br>
        <input type="password" name="password" required><br>
        
        <input type="submit" value="Login">
    </form>
    
    <br>
    <a href="register.jsp">New User? Register here</a>
</body>
</html>