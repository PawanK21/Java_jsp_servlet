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
    
    
    
    <div class="container">
        <div class="header">
            <h1>Data Science or AI/ML</h1>
            <p>Find your next career opportunity in AI/ML</p>
        </div>
        
        <div class="job-listings">
            <!-- Job 1 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>Consultant | AI / ML | Artificial Intelligence & Data</h2>
                <div class="company-name">Deloitte Consulting</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-1">2 - 4 years</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-1">4 days ago</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-1">
                            <span class="skill-tag">Deep learning</span>
                            <span class="skill-tag">Python</span>
                            <span class="skill-tag">ML</span>
                            <span class="skill-tag">AI</span>
                        </div>
                    </div>
                </div>
                
                <a href="https://www.naukri.com/job-listings-consultant-ai-ml-artificial-intelligence-data-deloitte-bengaluru-2-to-4-years-271025501795?src=seo_srp&sid=17619220742676422&xp=1&px=1"><button class="apply-btn" onclick="applyForJob(1)">Apply Now</button></a>
            </div>
            
            <!-- Job 2 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>AI/ML</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 3 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>Data Science</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 4 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>Data Science</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 5 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>AI/ML</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 6 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>AI/ML</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 7 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>AI/ML</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 8 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>Data Science</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
            
            <!-- Job 9 -->
            <div class="job-card">
                <div class="job-highlight">
                    <span class="featured-tag">FEATURED</span>
                </div>
                <h2>AI/ML</h2>
                <div class="company-name">Qualcomm</div>
                
                <div class="job-details">
                    <div class="detail-item">
                        <span class="detail-label">YoE:</span>
                        <span class="detail-value" id="experience-4">0 - 2</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Posted:</span>
                        <span class="detail-value" id="posted-4">Just now</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Skills:</span>
                        <div class="skills-container" id="skills-4">
                            <span class="skill-tag">VHDL</span>
                            <span class="skill-tag">c/c++</span>
                            <span class="skill-tag">oops</span>

                        </div>
                    </div>
                </div>
                
                <a href="https://careers.qualcomm.com/careers/job/446706882410?hl=en-US&domain=qualcomm.com&source=APPLICANT_SOURCE-6-2"><button class="apply-btn">Apply Now</button></a>
            </div>
        </div>
    </div>
    
    
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