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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String uName = request.getParameter("username");
        String uPass = request.getParameter("password");
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // UPDATE THESE AGAIN
        String dbUrl = "jdbc:mysql://localhost:3306/userdb";
        String dbUname = "root";
        String dbPassword = "admin"; // <--- CHANGE THIS
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
            
            // Check if user exists with matching password
            String query = "SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uName);
            ps.setString(2, uPass);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()) {
                // Login Success
                out.println("<h3 style='color:green'>Welcome, " + uName + "! You are logged in.</h3>");
                out.println("<a href='login.jsp'>Logout</a>");
            } else {
                // Login Failed
                out.println("<h3 style='color:red'>Invalid Username or Password</h3>");
                out.println("<a href='login.jsp'>Try Again</a>");
            }
            
            con.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    }
}