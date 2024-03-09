<!DOCTYPE html>
<html lang="en">
    <head>
      <link rel="shortcut icon" href="AdminAddingManagersSuccess/assets/img/favicon.png" type="image/png">
        <title>Help India NGO</title>
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

        

        <style>
            html
            {
              height: 100%;
            }

            body
            {
              margin:0;
              padding:0;
              font-family: sans-serif;
              background: linear-gradient(#141e30, #243b55);
              background-image: url('AdminAddingManagersSuccess/assets/img/thank you.jpg');
            }

            .login-box
            {
              position: absolute;
              top: 50%;
              left: 50%;
              width: 400px;
              padding: 40px;
              transform: translate(-50%, -50%);
              background: rgba(0,0,0,.5);
              box-sizing: border-box;
              box-shadow: 0 15px 25px rgba(0,0,0,.6);
              border-radius: 10px;
            }

            .login-box h2
            {
              margin: 0 0 30px;
              padding: 0;
              color: #fff;
              text-align: center;

            }

            .login-box h5
            {
              margin: 0 0 30px;
              font-size: 15px;
              color: #fff;
              text-align: center;

            }

            .login-box .user-box
            {
              position: relative;

            }

            .login-box .user-box input
            {
              width: 100%;
              padding: 10px 0;
              font-size: 16px;
              color: #fff;
              margin-bottom: 30px;
              border: none;
              border-bottom: 1px solid #fff;
              outline: none;
              background: transparent;
            }

            .login-box .user-box label
            {
              position: absolute;
              top:0;
              left: 0;
              padding: 10px 0;
              font-size: 16px;
              color: #fff;
              pointer-events: none;
              transition: .5s;
            }

            .login-box .user-box input:focus ~ label,
            .login-box .user-box input:valid ~ label
            {
              top: -20px;
              left: 0;
              color: #03e9f4;
              font-size: 12px;
            }

            .login-box form a
            {
              position: relative;
              display: inline-block;
              padding: 10px 20px;
              color: #03e9f4;
              font-size: 16px;
              text-decoration: none;
              text-transform: uppercase;
              overflow: hidden;
              transition: .5s;
              margin-top: 40px;
              letter-spacing: 4px;
            }

            .login-box a:hover
            {
              background: #E44C62;
              color: #fff;
              border-radius: 9px;
              box-shadow: 0 0 5px #03e9f4,
                          0 0 25px #03e9f4,
                          0 0 50px #03e9f4,
            }

            .login-box a span
            {
              position: absolute;
              display: block;
            }

            .login-box a span:nth-child(1)
            {
              top: 0;
              left: -100%;
              width: 100%;
              height: 2px;
              background: linear-gradient(90deg, transparent, #03e9f4);
              animation: btn-anim1 1s linear infinite;
            }

            @keyframes btn-anim1
            {
              0%
              {
                left: -100%;
              }

              50%,100%
              {
                left: 100%;
              }
            }


            .login-box a span:nth-child(2)
            {
              top: -100%;
              right: 0;
              width: 2px;
              height: 100%;
              background: linear-gradient(180deg, transparent, #03e9f4);
              animation: btn-anim2 1s linear infinite;
              animation-delay: .25s
            }

            @keyframes btn-anim2
            {
              0%
              {
                top: -100%;
              }

              50%,100%
              {
                top: 100%;
              }
            }

            .login-box a span:nth-child(3)
            {
              bottom: 0;
              right: -100%;
              width: 100%;
              height: 2px;
              background: linear-gradient(270deg, transparent, #03e9f4);
              animation: btn-anim3 1s linear infinite;
              animation-delay: .5s
            }

            @keyframes btn-anim3
            {
              0%
              {
                right: -100%;
              }

              50%,100%
              {
                right: 100%;
              }
            }

            .login-box a span:nth-child(4)
            {
              bottom: -100%;
              left: 0;
              width: 2px;
              height: 100%;
              background: linear-gradient(360deg, transparent, #03e9f4);
              animation: btn-anim4 1s linear infinite;
              animation-delay: .75s
            }

            @keyframes btn-anim4
            {
              0%
              {
                bottom: -100%;
              }

              50%,100%
              {
                bottom: 100%;
              }
            }
        </style>
    </head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    <meta charset="UTF-8">

        <div class="login-box" >
            <h2><span style="font-size:30px">THANK YOU</span></h2>
            <h2><span style="font-size:15px">Manager has been successfully added to <br> <b>Help India NGO</b></span></h2>

            <form>
                <a href="/AdminHome">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspReturn Back&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                </a>
          </form>
        </div>
</html>
