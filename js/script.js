document.addEventListener('DOMContentLoaded', () => {
    // Smooth scrolling for navigation links
    document.querySelectorAll('#main-nav a').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
            // Close mobile nav if open
            const nav = document.getElementById('main-nav');
            if (nav.classList.contains('active')) {
                nav.classList.remove('active');
            }
        });
    });

    // Mobile navigation toggle
    const navToggle = document.querySelector('.nav-toggle');
    const mainNav = document.getElementById('main-nav');

    navToggle.addEventListener('click', () => {
        mainNav.classList.toggle('active');
    });

    // Testimonial Slider
    const testimonialItems = document.querySelectorAll('.testimonial-item');
    const dots = document.querySelectorAll('.slider-nav .dot');
    let currentSlide = 0;

    function showSlide(index) {
        testimonialItems.forEach((item, i) => {
            if (i === index) {
                item.classList.add('active');
            } else {
                item.classList.remove('active');
            }
        });
        dots.forEach((dot, i) => {
            if (i === index) {
                dot.classList.add('active');
            } else {
                dot.classList.remove('active');
            }
        });
    }

    dots.forEach(dot => {
        dot.addEventListener('click', (e) => {
            const slideIndex = parseInt(e.target.dataset.slide);
            currentSlide = slideIndex;
            showSlide(currentSlide);
        });
    });

    // Auto-advance slider (optional)
    setInterval(() => {
        currentSlide = (currentSlide + 1) % testimonialItems.length;
        showSlide(currentSlide);
    }, 7000); // Change slide every 7 seconds

    showSlide(currentSlide); // Initialize first slide
});