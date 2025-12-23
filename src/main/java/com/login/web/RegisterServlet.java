package com.login.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Pattern;

// 1. IMPORT SESSION HANDLING
import jakarta.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String uName = request.getParameter("username");
        String uPass = request.getParameter("password");
        String uEmail = request.getParameter("email");
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // --- VALIDATION START ---
        // 1. Validate Password (Server Side)
        String passPattern = "^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$";
        boolean isPassValid = Pattern.matches(passPattern, uPass);
        
        if (!isPassValid) {
            out.println("<h3 style='color:red'>Registration Failed</h3>");
            out.println("<p>Password is too weak. It must be 8 characters long and include a number and special character.</p>");
            out.println("<a href='register.jsp'>Go Back</a>");
            return; 
        }
        
        // 2. Validate Email
        if (uEmail == null || !uEmail.contains("@") || !uEmail.contains(".")) {
             out.println("<h3 style='color:red'>Invalid Email</h3>");
             out.println("<a href='register.jsp'>Go Back</a>");
             return;
        }
        // --- VALIDATION END ---

        String dbUrl = "jdbc:mysql://localhost:3306/userdb"; 
        String dbUname = "root"; 
        String dbPassword = "admin"; 
        String dbDriver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
            
            String query = "INSERT INTO users(username, password, email) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uName);
            ps.setString(2, uPass);
            ps.setString(3, uEmail);
            
            int count = ps.executeUpdate();
            
            if(count > 0) {
                // --- SUCCESS: AUTO-LOGIN LOGIC ---
                
                // 1. Create the session
                HttpSession session = request.getSession();
                
                // 2. Save User Info (This logs them in)
                session.setAttribute("username", uName);
                session.setAttribute("email", uEmail);
                
                // 3. Redirect directly to Home Page
                response.sendRedirect("home.jsp");
                
            } else {
                out.println("<h3 style='color:red'>Registration Failed</h3>");
                out.println("<a href='register.jsp'>Try Again</a>");
            }
            con.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            // This usually happens if the Email already exists in DB
            out.println("<h3 style='color:red'>Error: User or Email likely already exists.</h3>");
            out.println("<p>" + e.getMessage() + "</p>");
            out.println("<a href='register.jsp'>Go Back</a>");
        }
    }
}