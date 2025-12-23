<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Career Guidance</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body class="home-page">

    <nav class="navbar">
        <div class="logo">
            <i class="fas fa-briefcase"></i> Career Guidance
        </div>
        <div class="nav-links">
    <a href="#">Home</a>
    <a href="#career-options">Career Options</a>
    <a href="#categories">Categories</a>
    <a href="#consultants">Consultants</a>
    <a href="resources.jsp">Resources</a>
    <a href="my_bookings.jsp" style="font-weight:600; color:#f39c12;">My Bookings</a>
</div>
        <div class="user-profile">
            <% 
                String user = (String) session.getAttribute("username");
                if(user == null) user = "Guest";
            %>
            <span class="user-name">Welcome, <%= user %></span>
            <a href="LoginServlet?logout=true" class="logout-btn-nav">Logout</a>
        </div>
    </nav>

    <header class="hero-section">
        <div class="hero-content">
            <h1>Build Your Career with <br> Expert Guidance</h1>
            <p>Explore career paths, get personalized advice, and connect with professional consultants.</p>
            <div class="hero-buttons">
    <a href="#career-options" class="btn-primary" style="text-decoration:none;">Explore Careers</a>
    
    <a href="#consultants" class="btn-outline" style="text-decoration:none;">Talk to a Consultant</a>
</div>
        </div>
    </header>

    <section class="section-container" id="career-options" style="background-color: #f4ecf7;">
        <h2 class="section-title">Popular Career Options</h2>
        <div class="cards-grid">
            
            <div class="card">
                <div class="icon-circle"><i class="fas fa-cogs"></i></div>
                <h3>Engineering</h3>
                <a href="career_details.jsp?type=Engineering" class="btn-view" style="display:inline-block; text-decoration:none;">View Details</a>
            </div>

            <div class="card">
                <div class="icon-circle"><i class="fas fa-heartbeat"></i></div>
                <h3>Medical</h3>
                <a href="career_details.jsp?type=Medical" class="btn-view" style="display:inline-block; text-decoration:none;">View Details</a>
            </div>

            <div class="card">
                <div class="icon-circle"><i class="fas fa-laptop-code"></i></div>
                <h3>IT & Software</h3>
                <a href="career_details.jsp?type=IT" class="btn-view" style="display:inline-block; text-decoration:none;">View Details</a>
            </div>

            <div class="card">
                <div class="icon-circle"><i class="fas fa-briefcase"></i></div>
                <h3>Management</h3>
                <a href="career_details.jsp?type=Management" class="btn-view" style="display:inline-block; text-decoration:none;">View Details</a>
            </div>

            <div class="card">
                <div class="icon-circle"><i class="fas fa-university"></i></div>
                <h3>Govt Jobs</h3>
                <a href="career_details.jsp?type=Govt" class="btn-view" style="display:inline-block; text-decoration:none;">View Details</a>
            </div>
        </div>
    </section>

    <section class="section-container" id="categories" style="background-color: #fff;"> 
       <h2 class="section-title">Explore Categories</h2>
        <div class="categories-wrapper">
            <a href="category_details.jsp?type=10th" class="category-btn cat-green">After 10th</a>
            <a href="category_details.jsp?type=12th" class="category-btn cat-orange">After 12th</a>
            <a href="category_details.jsp?type=Graduation" class="category-btn cat-blue">Graduation</a>
            <a href="category_details.jsp?type=PostGrad" class="category-btn cat-beige">Post Graduation</a>
            <a href="category_details.jsp?type=Skills" class="category-btn cat-brown">Skill-Based Careers</a>
        </div>
    </section>

    <section class="section-container" id="consultants">
        <h2 class="section-title">Meet Our Consultants</h2>
        <div class="consultants-grid">
            
            <div class="consultant-card">
                <div class="consultant-img-wrapper">
                    <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Consultant">
                </div>
                <div class="consultant-info">
                    <h3 class="consultant-name">Dr. Aisha Verma</h3>
                    <p class="consultant-role">Career Coach</p>
                   <a href="book_consultant.jsp?cId=1&cName=Dr. Aisha Verma" class="btn-book" style="display:block; text-decoration:none;">Book Consultation</a>                </div>
            </div>

            <div class="consultant-card">
                <div class="consultant-img-wrapper">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Consultant">
                </div>
                <div class="consultant-info">
                    <h3 class="consultant-name">Rahul Mehra</h3>
                    <p class="consultant-role">IT Specialist</p>
                    <a href="book_consultant.jsp?cId=2&cName=Rahul Mehra" class="btn-book" style="display:block; text-decoration:none;">Book Consultation</a>
                </div>
            </div>

            <div class="consultant-card">
                <div class="consultant-img-wrapper">
                    <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Consultant">
                </div>
                <div class="consultant-info">
                    <h3 class="consultant-name">Neha Sharma</h3>
                    <p class="consultant-role">Education Counselor</p>
                    <a href="book_consultant.jsp?cId=3&cName=Neha Sharma" class="btn-book" style="display:block; text-decoration:none;">Book Consultation</a>
                </div>
            </div>

        </div>
    </section>

    <section class="section-container" id="resources" style="background-color: #e3f2fd;">
        <h2 class="section-title">Career Resources</h2>
        <div class="cards-grid"> 
            
            <a href="resources.jsp" style="text-decoration:none; color:inherit;">
        <div class="resource-card">
        <div class="resource-icon"><i class="fas fa-file-alt"></i></div>
        <h3>Resume Tips</h3>
    </div>
</a>

            <a href="resources.jsp" style="text-decoration:none; color:inherit;">
        <div class="resource-card">
        <div class="resource-icon"><i class="fas fa-file-alt"></i></div>
                <h3>Interview Prep</h3>
            </div>

            <a href="resources.jsp" style="text-decoration:none; color:inherit;">
    <div class="resource-card">
        <div class="resource-icon"><i class="fas fa-file-alt"></i></div>
                <h3>Aptitude Tests</h3>
            </div>

            <a href="resources.jsp" style="text-decoration:none; color:inherit;">
    <div class="resource-card">
        <div class="resource-icon"><i class="fas fa-file-alt"></i></div>
                <h3>Career Assessments</h3>
            </div>

        </div>
    </section>

    <footer>
        <div style="margin-bottom: 20px;">
            <h4>Contact Us</h4>
            <p>Email: info@careerguidance.com | Phone: +123 456 7890</p>
        </div>
        <p>&copy; 2025 Career Guidance. All Rights Reserved.</p>
    </footer>

</body>
</html>