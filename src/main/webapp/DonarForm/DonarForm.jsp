<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
  th:replace="base::layout(~{::section})">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="DonarForm/assets/images/favicon.png" type="image/png">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Help India NGO</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="DonarForm/assets/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="DonarForm/assets/css/style.css">
    
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
					window.location = "/DonarLoginAndRegistration-Login";
				}
			}
			
			
		</script>
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="booking-content">
                <div class="booking-image">
                    <img class="booking-img" src="DonarForm/assets/images/form-img.jpg" alt="Booking Image">
                    
                </div>
                <div class="booking-form">
                    <form method="post" modelAttribute="donations" action="Donations" id="booking-form" >
                     	<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome <b><c:out value="${fullname}"></c:out> ,&emsp;<button onclick="returntohome()" type="button" class="glow-on-hover" ><small>Logout</small></button></b></a>
                        <h2>Let's be the <b>CHANGE</b>!</h2>
                        
                        <div class="form-group form-input">
                            <input type="text" name="fullname" id="name" value="" required/>
                            <label for="name" class="form-label">Your Full Name</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="number" name="contactno" id="phone" value="" required />
                            <label for="phone" class="form-label">Your phone number</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="pickuptime" id="pickuptime" onfocus="(this.type='time')" required />
                            <label for="pickuptime" class="form-label">Choose a Pickup Time</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="pickuplocation" id="location" value="" required />
                            <label for="location" class="form-label">Enter Pick up Location <small><small>( Landmark, Residence , Pincode )</small></small></label>
                        </div>
                        <div class="form-group form-input" >
                        	<div class="select-list" >
					             <select name="branch" id="branch" required>
						             <div class="radio-item-list">
						             	  <option value="" disabled selected>Choose your Nearest Help India NGO Region</option>
										  <option value="Delhi">Delhi</option>
										  <option value="Mumbai">Mumbai</option>
										  <option value="Kolkata">Kolkata</option>
										  <option value="Chennai">Chennai</option>
										  <option value="Bangalore">Bangalore</option>
										  <option value="Hyderabad">Hyderabad</option>
										  <option value="Ahmedabad">Ahmedabad</option>
										  <option value="Pune">Pune</option>
										  <option value="Vizag">Vizag</option>
									 </div>
								 </select>
							 </div>
                        </div>
                        
                        <div class="form-radio">
                            <label class="label-radio"> <small>Select Category you want to DONATE</small></label>
                            <div class="radio-item-list">
                                <span class="radio-item">
                                    <input type="radio" name=donationcategory value="Clothing" id="Clothing" />
                                    <label for="Clothing">Clothing</label>
                                </span>
                                <span class="radio-item active">
                                    <input type="radio" name=donationcategory value="Food" id="Food" checked/>
                                    <label for="Food">Food</label>
                                </span>
                                <span class="radio-item">
                                    <input type="radio" name=donationcategory value="Books" id="Books" />
                                    <label for="Books">Books</label>
                                </span>
                                  
                            </div>
                        </div>

                        <div class="form-submit"><center>
                            <input type="submit"  value="Donate Now" class="submit" id="submit" name="submit" />
                            <a href="https://pmny.in/zINXKmphACKa" class="vertify-booking">Financial Support </a>
                        </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script type="text/javascript">
			function returntohome()
			{
				
				window.location = "/DonarLoginAndRegistration-Login";
					
			}
			</script>
    <script src="DonarForm/assets/vendor/jquery/jquery.min.js"></script>
    <script src="DonarForm/assets/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>