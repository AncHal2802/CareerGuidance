<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Consultation</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* Simple centered form for booking */
        body { background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .booking-box { background: white; padding: 40px; border-radius: 10px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 400px; text-align: center; }
        .booking-box h2 { margin-bottom: 20px; color: #2c3e50; }
        .booking-box input, .booking-box select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; border-radius: 5px; }
        .btn-confirm { background-color: #27ae60; color: white; border: none; padding: 12px; width: 100%; border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px;}
        .btn-cancel { background-color: #e74c3c; display: block; text-decoration: none; color: white; padding: 10px; border-radius: 5px; margin-top: 10px; }
    </style>
</head>
<body>

    <div class="booking-box">
        <h2>Book Your Session</h2>
        
        <% 
            // Get data passed from the link
            String cName = request.getParameter("cName");
            String cId = request.getParameter("cId");
        %>
        
        <p>Consultant: <strong><%= cName %></strong></p>
        
        <form action="BookingServlet" method="post">
            <input type="hidden" name="consultant_id" value="<%= cId %>">
            <input type="hidden" name="consultant_name" value="<%= cName %>">
            
            <label style="display:block; text-align:left; font-size:14px;">Select Date:</label>
            <input type="date" name="date" required>
            
            <label style="display:block; text-align:left; font-size:14px;">Select Time:</label>
            <select name="time" required>
                <option value="10:00 AM">10:00 AM</option>
                <option value="11:00 AM">11:00 AM</option>
                <option value="02:00 PM">02:00 PM</option>
                <option value="04:00 PM">04:00 PM</option>
                <option value="06:00 PM">06:00 PM</option>
            </select>
            
            <button type="submit" class="btn-confirm">Confirm Booking</button>
            <a href="home.jsp" class="btn-cancel">Cancel</a>
        </form>
    </div>

</body>
</html>