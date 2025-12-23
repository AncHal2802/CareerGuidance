<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Career Resources - Toolkit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body class="home-page">

    <nav class="navbar">
        <div class="logo"><i class="fas fa-briefcase"></i> Career Guidance</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="home.jsp#career-options">Career Options</a>
            <a href="home.jsp#categories">Categories</a>
            <a href="home.jsp#consultants">Consultants</a>
            <a href="resources.jsp" style="color: #e67e22; font-weight:bold;">Resources</a>
        </div>
        <div class="user-profile">
            <a href="home.jsp" class="logout-btn-nav">Back to Dashboard</a>
        </div>
    </nav>

    <header class="resource-hero">
        <h1><i class="fas fa-tools"></i> Ultimate Career Toolkit</h1>
        <p>Everything you need to prepare, plan, and succeed in your career journey.</p>
    </header>

    <div class="resource-tabs">
        <button class="tab-btn active" onclick="openTab(event, 'resume')"><i class="fas fa-file-alt"></i> Resume & Profile</button>
        <button class="tab-btn" onclick="openTab(event, 'interview')"><i class="fas fa-user-tie"></i> Interview Prep</button>
        <button class="tab-btn" onclick="openTab(event, 'aptitude')"><i class="fas fa-brain"></i> Aptitude Tests</button>
        <button class="tab-btn" onclick="openTab(event, 'roadmap')"><i class="fas fa-map-signs"></i> Roadmaps</button>
    </div>

    <div id="resume" class="tab-content active">
        <h2 class="section-title">Resume & Profile Building</h2>
        <div class="res-grid">
            <div class="res-card">
                <h3><i class="fas fa-file-download"></i> Download Templates</h3>
                <p>ATS-friendly formats to get you hired.</p>
                <br>
                <a href="#" class="btn-download"><i class="fas fa-download"></i> Fresher Resume (Word)</a>
                <a href="#" class="btn-download" style="background:#3498db"><i class="fas fa-download"></i> Experienced Resume</a>
                <a href="#" class="btn-download" style="background:#9b59b6"><i class="fas fa-download"></i> Internship Resume</a>
            </div>
            <div class="res-card">
                <h3><i class="fab fa-linkedin"></i> Profile Building</h3>
                <ul>
                    <li><strong>LinkedIn:</strong> Use a professional headshot and write a summary about your future goals.</li>
                    <li><strong>GitHub (Tech):</strong> Upload your projects even if they are unfinished.</li>
                    <li><strong>Portfolio:</strong> Use Behance or Dribbble for design roles.</li>
                </ul>
            </div>
            <div class="res-card">
                <h3><i class="fas fa-check-circle"></i> Resume Checklist</h3>
                <ul>
                    <li>Contact Info (Email, Phone, LinkedIn)</li>
                    <li>Education (Latest first)</li>
                    <li>Skills (Technical & Soft skills)</li>
                    <li>Projects (Role + Outcome)</li>
                </ul>
            </div>
        </div>
    </div>

    <div id="interview" class="tab-content">
        <h2 class="section-title">Interview Preparation</h2>
        <div class="res-grid">
            <div class="res-card">
                <h3><i class="fas fa-comments"></i> HR Round (Common Qs)</h3>
                <ul>
                    <li>"Tell me about yourself."</li>
                    <li>"What are your greatest strengths/weaknesses?"</li>
                    <li>"Why should we hire you?"</li>
                    <li>"Where do you see yourself in 5 years?"</li>
                </ul>
            </div>
            <div class="res-card">
                <h3><i class="fas fa-laptop-code"></i> Technical Tips</h3>
                <ul>
                    <li>Review your core subjects basics.</li>
                    <li>Be ready to explain your projects in depth.</li>
                    <li>Practice coding on whiteboard/paper.</li>
                    <li>Admit if you don't know an answer, don't bluff.</li>
                </ul>
            </div>
            <div class="res-card">
                <h3><i class="fas fa-user-check"></i> Body Language</h3>
                <ul>
                    <li>Sit straight and maintain eye contact.</li>
                    <li>Smile naturally.</li>
                    <li>Dress professionally (Formals).</li>
                    <li>Arrive 10 minutes early.</li>
                </ul>
            </div>
        </div>
    </div>

    <div id="aptitude" class="tab-content">
        <h2 class="section-title">Aptitude & Assessments</h2>
        <div style="text-align:center; margin-bottom:30px;">
            <p>Most companies use these tests for screening. Practice is key.</p>
        </div>
        <div class="res-grid">
            <div class="res-card" style="border-top-color: #e74c3c;">
                <h3><i class="fas fa-calculator"></i> Quantitative</h3>
                <p>Maths based questions.</p>
                <ul>
                    <li>Profit & Loss</li>
                    <li>Time, Speed & Distance</li>
                    <li>Percentages & Averages</li>
                </ul>
                <a href="#" class="btn-download" style="background:#e74c3c">Start Practice Quiz</a>
            </div>
            <div class="res-card" style="border-top-color: #f1c40f;">
                <h3><i class="fas fa-puzzle-piece"></i> Logical Reasoning</h3>
                <p>Pattern and logic questions.</p>
                <ul>
                    <li>Blood Relations</li>
                    <li>Seating Arrangement</li>
                    <li>Coding-Decoding</li>
                </ul>
                <a href="#" class="btn-download" style="background:#f1c40f; color:#333;">Start Practice Quiz</a>
            </div>
            <div class="res-card" style="border-top-color: #2ecc71;">
                <h3><i class="fas fa-language"></i> Verbal Ability</h3>
                <p>English language proficiency.</p>
                <ul>
                    <li>Reading Comprehension</li>
                    <li>Grammar Correction</li>
                    <li>Vocabulary & Synonyms</li>
                </ul>
                <a href="#" class="btn-download" style="background:#2ecc71">Start Practice Quiz</a>
            </div>
        </div>
    </div>

    <div id="roadmap" class="tab-content">
        <h2 class="section-title">Career Roadmaps</h2>
        <div class="res-grid">
            <div class="res-card">
                <h3><i class="fas fa-code"></i> IT & Software Roadmap</h3>
                <p>Step-by-step guide to becoming a developer.</p>
                <br>
                <a href="#" class="btn-download"><i class="fas fa-file-pdf"></i> Download PDF</a>
            </div>
            <div class="res-card">
                <h3><i class="fas fa-chart-line"></i> Management Roadmap</h3>
                <p>Guide for BBA/MBA and Corporate roles.</p>
                <br>
                <a href="#" class="btn-download"><i class="fas fa-file-pdf"></i> Download PDF</a>
            </div>
            <div class="res-card">
                <h3><i class="fas fa-university"></i> Govt Exams Roadmap</h3>
                <p>Timeline for UPSC, SSC, and Banking prep.</p>
                <br>
                <a href="#" class="btn-download"><i class="fas fa-file-pdf"></i> Download PDF</a>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Career Guidance. All Rights Reserved.</p>
    </footer>

    <script>
        function openTab(evt, tabName) {
            // 1. Hide all tab content
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tab-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
                tabcontent[i].classList.remove("active");
            }

            // 2. Remove "active" class from all buttons
            tablinks = document.getElementsByClassName("tab-btn");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }

            // 3. Show the current tab and add "active" class to the button
            document.getElementById(tabName).style.display = "block";
            setTimeout(() => {
                document.getElementById(tabName).classList.add("active");
            }, 10); // Small delay for fade-in animation
            evt.currentTarget.className += " active";
        }
    </script>

</body>
</html>