<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    


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
	<script src="ManagerAssigningVolunteer/assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src='ManagerAssigningVolunteer/assets/select2/dist/js/select2.min.js' type='text/javascript'></script>

        <link href='ManagerAssigningVolunteer/assets/select2/dist/css/select2.min.css' rel='stylesheet' type='text/css'>

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
	<body>

		<div class="login-box" >
			<h3 style="color:white"><span  style="font-size:17px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>Welcome Volunteer,</b></span></h3>
			<h2><span class="fa fa-users" style="font-size:30px">&nbspSelect Volunteer</span></h2>
				<form method="post" action="AssignedVolunteer">
					
						<div class="container">
							<div class="row justify-content-center">
								
							</div>
							<div class="row justify-content-center">
								<div class="col-md-5 d-flex justify-content-center align-items-center">
									<select id='volunteer' name='volunteer' style='width: 320px;'>
									<option value="" disabled selected>Assign a Volunteer</option>
									<c:forEach items="${volunteerslist}" var="volunteer">
							            <option value='${volunteer.id} - ${volunteer.fullname}'>${volunteer.id}&nbsp;-&nbsp;${volunteer.fullname}</option>  
							        </c:forEach>
							        </select>  
								</div>
							</div>
							
						</div>
						<button type="submit">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assign Volunteer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small>
						  </button>
					
	
					
	
			  </form>
			</div>
	

  <script src="AdminSelectingBranch/assets/js/popper.js"></script>
  <script src="AdminSelectingBranch/assets/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
  <script src="AdminSelectingBranch/assets/js/main.js"></script>
  
  <script>
        $(document).ready(function(){
            
            // Initialize select2
            $("#volunteer").select2();

            // Read selected option
            $('#but_read').click(function(){
                var username = $('#volunteer option:selected').text();
                var userid = $('#volunteer').val();
           
                $('#result').html("id : " + userid + ", name : " + username);
            });
        });
        </script>

	</body>
</html>

