<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GetJobLinks - Find Your Dream Job</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <a href="index.html" class="logo">Get<span>Job</span>Links</a>
            <div class="auth-buttons">
                <a href="aboutUs.jsp"><button class="btn login-btn" id="loginBtn">About Us</button></a>
            </div>
        </div>
    </header>

    <!-- Navigation -->
    <nav>
        <div class="nav-container">
            <ul class="nav-links">
                <li><a href="SDE.jsp" data-category="software">Software Development</a></li>
                <li><a href="DA.jsp" data-category="data">Data Analytics</a></li>
                <li><a href="DevOps.jsp" data-category="devops">DevOps/SRE</a></li>
                <li><a href="DataScience.jsp" data-category="ai">AI/ML</a></li>
            </ul>
        </div>
    </nav>
    
    
    
        <!-- About Us Section -->
    <section class="about-us">
        <div class="about-container">
            <div class="about-header">
                <h1>About GetJobLinks</h1>
                <p class="tagline">Connecting Talent with Opportunity</p>
            </div>
            
            <div class="about-content">
                <div class="mission-section">
                    <h2>Our Mission</h2>
                    <p>At GetJobLinks, we believe that finding the right job should be simple, efficient, and transparent. Our platform is designed to bridge the gap between talented professionals and innovative companies in the tech industry.</p>
                </div>
                
                <div class="stats-section">
                    <div class="stat-item">
                        <h3>10,000+</h3>
                        <p>Active Job Listings</p>
                    </div>
                    <div class="stat-item">
                        <h3>50,000+</h3>
                        <p>Registered Professionals</p>
                    </div>
                    <div class="stat-item">
                        <h3>500+</h3>
                        <p>Partner Companies</p>
                    </div>
                    <div class="stat-item">
                        <h3>95%</h3>
                        <p>Success Rate</p>
                    </div>
                </div>
                
                <div class="values-section">
                    <h2>Our Values</h2>
                    <div class="values-grid">
                        <div class="value-card">
                            <div class="value-icon">🚀</div>
                            <h3>Innovation</h3>
                            <p>We continuously evolve our platform to provide cutting-edge job matching technology.</p>
                        </div>
                        <div class="value-card">
                            <div class="value-icon">🤝</div>
                            <h3>Transparency</h3>
                            <p>We believe in open communication between job seekers and employers.</p>
                        </div>
                        <div class="value-card">
                            <div class="value-icon">🎯</div>
                            <h3>Precision</h3>
                            <p>Our algorithms ensure the right candidates find the right opportunities.</p>
                        </div>
                        <div class="value-card">
                            <div class="value-icon">💼</div>
                            <h3>Professionalism</h3>
                            <p>We maintain the highest standards of service for both job seekers and employers.</p>
                        </div>
                    </div>
                </div>
                
                <div class="team-section">
                    <h2>Our Story</h2>
                    <p>Founded in 2020 by a team of tech recruiters and software engineers, GetJobLinks emerged from a shared frustration with the inefficiencies in traditional job search platforms. We noticed that talented professionals were spending countless hours applying to jobs that weren't the right fit, while companies struggled to find qualified candidates.</p>
                    <p>Our solution was to create a specialized platform focused exclusively on the technology sector, with intelligent matching algorithms and a user-friendly interface that saves time for both job seekers and employers.</p>
                </div>
                
                <div class="cta-section">
                    <h2>Ready to Find Your Next Opportunity?</h2>
                    <p>Join thousands of professionals who have found their dream jobs through GetJobLinks.</p>
                    <div class="cta-buttons">
                        <button class="btn primary-btn" id="findJobsBtn" >Find Jobs</button>
                        <button class="btn secondary-btn" id="postJobBtn">Post a Job</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
        <!-- About CEO Section -->
    <section class="about-ceo">
        <div class="ceo-container">
            <div class="ceo-content">
                <div class="ceo-card">
                    <div class="ceo-image">
                        <img src="images/BBR09.jpg" alt="Pawan Kumar - CEO GetJobLinks">
                    </div>
                    
                    <div class="ceo-info">
                        <div class="ceo-badge">CEO & Founder</div>
                        <h3>Rahul Kumar</h3>
                        <p class="ceo-title" style="margin-bottom:0">Mechanical Engineer</p>
                        <h3 style="font-style:italic; font-size:13px; color:gray; margin-top:0; margin-bottom:15px">(Research and Development)</h3>
                        
                        <div class="education">
                            <span class="degree">B.Tech Mechanical Engineering</span>
                            <span class="university">Maharaja Agrasen Institute of Technology(MAIT)</span>
                        </div>
                        
                        <div class="ceo-quote">
                            <p>"Transforming tech recruitment through innovation and precision."</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    

    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>GetJobLinks</h3>
                <ul>
                    <li><a href="aboutUs.jsp">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a style="color:gray; cursor:default;">Press</a></li>
                    <li><a style="color:gray; cursor:default;">Blog</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>For Job Seekers</h3>
                <ul>
                    <li><a href="index.html">Browse Jobs</a></li>
                    <li><a style="color:gray; cursor:default;">Salary Tools</a></li>
                    <li><a href="#">Career Advice</a></li>
                    <li><a href="https://bit.ly/48fe5U5">Resume Builder</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>For Employers</h3>
                <ul>
                    <li><a style="color:gray; cursor:default;">Post a Job</a></li>
                    <li><a style="color:gray; cursor:default;">Search Resumes</a></li>
                    <li><a style="color:gray; cursor:default;">Pricing</a></li>
                    <li><a style="color:gray; cursor:default;">Resources</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Connect With Us</h3>
                <ul>
                    <li><a href="https://mail.google.com/mail">Email:1005k.pawan@gmail.com</a></li>
                    <li><a style="color:gray; cursor:default;">Help Center</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="https://www.linkedin.com/in/pawan-kumar-395722205/">LinkedIn</a></li>
                </ul>
            </div>
        </div>
        <div class="copyright">
            <p>&copy; 2025 GetJobLinks. All rights reserved.</p>
        </div>
    </footer>

    <script src="script.js"></script>
  
</body>
</html>