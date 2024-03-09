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
        
        <!--Session Management-->
		<script type="text/javascript">
			var IdealTimeOut = 300;
			var idleSecondsTimer = null;
			var idleSecondsCounter = 0;
			document.onclick = function () { idleSecondsCounter = 0; };
			document.onmousemove = function () { idleSecondsCounter = 0; };
			document.onkeypress = function () { idleSecondsCounter = 0; };
			idleSecondsTimer = window.setInterval(CheckIdleTime, 1000);

			function CheckIdleTime()
			{
				idleSecondsCounter++;
				var oPanel = document.getElementById("timeOut");
				if (oPanel)
				{
					oPanel.innerHTML = (IdealTimeOut - idleSecondsCounter);
				}
				if (idleSecondsCounter >= IdealTimeOut)
				{
					window.clearInterval(idleSecondsTimer);
					alert("Your Session has expired. Please login again.");
					window.location = "/ManagerLogin";
				}
			}
		</script>

        <title>Help India NGO</title>
    </head>
    <body>
        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo">Help India NGO</a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="/ManagerAddingVolunteers" class="nav__link">Add Volunteers</a>
                        </li>
                        <li class="nav__item">
                            <a href="/ManagerViewingHisVolunteers" class="nav__link">View Volunteers</a>
                        </li>
                        <li class="nav__item">
                            <a href="/ManagerViewingDonations" class="nav__link">View Donations</a>
                        </li>
                        <li class="nav__item">
                            <a href="/ManagerLogin" class="nav__link">Logout</a>
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
                        <span class="home__data-subtitle">Welcome <b> <c:out value="${fullname}"></c:out> (Manager),</b></span>
                        <h1 class="home__data-title">Measure of life is not its <br> Duration <b>But  <br> Donation</b></h1>

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
            
            
           

            

            <div class="video__content">
                <video id="video-file"></video>
                <button id="video-button"></button>
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

                    <div class="footer__terms">
                        <a href="#" class="footer__terms-link">Terms & Agreements</a>
                        <a href="#" class="footer__terms-link">Privacy Policy</a>
                    </div>


                    <div class="footer__terms">
                        <h3 class="footer__title">Help India NGO</h3>
                        </p>
                       
                    </div>

                    <div class="footer__terms">
                        <p class="footer__copy">&#169; 2022 Help India NGO.All rigths reserved.</p>
                        
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