package com.login.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // 1. Get User Info from Session
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("email");
        
        // If user is not logged in (email is null), send them to login
        if(userEmail == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // 2. Get Form Data
        String cId = request.getParameter("consultant_id");
        String cName = request.getParameter("consultant_name");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        
        // 3. Save to Database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "admin");
            
            // Query to insert booking
            String query = "INSERT INTO bookings (user_email, consultant_id, consultant_name, booking_date, booking_time, status) VALUES (?, ?, ?, ?, ?, 'Confirmed')";
            
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userEmail);
            ps.setInt(2, Integer.parseInt(cId));
            ps.setString(3, cName);
            ps.setString(4, date);
            ps.setString(5, time);
            
            int count = ps.executeUpdate();
            
            if(count > 0) {
                // Success! Redirect to the success page
                response.sendRedirect("booking_success.jsp");
            } else {
                response.getWriter().println("Booking Failed.");
            }
            
            con.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}