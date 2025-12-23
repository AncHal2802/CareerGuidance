<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Career Details - Career Guidance</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body class="home-page">

    <%
        // 1. GET THE CAREER TYPE FROM URL
        String type = request.getParameter("type");
        if(type == null) type = "Engineering"; // Default

        // 2. DEFINE VARIABLES
        String title = "";
        String desc = "";
        String icon = "";
        String[] skills = {};
        String[] timelineHeads = {};
        String[] timelineBodys = {};
        String[] pros = {};
        String[] cons = {};
        String[] exams = {};
        
        // NEW RESOURCES ARRAYS
        String[] courses = {};
        String[] books = {};
        String[] youtube = {};
        String[] websites = {};
        
        // 3. FILL DATA BASED ON SELECTION
        switch(type) {
            case "Medical":
                title = "Medical";
                icon = "fa-heartbeat";
                desc = "The medical field is dedicated to diagnosing, treating, and preventing illnesses to improve human health.";
                skills = new String[]{"Empathy", "Patience", "Biology", "Focus", "Memory"};
                timelineHeads = new String[]{"Class 12th (PCB)", "NEET Exam", "MBBS (5.5 Yrs)", "Internship", "MD/MS (Specialization)"};
                timelineBodys = new String[]{"Score high in Physics, Chem, Bio.", "Crack National Eligibility Entrance Test.", "Rigorous academic study.", "1 Year mandatory rotation.", "3 Years for becoming a specialist."};
                pros = new String[]{"Respectful Career", "High Job Security", "Helping People"};
                cons = new String[]{"Very Long Study Duration", "High Stress", "Expensive Education"};
                exams = new String[]{"NEET UG", "NEET PG", "AIIMS"};
                
                // Medical Resources
                courses = new String[]{"Khan Academy (Medicine)", "NPTEL Biomed", "Coursera (Vital Signs)"};
                books = new String[]{"NCERT Biology (11th & 12th)", "Trueman's Biology", "HC Verma (Physics for NEET)"};
                youtube = new String[]{"Biomentors Online", "Competition Wallah", "Physics Wallah"};
                websites = new String[]{"NTA.ac.in", "Allen Test Series", "Embibe"};
                break;

            case "IT":
                title = "IT & Software";
                icon = "fa-laptop-code";
                desc = "Focuses on developing software, managing data, and creating digital solutions for problems.";
                skills = new String[]{"Coding (Java/Python)", "Logic", "Math", "Creativity"};
                timelineHeads = new String[]{"Class 12th (Science)", "B.Tech CS / BCA", "Learn Coding", "Internships", "Job Placement"};
                timelineBodys = new String[]{"Focus on Math and Computer Science.", "3-4 Years Degree.", "Master Full Stack, AI, or Data Science.", "Build real-world projects.", "Get hired by Tech Companies."};
                pros = new String[]{"High Salary", "Remote Work Options", "Rapid Growth"};
                cons = new String[]{"Sedentary Lifestyle", "Constant Learning Needed", "Market Fluctuations"};
                exams = new String[]{"JEE Mains", "BITSAT", "NIMCET (for MCA)"};
                
                // IT Resources
                courses = new String[]{"CS50 (Harvard/edX)", "Udemy Web Dev Bootcamp", "FreeCodeCamp"};
                books = new String[]{"Clean Code by Robert C. Martin", "Head First Java", "Cracking the Coding Interview"};
                youtube = new String[]{"Traversy Media", "Apna College", "Telusko"};
                websites = new String[]{"GitHub", "LeetCode", "StackOverflow", "GeeksForGeeks"};
                break;

            case "Management":
                title = "Management (MBA)";
                icon = "fa-briefcase";
                desc = "Involves planning, organizing, and leading business activities to achieve organizational goals.";
                skills = new String[]{"Leadership", "Communication", "Decision Making", "Public Speaking"};
                timelineHeads = new String[]{"Class 12th (Any Stream)", "BBA / B.Com / B.Tech", "CAT / GMAT Exam", "MBA (2 Years)", "Manager Role"};
                timelineBodys = new String[]{"Stream doesn't matter much.", "Complete any graduation.", "Prepare for entrance exams.", "Specialise in HR, Finance, or Marketing.", "Start as Management Trainee."};
                pros = new String[]{"Networking", "Leadership Roles", "High Earning Potential"};
                cons = new String[]{"High Pressure", "Long Working Hours", "Expensive MBA Fees"};
                exams = new String[]{"CAT", "MAT", "GMAT", "XAT"};
                
                // Management Resources
                courses = new String[]{"Google Project Management", "IIMBx (edX)", "Coursera Business Specialization"};
                books = new String[]{"Word Power Made Easy", "The Personal MBA", "Quantitative Aptitude by Arun Sharma"};
                youtube = new String[]{"CATKing", "InsideIIM", "MBA Wallah"};
                websites = new String[]{"CareerLauncher", "TIME", "HitBullsEye"};
                break;
                
            case "Govt":
                title = "Government Jobs";
                icon = "fa-university";
                desc = "Careers in public service offering stability, perks, and the opportunity to serve the nation.";
                skills = new String[]{"General Knowledge", "Patience", "Discipline", "Service Mindset"};
                timelineHeads = new String[]{"Class 12th / Graduation", "Preparation", "Preliminary Exam", "Mains & Interview", "Selection"};
                timelineBodys = new String[]{"Degree requirement depends on the role.", "1-2 Years dedicated study.", "Screening round.", "Final selection rounds.", "Training and Posting."};
                pros = new String[]{"Job Stability", "Government Perks", "Work-Life Balance"};
                cons = new String[]{"Slow Career Growth", "Frequent Transfers", "Extremely High Competition"};
                exams = new String[]{"UPSC (IAS/IPS)", "SSC CGL", "IBPS (Banking)", "Railways"};
                
                // Govt Resources
                courses = new String[]{"Unacademy UPSC", "Vision IAS Notes", "Mrunal Economics"};
                books = new String[]{"Indian Polity by Laxmikanth", "Spectrum (Modern History)", "Lucent GK"};
                youtube = new String[]{"StudyIQ IAS", "Mrunal Patel", "Adda247"};
                websites = new String[]{"Jagran Josh", "GKToday", "InsightsIAS"};
                break;

            default: // Engineering (This was cutoff in your code)
                title = "Engineering";
                icon = "fa-cogs";
                desc = "Engineering focuses on designing, building, and maintaining systems, machines, and software using scientific principles.";
                skills = new String[]{"Logical Thinking", "Problem Solving", "Strong Math", "Analytical Mind"};
                timelineHeads = new String[]{"Class 12th (PCM)", "Entrance Exams", "B.Tech (4 Years)", "Internships", "Job"};
                timelineBodys = new String[]{"Score well in Science & Math.", "JEE Mains, Advanced, CETs.", "Choose branch (CS, Mech, Civil).", "Gain practical experience.", "Campus Placement."};
                pros = new String[]{"High Demand", "Global Opportunities", "Good Salary"};
                cons = new String[]{"High Competition", "Stressful Work", "Continuous Learning"};
                exams = new String[]{"JEE Mains", "JEE Advanced", "BITSAT", "VITEEE"};
                
                // Engineering Resources
                courses = new String[]{"NPTEL (IIT Courses)", "Coursera Python/Java", "Khan Academy Physics"};
                books = new String[]{"Concepts of Physics (HC Verma)", "RD Sharma (Maths)", "NCERT Chemistry"};
                youtube = new String[]{"Physics Wallah", "Unacademy JEE", "Mohit Tyagi"};
                websites = new String[]{"Toppr", "Embibe", "GeeksForGeeks"};
                break;
        }
    %>

    <nav class="navbar">
        <div class="logo"><i class="fas fa-briefcase"></i> Career Guidance</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="#">Career Options</a>
            <a href="#">Categories</a>
            <a href="#">Consultants</a>
        </div>
        <div class="user-profile">
            <a href="home.jsp" class="logout-btn-nav">Back to Dashboard</a>
        </div>
    </nav>

    <header class="career-hero">
        <h1><i class="fas <%= icon %>"></i> <%= title %></h1>
        <p><%= desc %></p>
    </header>

    <div class="details-container">
        
        <div class="main-content">

            <section class="detail-section">
                <h3 class="detail-title"><i class="fas fa-user-check"></i> Required Skills</h3>
                <div style="margin-top: 15px;">
                    <% for(String s : skills) { %>
                        <span class="skill-tag"><%= s %></span>
                    <% } %>
                </div>
            </section>

            <section class="detail-section">
                <h3 class="detail-title"><i class="fas fa-route"></i> Career Roadmap</h3>
                <div class="timeline">
                    <% for(int i=0; i<timelineHeads.length; i++) { %>
                    <div class="timeline-item">
                        <div class="timeline-head"><%= timelineHeads[i] %></div>
                        <div class="timeline-body"><%= timelineBodys[i] %></div>
                    </div>
                    <% } %>
                </div>
            </section>

            <section class="detail-section">
                <h3 class="detail-title"><i class="fas fa-chart-line"></i> Salary Potential</h3>
                <div class="salary-box">
                    <div class="salary-label"><span>Entry Level</span> <span>Moderate</span></div>
                    <div class="progress-bg"><div class="progress-fill" style="width: 30%;"></div></div>
                </div>
                <div class="salary-box">
                    <div class="salary-label"><span>Mid-Level</span> <span>High</span></div>
                    <div class="progress-bg"><div class="progress-fill" style="width: 60%;"></div></div>
                </div>
                <div class="salary-box">
                    <div class="salary-label"><span>Senior Level</span> <span>Very High</span></div>
                    <div class="progress-bg"><div class="progress-fill" style="width: 90%;"></div></div>
                </div>
            </section>

             <section class="detail-section">
                <h3 class="detail-title"><i class="fas fa-balance-scale"></i> Pros & Cons</h3>
                <div class="pros-cons-grid">
                    <div class="pc-col">
                        <h4 style="color: green;">Pros</h4>
                        <% for(String p : pros) { %>
                            <div class="pc-item"><i class="fas fa-check-circle"></i> <%= p %></div>
                        <% } %>
                    </div>
                    <div class="pc-col">
                        <h4 style="color: red;">Cons</h4>
                        <% for(String c : cons) { %>
                            <div class="pc-item"><i class="fas fa-times-circle"></i> <%= c %></div>
                        <% } %>
                    </div>
                </div>
            </section>

            <section class="detail-section">
                <h3 class="detail-title"><i class="fas fa-book-reader"></i> Resources & Preparation</h3>
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                    
                    <div>
                        <h4 style="color: #2c3e50; margin-bottom: 10px;"><i class="fas fa-laptop"></i> Free Courses</h4>
                        <ul style="padding-left: 20px; color: #555;">
                            <% for(String c : courses) { %>
                                <li style="margin-bottom: 5px;"><%= c %></li>
                            <% } %>
                        </ul>
                    </div>

                    <div>
                        <h4 style="color: #2c3e50; margin-bottom: 10px;"><i class="fas fa-book"></i> Recommended Books</h4>
                        <ul style="padding-left: 20px; color: #555;">
                            <% for(String b : books) { %>
                                <li style="margin-bottom: 5px;"><%= b %></li>
                            <% } %>
                        </ul>
                    </div>

                    <div>
                        <h4 style="color: #c4302b; margin-bottom: 10px;"><i class="fab fa-youtube"></i> YouTube Channels</h4>
                        <ul style="padding-left: 20px; color: #555;">
                            <% for(String y : youtube) { %>
                                <li style="margin-bottom: 5px;"><%= y %></li>
                            <% } %>
                        </ul>
                    </div>

                    <div>
                        <h4 style="color: #0077b5; margin-bottom: 10px;"><i class="fas fa-globe"></i> Practice Platforms</h4>
                        <ul style="padding-left: 20px; color: #555;">
                            <% for(String w : websites) { %>
                                <li style="margin-bottom: 5px;"><%= w %></li>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </section>

        </div>

        <div class="sidebar">
            <div class="cta-box">
                <h3>Need Guidance?</h3>
                <p>Talk to our expert counselors for <%= title %>.</p>
                <a href="#" class="cta-btn">Book Consultation</a>
            </div>

            <div class="detail-section" style="margin-top: 30px;">
                <h4><i class="fas fa-book"></i> Entrance Exams</h4>
                <ul style="padding-left: 20px; color: #555;">
                    <% for(String e : exams) { %>
                        <li><%= e %></li>
                    <% } %>
                </ul>
            </div>
        </div>

    </div>

    <footer>
        <p>&copy; 2025 Career Guidance. All Rights Reserved.</p>
    </footer>

</body>
</html>