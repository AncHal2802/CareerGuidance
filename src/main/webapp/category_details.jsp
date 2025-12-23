<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Explore Category - Career Guidance</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* Specific Styles for Category Page */
        .cat-hero { padding: 60px 20px; text-align: center; color: white; background-size: cover; background-position: center; }
        .cat-10th { background: linear-gradient(to right, #56ab2f, #a8e063); }
        .cat-12th { background: linear-gradient(to right, #ff9966, #ff5e62); }
        .cat-grad { background: linear-gradient(to right, #2193b0, #6dd5ed); }
        .cat-pg   { background: linear-gradient(to right, #cc2b5e, #753a88); }
        .cat-skill{ background: linear-gradient(to right, #603813, #b29f94); }
        
        .intro-box {
            background: #fff; padding: 30px; border-radius: 10px; margin: -40px auto 30px; 
            width: 80%; box-shadow: 0 10px 20px rgba(0,0,0,0.1); text-align: center; position: relative;
        }
        
        .stream-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px;
            max-width: 1000px; margin: 0 auto 50px; padding: 0 20px;
        }
        
        .stream-card {
            background: white; border-radius: 10px; padding: 25px; 
            box-shadow: 0 5px 15px rgba(0,0,0,0.05); border-left: 5px solid #2c3e50;
            transition: transform 0.3s;
        }
        .stream-card:hover { transform: translateY(-5px); }
        
        .stream-title { font-size: 20px; font-weight: 600; margin-bottom: 10px; color: #333; }
        .stream-desc { font-size: 14px; color: #666; margin-bottom: 15px; }
        .sub-options { list-style: none; padding: 0; }
        .sub-options li { background: #f8f9fa; padding: 8px; margin-bottom: 5px; border-radius: 4px; font-size: 13px; color: #555; }
        .sub-options li i { color: #27ae60; margin-right: 5px; }

        .aptitude-banner {
            background: #2c3e50; color: white; text-align: center; padding: 40px; 
            margin: 50px auto; max-width: 900px; border-radius: 15px;
        }
    </style>
</head>
<body class="home-page">

    <%
        String type = request.getParameter("type");
        if(type == null) type = "10th";

        String title = "";
        String subtitle = "";
        String introTitle = "";
        String introText = "";
        String heroClass = "";
        
        // Data Arrays
        String[] streams = {};
        String[] streamDescs = {};
        String[][] subOptions = {}; // 2D Array for sub-bullets
        
        switch(type) {
            case "10th":
                title = "Life After Class 10th";
                subtitle = "The first major decision of your career starts here.";
                heroClass = "cat-10th";
                introTitle = "Don't Follow the Herd!";
                introText = "Choosing a stream just because your friends did is the biggest mistake. Analyze your strengths before picking Science, Commerce, or Arts.";
                streams = new String[]{"Science Stream", "Commerce Stream", "Arts / Humanities", "Diploma / Polytechnic"};
                streamDescs = new String[]{"For students who love logic, math, and understanding how the universe works.", "Best for those interested in business, finance, money management, and economy.", "Ideal for creative minds, writers, social sciences, and civil services aspirants.", "Job-oriented practical courses that focus on skill building immediately."};
                subOptions = new String[][]{
                    {"PCM (Engineering, Arch)", "PCB (Medical, BioTech)", "PCMB (Bio + Math)"},
                    {"B.Com / BBA Foundation", "CA / CS / CMA Prep", "Economics & Stats"},
                    {"Psychology & Sociology", "History & Pol. Science", "Literature & Mass Media"},
                    {"Mechanical Diploma", "Civil / Electrical", "Fashion / Interior Design"}
                };
                break;
                
            case "12th":
                title = "Life After Class 12th";
                subtitle = "Transitioning from School to College.";
                heroClass = "cat-12th";
                introTitle = "Direct Your Career Path";
                introText = "This is where you choose your specialization. Whether it's Engineering, Medical, CA, or Design - focus on your long-term goal.";
                streams = new String[]{"Engineering (JEE)", "Medical (NEET)", "Management / Law", "Design & Media"};
                streamDescs = new String[]{"B.Tech / B.E degrees in CS, Mech, Civil, etc.", "MBBS, BDS, BAMS, BHMS, and Pharmacy.", "Integrated BBA+MBA or CLAT for Law.", "NIFT for Fashion, NID for Design, Journalism."};
                subOptions = new String[][]{
                    {"IITs / NITs / IIITs", "State Govt Colleges", "Private Universities"},
                    {"Government Medical Colleges", "Ayush Courses", "Allied Health Sciences"},
                    {"IIM (IPM Course)", "National Law Univs", "Hotel Management"},
                    {"Graphic Design", "Animation & VFX", "Mass Comm"}
                };
                break;

            case "Graduation":
                title = "After Graduation";
                subtitle = "Job vs Higher Studies? Let's decide.";
                heroClass = "cat-grad";
                introTitle = "The Real World Awaits";
                introText = "You have a degree. Now you need to decide: Do you want to start earning immediately, or specialize further to increase your value?";
                streams = new String[]{"Corporate Jobs", "Higher Studies (India)", "Higher Studies (Abroad)", "Government Exams"};
                streamDescs = new String[]{"Enter the workforce immediately.", "Master's degrees to specialize.", "Global exposure and education.", "Serve the nation with stability."};
                subOptions = new String[][]{
                    {"IT / Software Jobs", "Sales & Marketing", "HR & Operations"},
                    {"MBA (CAT/XAT)", "M.Tech (GATE)", "M.Sc / MA"},
                    {"MS in USA/UK/Germany", "MIM (Management)", "PhD Research"},
                    {"UPSC (IAS/IPS)", "SSC CGL", "Banking (PO/Clerk)"}
                };
                break;
                
            case "Skills":
                title = "Skill-Based Careers";
                subtitle = "Degrees aren't everything. Skills pay the bills.";
                heroClass = "cat-skill";
                introTitle = "Portfolio Over Degree";
                introText = "In the modern economy, companies hire for what you can DO, not just what you studied. Start building these high-demand skills.";
                streams = new String[]{"Tech & Coding", "Creative Arts", "Digital Marketing", "Freelancing"};
                streamDescs = new String[]{"Web & App Development.", "Visual and Audio content.", "Selling online.", "Be your own boss."};
                subOptions = new String[][]{
                    {"Full Stack Dev", "Data Science / AI", "Cybersecurity"},
                    {"Graphic Design", "Video Editing", "UI/UX Design"},
                    {"SEO & Content Writing", "Social Media Mgmt", "Google Ads"},
                    {"Upwork / Fiverr", "Remote Jobs", "Consulting"}
                };
                break;
                
            default: // PostGrad fallback
                title = "Post Graduation";
                subtitle = "Research, Ph.D, and Specialization.";
                heroClass = "cat-pg";
                introTitle = "Become an Expert";
                introText = "Post-graduation is for those who want to reach the pinnacle of their field, enter academia, or lead high-level research.";
                streams = new String[]{"PhD & Research", "Academic Teaching", "Senior Corporate Roles", "Entrepreneurship"};
                streamDescs = new String[]{"Doctorate degrees.", "Professor / Lecturer.", "C-Suite / VPs.", "Start your own venture."};
                subOptions = new String[][]{
                    {"UGC NET", "Research Fellowships", "Thesis Writing"},
                    {"Assistant Professor", "School Principal", "Online Educator"},
                    {"Strategy Consultant", "Senior Analyst", "Project Manager"},
                    {"Startup Incubators", "Funding & VC", "Product Dev"}
                };
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

    <header class="cat-hero <%= heroClass %>">
        <h1 style="font-size: 3.5rem; margin-bottom: 10px;"><%= title %></h1>
        <p style="font-size: 1.2rem; opacity: 0.9;"><%= subtitle %></p>
    </header>

    <div class="intro-box">
        <h2 style="color: #2c3e50; margin-bottom: 10px;"><i class="fas fa-lightbulb" style="color: #f39c12;"></i> <%= introTitle %></h2>
        <p style="color: #555; line-height: 1.6;"><%= introText %></p>
    </div>

    <div class="stream-grid">
        <% for(int i=0; i<streams.length; i++) { %>
        <div class="stream-card">
            <div class="stream-title"><%= streams[i] %></div>
            <p class="stream-desc"><%= streamDescs[i] %></p>
            
            <ul class="sub-options">
                <% for(String sub : subOptions[i]) { %>
                    <li><i class="fas fa-check-circle"></i> <%= sub %></li>
                <% } %>
            </ul>
        </div>
        <% } %>
    </div>

    <div class="aptitude-banner">
        <h2><i class="fas fa-brain"></i> Confused about which path to take?</h2>
        <p style="margin: 15px 0 25px;">Take our AI-powered assessment to find the perfect match for your personality and skills.</p>
        <a href="#" class="btn-primary" style="background: #e67e22; text-decoration: none; font-size: 18px;">Start Aptitude Test</a>
    </div>

    <footer>
        <p>&copy; 2025 Career Guidance. All Rights Reserved.</p>
    </footer>

</body>
</html>