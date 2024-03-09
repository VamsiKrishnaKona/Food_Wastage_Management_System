<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="VolunteerViewingPickupOrders/assets/images/favicon.png" type="image/png">
    

    <link rel="stylesheet" href="VolunteerViewingPickupOrders/assets/fonts/icomoon/style.css">

    <link rel="stylesheet" href="VolunteerViewingPickupOrders/assets/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="VolunteerViewingPickupOrders/assets/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="VolunteerViewingPickupOrders/assets/css/style.css">

    <title>Help India NGO Managers</title>
    
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
					window.location = "/VolunteerLogin";
				}
			}
		</script>
  </head>
  <body>
  

  <div class="content">
    
    <div class="container">
    		<div class="logo">
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="DonarLoginAndRegistration/assets/img/logo.png" alt="easyclass" />
                
              </div>
      <h2 class="mb-5">    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="returntohome()" type="button" class="glow-on-hover" ><small>Help India NGO Pickup Orders</small></button></h2>

      <div class="table-responsive">

        <table class="table table-striped custom-table">
          <thead>
            <tr>
              
              <th scope="col">Donation ID</th>
              <th scope="col">Donar Name</th>
              <th scope="col">Contact No</th>
              <th scope="col">Donation Category</th>
              <th scope="col">Donation Pickup Location</th>
              <th scope="col">Pickup time</th>
              <th scope="col">Donation Status</th>
              <th scope="col">Volunteer Name</th>
            </tr>
          </thead>
          
          <tbody>
          <c:forEach items="${orders}" var="orders">
            <tr scope="row">

              
            </tr>

            <tr>
              
              <td><c:out value="${orders.id}"></c:out></td>
              <td><a href="#"><c:out value="${orders.fullname}"></c:out></a></td>
              <td><c:out value="${orders.contactno}"></c:out></td>
              <td class="status"><span class="${orders.status}"><c:out value="${orders.status}"></c:out></span></td>
              
              <td><c:out value="${orders.pickuplocation}"></c:out></td>
              <td><c:out value="${orders.pickuptime}"></c:out></td>
              <td><c:out value="${orders.donationcategory}"></c:out></td>
              <td><c:out value="${orders.volunteer}"></c:out></td>
              <td><a href="MarkCompleted?id=${orders.id}" class="more"><c:out value="Mark Completed"></c:out></a></td>
              <td><a href="MarkPending?id=${orders.id}" class="more"><c:out value="Mark Pending"></c:out></a></td>

            </tr>
            <tr class="spacer"><td colspan="100"></tr>
            <tr>
             
             
         </c:forEach>
            
          </tbody>
        </table>
      </div>


    </div>

  </div>
    
    <script type="text/javascript">
			function returntohome()
			{
				
				window.location = "/VolunteerHome";
					
			}
			</script>

    <script src="VolunteerViewingPickupOrders/assets/js/jquery-3.3.1.min.js"></script>
    <script src="VolunteerViewingPickupOrders/assets/js/popper.min.js"></script>
    <script src="VolunteerViewingPickupOrders/assets/js/bootstrap.min.js"></script>
    <script src="VolunteerViewingPickupOrders/assets/js/main.js"></script>
  </body>
</html>