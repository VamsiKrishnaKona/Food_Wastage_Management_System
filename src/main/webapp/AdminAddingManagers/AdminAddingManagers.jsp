<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Help India NGO</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="AdminAddingManagers/assets/images/favicon.png" type="image/png">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="AdminAddingManagers/assets/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="AdminAddingManagers/assets/css/style.css">
		<link rel="stylesheet" href="AdminAddingManagers/assets/blurt.min.css" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
		
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
					window.location = "/AdminLogin";
				}
			}
		</script>
	</head>

	<body onload=DuplicateAccountValidation()>

		<div class="wrapper">
			<div class="inner">
				<div class="image-holder">
					<img src="AdminAddingManagers/assets/images/registration-form-6.jpg" alt="">
				</div>
				<form action="AddingManagers" method="post" modelAttribute="manager">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<h3>Add&nbsp; Manager</h3>
					<input name="fullname" id="fullname" placeholder="Full Name of Manager" class="form-control" required></input>

					<div class="form-row"></div>
					<input type="email" name="emailid" id="emailid" placeholder="Email of Manager" class="form-control"  required></input>

					<div class="form-row"></div>
					<input type="tel" name="contactno" id="contactno" placeholder="Mobile Number of Manager" class="form-control" pattern="[789][0-9]{9}" required></input>

					
					<div class="form-row"></div>
						
						<div class="form-holder">
							<select name="branch" id="" class="form-control" required>
								<option value="" disabled selected>Assign a Region</option>
								<option value="Delhi">Delhi</option>
								<option value="Mumbai">Mumbai</option>
								<option value="Kolkata">Kolkata</option>
								<option value="Chennai">Chennai</option>
								<option value="Bangalore">Bangalore</option>
								<option value="Hyderabad">Hyderabad</option>
								<option value="Ahmedabad">Ahmedabad</option>
								<option value="Pune">Pune</option>
								<option value="Vizag">Vizag</option>
								

							</select>
							<i class="zmdi zmdi-chevron-down"></i>
						</div>
					

					<button type=submit  >Add Manager
						<i class="zmdi zmdi-account-add"></i>
					</button>
				</form>
				
			</div>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<button onclick="returntohome()" type="button" class="glow-on-hover" ><small>Admin Home</small></button>
			
			
		
		
		  <!-- Javascript file -->
		  <script type="text/javascript">
    function DuplicateAccountValidation() {
    	var a = '${duplicateerror}';
       
        if (a=="Duplicate Account") {
        	blurt(
        		    'Duplicate Account',
        		    'Manager Account already exists with same Email-Id or Contact No or Branch.',
        		    'error'
        		);
        		
        
        }
        
    }
</script>

    <script type="text/javascript">
			function returntohome()
			{
				
				window.location = "/AdminHome";
					
			}
			</script>



		<script src="AdminAddingManagers/assets/js/jquery-3.3.1.min.js"></script>
		<script src="AdminAddingManagers/assets/js/main.js"></script>
		<script src="AdminAddingManagers/assets/blurt.min.js"></script>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>