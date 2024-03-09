<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="shortcut icon" href="HomePage/assets/img/favicon.png" type="image/png">

        <!--=============== REMIXICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        
        <!--=============== SWIPER CSS ===============-->
        <link rel="stylesheet" href="HomePage/assets/css/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" href="HomePage/assets/css/styles.css">

        <title>Help India NGO</title>
    </head>
    <body>
        <header class="header" id="header">
            <nav class="nav container">
                <a href="/" class="nav__logo">Help India NGO</a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#home" class="nav__link active-link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="#about" class="nav__link">About Us</a>
                        </li>
                        <li class="nav__item">
                            <a href="/DonarLoginAndRegistration-Login" class="nav__link">Login or Register</a>
                        </li>
                        
                    </ul>

                    <div class="nav__dark">
                        <!-- Theme change button -->
                        <span class="change-theme-name">Dark mode</span>
                        <i class="ri-moon-line change-theme" id="theme-button"></i>
                    </div>

                    <i class="ri-close-line nav__close" id="nav-close"></i>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class="ri-function-line"></i>
                </div>
            </nav>
        </header>

        <main class="main">
            <!--==================== HOME ====================-->
            <section class="home" id="home">
                <img src="HomePage/assets/img/home1.jpg" alt="" class="home__img">

                <div class="home__container container grid">
                    <div class="home__data">
                        <span class="home__data-subtitle">Welcome to <b>Help India NGO</b>,</span>
                        <h1 class="home__data-title">Measure of life is not its <br> Duration <b>But  <br> Donation</b></h1>
                        <a href="#about" class="button">Know More</a>

                    </div>

                    <div class="home__social">
                        <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                            <i class="ri-facebook-box-fill"></i>
                        </a>
                        <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                            <i class="ri-instagram-fill"></i>
                        </a>
                        <a href="https://twitter.com/" target="_blank" class="home__social-link">
                            <i class="ri-twitter-fill"></i>
                        </a>
                    </div>

                    <div class="home__info">
                        <div>
                            <span class="home__info-title">Lets Be The Change</span>
                            <a href="/DonarLoginAndRegistration-Login" class="button button--flex button--link home__info-button">
                                Hand Out <i class="ri-arrow-right-line"></i>
                            </a>
                        </div>

                        <div class="home__info-overlay">
                            <img src="HomePage/assets/img/home2.jpg" alt="" class="home__info-img">
                        </div>
                    </div>
                </div>
            </section>

            <!--==================== ABOUT ====================-->
            <section class="about section" id="about">
                <div class="about__container container grid">
                    <div class="about__data">
                        <h2 class="section__title about__title">More Information <br> About Our NGO</h2>
                        <p class="about__description"><b>Help India NGO</b> is a India based non profit Organization registered in 2022 with a purpose to contribute towards poverty reduction in India. A shared commitment to relieve suffering and improve the lives of Indian Needy Community. </p>
                        <a href="#" class="button">Lean More</a>
                    </div>

                    <div class="about__img">
                        <div class="about__img-overlay">
                            <img src="HomePage/assets/img/about1.jpg" alt="" class="about__img-one">
                        </div>

                        <div class="about__img-overlay">
                            <img src="HomePage/assets/img/about2.jpg" alt="" class="about__img-two">
                        </div>
                    </div>
                </div>
            
            
           

            <!--==================== EXPERIENCE ====================-->
            <section class="experience section" >
                <h2 class="section__title">With Our Experience <br> We Will Serve You</h2>

                <div class="experience__container container grid">
                    <div class="experience__content grid">
                        <div class="experience__data">
                            <h2 class="experience__number"><c:out value="${donarscount}"></c:out></h2>
                            <span class="experience__description">Help India NGO <br> Donars</span>
                        </div>

                        <div class="experience__data">
                            <h2 class="experience__number"><c:out value="${donationscount}"></c:out></h2>
                            <span class="experience__description">Complete <br> Donations</span>
                        </div>
                        
                        <div class="experience__data">
                            <h2 class="experience__number">9</h2>
                            <span class="experience__description">Help India NGO<br> Branches</span>
                        </div>
                        
                    </div>

                    <div class="experience__img grid">
                        <div class="experience__overlay">
                            <img src="HomePage/assets/img/experience1.jpg" alt="" class="experience__img-one">
                        </div>
                        
                        <div class="experience__overlay">
                            <img src="HomePage/assets/img/experience2.jpg" alt="" class="experience__img-two">
                        </div>
                    </div>
                </div>
            </section>

            <!--==================== VIDEO ====================-->
            <section class="video section">
                <h2 class="section__title">Video Tour</h2>

                <div class="video__container container">
                    <p class="video__description">Find out more with our video of how <b>Help India NGO</b> Works.
                    </p>

                    <div class="video__content">
                        <video id="video-file">
                            <source src="HomePage/assets/video/video.mp4" type="video/mp4">
                        </video>

                        <button class="button button--flex video__button" id="video-button">
                            <i class="ri-play-line video__button-icon" id="video-icon"></i>
                        </button>
                    </div>
                </div>
            </section>
        </section>

           

           

             <!--==================== DISCOVER ====================-->
             <section class="discover section" id="discover">
                <h2 class="section__title"><br> Developers</h2>
                
                <div class="discover__container container swiper-container">
                    <div class="swiper-wrapper">
                        <!--==================== DISCOVER 1 ====================-->
                        <div class="discover__card swiper-slide">
                            <img src="HomePage/assets/img/discover1.jpg" alt="" class="discover__img">
                            <div class="discover__data">
                                <h2 class="discover__title">Nithin Chiguru</h2>
                                <span class="discover__description">Developer</span>
                            </div>
                        </div>

                        <!--==================== DISCOVER 2 ====================-->
                        <div class="discover__card swiper-slide">
                            <img src="HomePage/assets/img/discover2.jpg" alt="" class="discover__img">
                            <div class="discover__data">
                                <h2 class="discover__title">Vasista Vempati</h2>
                                <span class="discover__description">Developer</span>
                            </div>
                        </div>

                        <!--==================== DISCOVER 3 ====================-->
                        <div class="discover__card swiper-slide">
                            <img src="HomePage/assets/img/discover3.jpg" alt="" class="discover__img">
                            <div class="discover__data">
                                <h2 class="discover__title">Vamsi Kona</h2>
                                <span class="discover__description">Developer</span>
                            </div>
                        </div>

                        
                        </div>
                    </div>
                </div>
            </section>
            
            <!--==================== SPONSORS ====================-->
            <section class="sponsor section">
                <h2 class="section__title"><br> In Association with</h2>
                <div class="sponsor__container container grid">
                    
                    <div class="sponsor__content">
                        <img src="HomePage/assets/img/sponsors.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="HomePage/assets/img/sponsors1.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="HomePage/assets/img/sponsors2.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="HomePage/assets/img/sponsors4.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="HomePage/assets/img/sponsor.png" alt="" class="sponsor__img">
                    </div>
                </div>
            </section>
        </main>

        <!--==================== FOOTER ====================-->
        <footer class="footer section">
            <div class="footer__container container grid">
                <div class="footer__content grid">
                    <div class="footer__data">
                        <h3 class="footer__title">Help India NGO</h3>
                        <p class="footer__description">Giving is not just making Donation - It's about making a difference.
                        </p>
                        <div>
                            <a href="https://www.facebook.com/" target="_blank" class="footer__social">
                                <i class="ri-facebook-box-fill"></i>
                            </a>
                            <a href="https://twitter.com/" target="_blank" class="footer__social">
                                <i class="ri-twitter-fill"></i>
                            </a>
                            <a href="https://www.instagram.com/" target="_blank" class="footer__social">
                                <i class="ri-instagram-fill"></i>
                            </a>
                            <a href="https://www.youtube.com/" target="_blank" class="footer__social">
                                <i class="ri-youtube-fill"></i>
                            </a>
                        </div>
                    </div>
    
                    <div class="footer__data">
                        <h3 class="footer__subtitle">About</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="" class="footer__link">About Us</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Home</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Our Service and Info</a>
                            </li>
                        </ul>
                    </div>
    
                    <div class="footer__data">
                        <h3 class="footer__subtitle">Company</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="" class="footer__link">Team</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Video Tour</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Be a Volunteer</a>
                            </li>
                        </ul>
                    </div>
    
                    <div class="footer__data">
                        <h3 class="footer__subtitle">Support</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="" class="footer__link">FAQs</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Support Center</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="footer__rights">
                    <p class="footer__copy">&#169; 2022 Help India NGO. All rigths reserved.</p>
                    <div class="footer__terms">
                        <a href="#" class="footer__terms-link">Terms & Agreements</a>
                        <a href="#" class="footer__terms-link">Privacy Policy</a>
                    </div>
                </div>
            </div>
        </footer>

         <!--========== SCROLL UP ==========-->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="ri-arrow-up-line scrollup__icon"></i>
        </a>

        <!--=============== SCROLL REVEAL===============-->
        <script src="HomePage/assets/js/scrollreveal.min.js"></script>
        
        <!--=============== SWIPER JS ===============-->
        <script src="HomePage/assets/js/swiper-bundle.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="HomePage/assets/js/main.js"></script>
    </body>
</html>