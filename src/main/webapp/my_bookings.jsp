<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Bookings - Career Guidance</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .dashboard-container { max-width: 900px; margin: 50px auto; padding: 0 20px; }
        
        .booking-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 25px;
            margin-bottom: 20px;
            border-left: 5px solid #3498db;
        }
        
        .b-info h3 { margin: 0 0 5px 0; color: #2c3e50; }
        .b-info p { margin: 0; color: #777; font-size: 14px; }
        .b-time { text-align: right; }
        .b-time .date { font-weight: bold; font-size: 18px; color: #2c3e50; }
        .b-time .clock { color: #e67e22; font-weight: 600; }
        
        .status-badge {
            background: #e8f5e9; color: #27ae60;
            padding: 5px 12px; border-radius: 20px;
            font-size: 12px; font-weight: bold;
            display: inline-block; margin-top: 5px;
        }

        .no-bookings { text-align: center; padding: 50px; color: #777; }
    </style>
</head>
<body class="home-page">

    <nav class="navbar">
        <div class="logo"><i class="fas fa-briefcase"></i> Career Guidance</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="resources.jsp">Resources</a>
            <a href="my_bookings.jsp" style="color: #e67e22; font-weight:bold;">My Bookings</a>
        </div>
        <div class="user-profile">
            <a href="LoginServlet?logout=true" class="logout-btn-nav">Logout</a>
        </div>
    </nav>

    <div class="dashboard-container">
        <h2 class="section-title">My Scheduled Sessions</h2>

        <%
            // 1. Get User Email
            String email = (String) session.getAttribute("email");
            
            if(email == null) {
                response.sendRedirect("login.jsp"); // Force login
            } else {
                
                boolean hasBookings = false;
                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "admin");
                    
                    // 2. Query bookings for this specific user
                    String query = "SELECT * FROM bookings WHERE user_email=? ORDER BY booking_date DESC";
                    PreparedStatement ps = con.prepareStatement(query);
                    ps.setString(1, email);
                    
                    ResultSet rs = ps.executeQuery();
                    
                    while(rs.next()) {
                        hasBookings = true;
                        String cName = rs.getString("consultant_name");
                        String bDate = rs.getString("booking_date");
                        String bTime = rs.getString("booking_time");
                        String status = rs.getString("status");
        %>
        
            <div class="booking-card">
                <div class="b-info">
                    <h3><%= cName %></h3>
                    <p><i class="fas fa-video"></i> Video Consultation</p>
                    <span class="status-badge"><%= status %></span>
                </div>
                <div class="b-time">
                    <div class="date"><%= bDate %></div>
                    <div class="clock"><i class="far fa-clock"></i> <%= bTime %></div>
                    <a href="#" style="font-size:12px; color:#3498db; text-decoration:none; display:block; margin-top:5px;">Join Meeting Link</a>
                </div>
            </div>

        <% 
                    } // End While Loop
                    
                    if(!hasBookings) {
        %>
            <div class="no-bookings">
                <i class="fas fa-calendar-times" style="font-size: 50px; margin-bottom: 20px; color: #ccc;"></i>
                <h3>No upcoming sessions.</h3>
                <p>Browse our consultants to book your first session.</p>
                <br>
                <a href="home.jsp#consultants" class="btn-primary" style="text-decoration:none;">Find a Consultant</a>
            </div>
        <%
                    }
                    con.close();
                } catch(Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            }
        %>
    </div>

</body>
</html>