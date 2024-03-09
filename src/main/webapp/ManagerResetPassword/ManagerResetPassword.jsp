<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="AdminLogin/assets/img/logo.png" type="image/png">
    <title>Help India NGO</title>
    <link rel="stylesheet" href="AdminLogin/assets/style.css" />
    <link rel="stylesheet" href="AdminLogin/assets/blurt.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    
  </head>
  <body onload="Validate()">
    <main>
      <div class="box">
        <div class="inner-box">
        
          <div class="forms-wrap">
            <form method="post" action="ManagerResetPassword" autocomplete="off" class="sign-in-form">
              <div class="logo">
                <img src="AdminLogin/assets/img/logo.png" alt="easyclass" />
                <h4>Help India NGO</h4>
              </div>
              
              <div>
                <p class="text">
                  
                  <a href="/ManagerLogin"><b>Manager &nbsp;Login</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="/VolunteerLogin"><b>Volunteer &nbsp;Login</b></a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="/DonarLoginAndRegistration-Login"><b>Donar &nbsp;Login</b></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
                  <a href="/DonarLoginAndRegistration-Login"><b>Admin &nbsp;Login</b></a>
                </p>
              </div>
              <div class="heading">
              <h3><small>Welcome Manager,</small></h3>
                <h2><small><small><small>Reset your password here</small></small></small></h2>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                  <input
                    type="email"
                    class="input-field"
                    autocomplete="off"
                    name=manageremail
                    required
                  />
                  <label>E-mail</label>
                </div>

                  
                </div>

                

                <input type="submit" value="Sign In" class="sign-btn" />
				
				
                
              </div>
            </form>

            <form action="index.html" autocomplete="off" class="sign-up-form">
              <div class="logo">
                <img src="AdminLogin/assets/img/logo.png" alt="easyclass" />
                <h4>Help India NGO</h4>
              </div>

              
            </form>
          </div>

          <div class="carousel">
            <div class="images-wrapper">
              <img src="AdminLogin/assets/img/image1.jpg" class="image img-1 show" alt="" />
              <img src="AdminLogin/assets/img/image2.jpg" class="image img-2" alt="" />
              <img src="AdminLogin/assets/img/image3.jpg" class="image img-3" alt="" />
            </div>

            <div class="text-slider">
              <div class="text-wrap">
                <div class="text-group">
                  <h2>We see the <b>NEED</b>, not the cause</h2>
                  <h2>We <b>RISE</b> by lifting others.</h2>
                  <h2>Let's Be The <b>CHANGE</b></h2>
                </div>
              </div>

              <div class="bullets">
                <span class="active" data-value="1"></span>
                <span data-value="2"></span>
                <span data-value="3"></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Javascript file -->
    
    <script type="text/javascript">
    function Validate() {
    	var a = '${msg}';
       
        if (a=="Invalid Email") {
        	blurt(
        		    'Invalid Email',
        		    'Account does not exist with the given email.',
        		    'error'
        		);
        		
        
        }
        
    }
</script>
    
    <script>
        const togglePassword = document.querySelector("#togglePassword");
        const password = document.querySelector("#administratorpassword");

        togglePassword.addEventListener("click", function () {
            // toggle the type attribute
            const type = password.getAttribute("type") === "password" ? "text" : "password";
            password.setAttribute("type", type);
            
            // toggle the icon
            this.classList.toggle("bi-eye");
        });

        // prevent form submit
        const form = document.querySelector("");
        form.addEventListener('submit', function (e) {
            e.preventDefault();
        });
    </script>

    <script src="AdminLogin/assets/app.js"></script>
    <script src="AdminLogin/assets/blurt.min.js"></script>
    
  </body>
</html>
