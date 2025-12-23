package com.login.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // --- 1. HANDLING LOGIN (POST REQUEST) ---
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String uEmail = request.getParameter("email");
        String uPass = request.getParameter("password");
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Database Config
        String dbUrl = "jdbc:mysql://localhost:3306/userdb";
        String dbUname = "root";
        String dbPassword = "admin"; // Check your password
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
            
            // Search by email and password
            String query = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uEmail);
            ps.setString(2, uPass);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()) {
                // LOGIN SUCCESS
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("username"));
                session.setAttribute("email", rs.getString("email")); // Save email for bookings
                
                response.sendRedirect("home.jsp");
                
            } else {
                // LOGIN FAILED
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid Email or Password');");
                out.println("location='login.jsp';");
                out.println("</script>");
            }
            
            con.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red'>Error: " + e.getMessage() + "</h3>");
        }
    }

    // --- 2. HANDLING LOGOUT (GET REQUEST) ---
    // This runs when you click <a href="LoginServlet?logout=true">Logout</a>
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String logout = request.getParameter("logout");
        
        if(logout != null && logout.equals("true")) {
            HttpSession session = request.getSession();
            session.invalidate(); // Destroys the session (logs the user out)
            response.sendRedirect("login.jsp"); // Send back to login screen
        }
    }
}