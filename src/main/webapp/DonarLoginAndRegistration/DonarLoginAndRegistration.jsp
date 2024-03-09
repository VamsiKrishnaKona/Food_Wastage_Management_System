<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="DonarLoginAndRegistration/assets/img/logo.png" type="image/png">
    <title>Help India NGO</title>
    <link rel="stylesheet" href="DonarLoginAndRegistration/assets/style.css" />
    <link rel="stylesheet" href="DonarLoginAndRegistration/assets/blurt.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    
  </head>
  <script>
  window.onload=function(){
	  Validate2()
	  DuplicateAccountValidation()
	  }
  </script>
  <body>
    <main>
      <div class="box">
        <div class="inner-box">
          <div class="forms-wrap">
            <form method="post" action="DonarLoginVerification" autocomplete="off" class="sign-in-form">
              <div class="logo">
                <img src="DonarLoginAndRegistration/assets/img/logo.png" alt="easyclass" />
                <h4>Help India NGO</h4>
              </div>
              
              <div>
                <p class="text">
                  
                  <a href="/ManagerLogin"><b>Manager &nbsp;Login</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="/VolunteerLogin"><b>Volunteer &nbsp;Login</b></a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="/AdminLogin"><b>Admin &nbsp;Login</b></a>
                </p>
              </div>
              <div class="heading">
                <h2><small>Welcome Donar,</small></h2>
                <h6>Not registred yet?</h6>
                <a href="#" class="toggle">Sign up</a>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                  <input
                    type="text"
                    minlength="4"
                    name=donaremail
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>E-mail or Mobile No</label>
                </div>

                <div class="input-wrap">
                  <input
                    type="password"
                    minlength="4"
                    name=donarpassword
                    id=donarpassword
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Password</label>
                <div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <eye class="bi bi-eye-slash" id="togglePassword"></eye>
                  </div>
                </div>

                

                <input type="submit" value="Sign In" class="sign-btn" />
                

                <p class="text">
                  Forgotten your password or you login details?
                  <a href="/DonarResetPasswordRequest">Get help</a> signing in
                </p>
              </div>
            </form>

            <form action="DonarRegistration" autocomplete="off" class="sign-up-form"  method="post" modelAttribute="donar" id="donarreg">
              <div class="logo">
                <img src="DonarLoginAndRegistration/assets/img/logo.png" alt="easyclass" />
                <h4>Help India NGO</h4>
              </div>

              <div class="heading">
                <h2><small>Get Started</small></h2>
                <h6>Already have an account?</h6>
                <a href="#" class="toggle">Sign in</a>
              </div>
              <br>

              <div class="actual-form">
                <div class="input-wrap">
                  <input
                    type="text"
                    name="fullname"
                    minlength="4"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Full Name</label>
                </div>

                <div class="input-wrap">
                  <input
                    type="email"
                    name="emailid"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Email</label>
                </div>

                <div class="input-wrap">
                  <input
                  	
                    type="tel"
                    name="contactno"
                    class="input-field"
                    autocomplete="off"
                    pattern="[789][0-9]{9}"
                    required
                  />
                  <label for="contactno">10 digits of Mobile No</label>
                </div>

                <div class="input-wrap">
                  <input
                    type="password"
                    minlength="4"
                    name="password"
                    id="password"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Password</label>
                </div>
                
                <div class="input-wrap">
                  <input
                    type="password"
                    minlength="4"
                    name="repassword"
                    id="repassword"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Re-Enter Password</label>
                </div>


                <input type="submit" value="Sign Up" class="sign-btn" onclick="return Validate()"/>

                <p class="text">
                  By signing up, I agree to the
                  <a href="#">Terms of Services</a> and
                  <a href="#">Privacy Policy</a>
                </p>
              </div>
            </form>
          </div>

          <div class="carousel">
            <div class="images-wrapper">
              <img src="DonarLoginAndRegistration/assets/img/image1.jpg" class="image img-1 show" alt="" />
              <img src="DonarLoginAndRegistration/assets/img/image2.jpg" class="image img-2" alt="" />
              <img src="DonarLoginAndRegistration/assets/img/image3.jpg" class="image img-3" alt="" />
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
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("repassword").value;
        if (password != confirmPassword) {
        	blurt(
        		    'Error',
        		    'Passwords do NOT match',
        		    'error'
        		);
        		
            return false;
        }
        return true;
    }
	</script>
	
	<script type="text/javascript">
    function Validate2() {
    	var a = '${msg}';
       
        if (a=="Incorrect Credentials") {
        	blurt(
        			'Invalid Crendentials',
        		    'Verify your credentials and try again.',
        		    'error'
        		);
        		
        
        }
        
    }
</script>

<script type="text/javascript">
    function DuplicateAccountValidation() {
    	var a = '${duplicateerror}';
       
        if (a=="Duplicate Account") {
        	
        	blurt({
        	    title: 'Duplicate Account',

        	    text: 'Donar Account already exists with same Email-Id or Contact No.',

        	    type: 'error',

        	    okButtonText: 'Login',

        	});
        		
        
        }
        
    }
</script>

<script>
        const togglePassword = document.querySelector("#togglePassword");
        const password = document.querySelector("#donarpassword");

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
   
	<script src="DonarLoginAndRegistration/assets/blurt.min.js"></script>
    <script src="DonarLoginAndRegistration/assets/app.js"></script>
  </body>
</html>
