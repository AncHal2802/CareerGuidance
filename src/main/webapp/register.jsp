<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var errorSpan = document.getElementById("passError");
            
            // Reset error message
            errorSpan.innerHTML = "";

            // Check for Strong Password
            // (At least 8 characters, 1 number, 1 special character)
            var strongPassRegex = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$/;
            if (!strongPassRegex.test(password)) {
                errorSpan.innerHTML = "Password must be 8+ chars, include a number & special char.";
                return false;
            }

            // Check if Passwords Match
            if (password !== confirmPassword) {
                errorSpan.innerHTML = "Passwords do not match!";
                return false;
            }

            return true; // Allow submission
        }
    </script>
</head>
<body>
    <div class="container">
        
        <div class="illustration-side">
            <img src="images/career_guidance.png" alt="Registration Illustration"> 
        </div>
        
        <div class="form-side">
            <h2>Registration</h2>
            
            <form name="regForm" action="RegisterServlet" method="post" onsubmit="return validateForm()">
                
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="username" placeholder="Enter your name" required>
                </div>
                
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" placeholder="Enter your email" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" id="password" name="password" placeholder="Create a password" required>
                    <span id="passError" class="error-text"></span>
                </div>
                
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" id="confirmPassword" placeholder="Confirm your password" required>
                </div>
                
                <input type="submit" value="Register Now" class="submit-btn">
            </form>
            
            <div class="login-link">
                Already have an account? <a href="login.jsp">Sign In</a>
            </div>
        </div>
    </div>

</body>
</html>