<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Help India NGO</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="ManagerAddingVolunteers/assets/images/favicon.png" type="image/png">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href=ManagerAddingVolunteers/assets/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="ManagerAddingVolunteers/assets/css/style.css">
		<link rel="stylesheet" href="ManagerAddingVolunteers/assets/blurt.min.css" />
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
					window.location = "/ManagerLogin";
				}
			}
		</script>
	</head>

	<body onload=DuplicateAccountValidation()>

		<div class="wrapper">
			<div class="inner">
				<div class="image-holder">
					<img src="ManagerAddingVolunteers/assets/images/registration-form-6.jpg" alt="">
				</div>
				<form action="AddingVolunteers" method="post" modelAttribute="volunteer" >
				
					<h3>Add&nbsp; Volunteer</h3>
					<input name="fullname" id="fullname" placeholder="Full Name of Volunteer" class="form-control" required></input>

					<div class="form-row"></div>
					<input type="email" name="emailid" id="emailid" placeholder="Email of Volunteer" class="form-control"  required></input>

					<div class="form-row"></div>
					<input type="tel" name="contactno" id="contactno" placeholder="Mobile Number of Volunteer" class="form-control" pattern="[789][0-9]{9}" required></input>

					
					
					<button type=submit onclick="return Validate()">Add Volunteer
						<i class="zmdi zmdi-account-add"></i>
					</button>
				</form>
				
			</div>
			<button onclick="returntohome()" type="button" class="glow-on-hover" ><small>Manager Home</small></button>
				
		</div>
		
		<script type="text/javascript">
    function DuplicateAccountValidation() {
    	var a = '${duplicateerror}';
       
        if (a=="Duplicate Account") {
        	blurt(
        		    'Duplicate Account',
        		    'Volunteer Account already exists with same Email-Id or Contact No.',
        		    'error'
        		);
        		
        
        }
        
    }
</script>

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
			function returntohome()
			{
				
				window.location = "/ManagerHome";
					
			}
			</script>
		<script src="ManagerAddingVolunteers/assets/js/jquery-3.3.1.min.js"></script>
		<script src="ManagerAddingVolunteers/assets/js/main.js"></script>
		<script src="AdminAddingManagers/assets/blurt.min.js"></script>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>