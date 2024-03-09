<!doctype html>
<html lang="en">
  <head>
  	<title>Help India NGO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="shortcut icon" href="AdminAddingManagers/assets/images/favicon.png" type="image/png">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="AdminSelectingBranch/assets/css/style.css">

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
	<body>

		<div class="login-box" >
			<h3 style="color:white"><span  style="font-size:17px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>Welcome Admin,</b></span></h3>
			<h2><span class="fa fa-university" style="font-size:30px">&nbspSelect Region</span></h2>
				<form method="post" action="ViewingVolunteers">
					
						<div class="container">
							<div class="row justify-content-center">
								
							</div>
							<div class="row justify-content-center">
								<div class="col-md-5 d-flex justify-content-center align-items-center">
									<div class="dropdown-container">
									<div class="dropdown-button noselect w-100">
									<div class="dropdown-label">Select Region</div>
									<i class="fa fa-chevron-down"></i>
									</div>
									<div class="dropdown-list" style="display: none;">
				
									<input type="search" placeholder="Search Branch" class="dropdown-search"/>
									<ul>
										
									</ul>
									</div>
									</div>
									
								</div>
							</div>
							
						</div>
						<button type="submit">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							&nbsp&nbsp&nbsp&nbspView Volunteers&nbsp&nbsp&nbsp
						  </button>
					
	
					
	
			  </form>
			  
			</div>
	
<div>
</br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<button onclick="returntohome()" type="button" class="glow-on-hover" ><small>Admin Home</small></button>
</div>
<script type="text/javascript">
			function returntohome()
			{
				
				window.location = "/AdminHome";
					
			}
			</script>
	<script src="AdminSelectingBranch/assets/js/jquery.min.js"></script>
  <script src="AdminSelectingBranch/assets/js/popper.js"></script>
  <script src="AdminSelectingBranch/assets/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
  <script src="AdminSelectingBranch/assets/js/main.js"></script>

	</body>
</html>

