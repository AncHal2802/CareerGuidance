<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmed</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; text-align: center; }
        .success-box { background: white; padding: 50px; border-radius: 15px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); max-width: 500px; }
        .icon-check { font-size: 60px; color: #27ae60; margin-bottom: 20px; }
        .btn-home { background-color: #2c3e50; color: white; text-decoration: none; padding: 12px 25px; border-radius: 5px; display: inline-block; margin-top: 20px; }
    </style>
</head>
<body>

    <div class="success-box">
        <i class="fas fa-check-circle icon-check"></i>
        <h2 style="color: #2c3e50;">Booking Confirmed!</h2>
        <p style="color: #555; font-size: 16px; margin: 10px 0;">
            Your session has been successfully scheduled. <br>
            A confirmation email has been sent to your registered address.
        </p>
        
        <a href="home.jsp" class="btn-home">Back to Dashboard</a>
    </div>

</body>
</html>