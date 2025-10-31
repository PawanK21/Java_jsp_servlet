
// Carousel functionality
    document.addEventListener('DOMContentLoaded', function() {
        // Check if carousel elements exist
        const track = document.querySelector('.carousel-track');
        if (!track) return;
        
        const slides = Array.from(track.children);
        const nextButton = document.querySelector('.carousel-btn.next');
        const prevButton = document.querySelector('.carousel-btn.prev');
        const indicators = document.querySelectorAll('.indicator');
        
        // Validate required elements
        if (slides.length === 0 || !nextButton || !prevButton || indicators.length === 0) {
            console.error('Carousel elements missing');
            return;
        }
        
        let currentSlideIndex = 0;
        let autoSlideInterval;
        
        // Initialize carousel
        const initCarousel = () => {
            const slideWidth = slides[0].getBoundingClientRect().width;
            
            // Arrange slides next to one another
            const setSlidePosition = (slide, index) => {
                slide.style.left = slideWidth * index + 'px';
            };
            slides.forEach(setSlidePosition);
            
            // Set initial position
            track.style.transform = `translateX(-${slideWidth * currentSlideIndex}px)`;
            
            // Set first slide as active
            slides.forEach((slide, index) => {
                slide.classList.toggle('active', index === currentSlideIndex);
            });
            updateIndicators(currentSlideIndex);
        };
        
        const moveToSlide = (targetIndex) => {
            // Ensure target index is within bounds
            if (targetIndex < 0 || targetIndex >= slides.length) {
                console.error('Invalid slide index:', targetIndex);
                return;
            }
            
            const slideWidth = slides[0].getBoundingClientRect().width;
            
            // Update track position with smooth transition
            track.style.transition = 'transform 0.5s ease-in-out';
            track.style.transform = `translateX(-${slideWidth * targetIndex}px)`;
            
            // Update active classes
            slides.forEach((slide, index) => {
                slide.classList.toggle('active', index === targetIndex);
            });
            
            // Update indicators
            updateIndicators(targetIndex);
            
            // Update current index
            currentSlideIndex = targetIndex;
        };
        
        const updateIndicators = (targetIndex) => {
            indicators.forEach((indicator, index) => {
                indicator.classList.toggle('active', index === targetIndex);
            });
        };
        
        const nextSlide = () => {
            const nextIndex = (currentSlideIndex + 1) % slides.length;
            moveToSlide(nextIndex);
        };
        
        const prevSlide = () => {
            const prevIndex = (currentSlideIndex - 1 + slides.length) % slides.length;
            moveToSlide(prevIndex);
        };
        
        // When I click next, move slides to the left
        nextButton.addEventListener('click', () => {
            resetAutoSlide();
            nextSlide();
        });
        
        // When I click prev, move slides to the right
        prevButton.addEventListener('click', () => {
            resetAutoSlide();
            prevSlide();
        });
        
        // When I click the nav indicators, move to that slide
        indicators.forEach((indicator, index) => {
            indicator.addEventListener('click', () => {
                resetAutoSlide();
                moveToSlide(index);
            });
        });
        
        // Auto-advance carousel functions
        const startAutoSlide = () => {
            autoSlideInterval = setInterval(() => {
                nextSlide();
            }, 5000); // 5 seconds interval
        };
        
        const resetAutoSlide = () => {
            clearInterval(autoSlideInterval);
            startAutoSlide();
        };
        
        const stopAutoSlide = () => {
            clearInterval(autoSlideInterval);
        };
        
        // Pause auto-slide on hover
        track.addEventListener('mouseenter', stopAutoSlide);
        track.addEventListener('mouseleave', startAutoSlide);
        
        // Initialize and start carousel
        initCarousel();
        startAutoSlide();
        
        // Handle window resize
        let resizeTimeout;
        window.addEventListener('resize', () => {
            clearTimeout(resizeTimeout);
            resizeTimeout = setTimeout(() => {
                initCarousel(); // Reinitialize on resize
            }, 250);
        });

        // Reset transition after slide animation completes
        track.addEventListener('transitionend', () => {
            track.style.transition = '';
        });

        // Modal functionality (unchanged, but with error handling)
        const loginBtn = document.getElementById('loginBtn');
        const registerBtn = document.getElementById('registerBtn');
        const loginModal = document.getElementById('loginModal');
        const registerModal = document.getElementById('registerModal');
        
        if (loginBtn && loginModal) {
            // ... rest of modal code
        }
        
        // Clean up on page unload
        window.addEventListener('beforeunload', () => {
            clearInterval(autoSlideInterval);
        });
    });

// Function to update the posted time dynamically
        function updatePostedTime() {
            const postedElements = document.querySelectorAll('[id^="posted-"]');
            
            postedElements.forEach(element => {
                const jobId = element.id.split('-')[1];
                const postedTimes = {
                    1: '2 days ago',
                    2: '5 hours ago',
                    3: '1 week ago',
                    4: 'Just now'
                };
                
                element.textContent = postedTimes[jobId];
            });
        }
        
        // Function to simulate applying for a job
        function applyForJob(jobId) {
            alert(`Thank you for applying to Job #${jobId}! We will review your application shortly.`);
            
            // In a real application, you would submit a form or make an API call here
        }
        
        // Initialize the page
        document.addEventListener('DOMContentLoaded', function() {
            updatePostedTime();
            
            // Update the posted time every minute (simulating dynamic updates)
            setInterval(updatePostedTime, 60000);
        });
		
		
// About Us CTA buttons functionality
document.addEventListener('DOMContentLoaded', function() {
    const findJobsBtn = document.getElementById('findJobsBtn');
    const postJobBtn = document.getElementById('postJobBtn');
    
    if (findJobsBtn) {
        findJobsBtn.addEventListener('click', function() {
            // Scroll to the navigation section
            document.querySelector('nav').scrollIntoView({ 
                behavior: 'smooth' 
            });
        });
    }
    /*
    if (postJobBtn) {
        postJobBtn.addEventListener('click', function() {
            alert('Employer registration feature coming soon!');
            // In a real implementation, this would redirect to employer registration
        });
    }
	*/
});