<!DOCTYPE html>
<html>
    <head>

        <title></title>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
        
        <script type="text/javascript">
            function init() {
                AndroidFunction.showMenu();
            }
        </script>

        <style>
            body {
              margin: 0;
              padding: 0;
              color: #fff;
              font-family: 'Roboto', sans-serif;
              box-sizing: border-box;
              background-color: #394263;
            }

            /* Assign grid instructions to our parent grid container, mobile-first (hide the sidenav) */
            .grid-container {
              display: grid;
              grid-template-columns: 1fr;
              grid-template-rows: 1fr;
              grid-template-areas:'main';
              height: 100vh;
              justify-items: center;
              align-items: center;
            }

            .main {

            }

            .grid {
              display: grid;
              grid-template-columns: 1fr;
              grid-template-rows: 1fr 1fr;
              grid-gap: 20px;
            }

			.grid div {
				background-color: #28314E;
				border: 1px solid #212941;
				border-radius: 5px;
				padding: 8px 15px;
				color: #ffffff;
				font-size: 18px;
				font-family: roboto;
				text-align: center;
				width:200px;
			}
			.grid div input{
				background-color: #28314E;
				border-width: 0px;
				width:100%;
				color: #fff; 
				font-family: 'Roboto', sans-serif;
				font-size: 1.5em;
				text-align: center;
				text-decoration: none;
			}

			.grid div input :active, :hover, :focus {
			    outline: 0;
			    outline-offset: 0;
			}

			.enter_link {
				width:100%;
				text-align: center;
				margin:20px 0px;
			}
			.enter_link a {
				color: #fff;
				text-decoration: none;
				font-size: 1.5em;
			}

			.submit_btn {
				background-color: #394263 !important;
				border: 0px !important;
			}
			.submit_btn input{
				background-color: #394263 !important;
			}
			
			input.reg {
				font-size: 12px!important;
			}
			
			button.btn_subm {
			cursor: pointer!important;
			background-color: #2c1445;
			color: #fff;
			font-size: 12px;
			text-align: center;
			width: 233px;
			height: 40px;
			outline: none;
			border-radius: 10px;
			border:none;
			}
			
			button.btn_subm:hover {
			cursor: pointer!important;
			background-color: #422165;
			color: #fff;
			font-size: 12px;
			text-align: center;
			width: 233px;
			height: 40px;
			outline: none;
			border-radius: 10px;
			border:none;
			}
        </style>



    </head>
	
    <body class="">

        <div class="grid-container">

            <main class="main">
				<center><p style="font-size: 24px; font-weight: 600; text-transform: uppercase;"><a style="text-decoration: none; color: #fff;" href="/">QUASA</a></p></center>
				
            	<form method="POST" action="/ver/">
            		<input type="hidden" name="mod" value='phonenum' />

	            	<div class="grid">
	            		<div><input class="reg" type="text" name="phonenum" value="" placeholder="+7 (911) 799-66-44" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="password" value="" placeholder="Пароль" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="pass_conf" value="" placeholder="Подтверждение пароля" required autocomplete="off"></div>
						<button class="btn_subm" type="submit" name="scSendBtn" value="Зарегистрироваться">ЗАРЕГИСТРИРОВАТЬСЯ</div>
						</br>
						<center><a style="text-decoration: none; color: #fff; font-size: 12px;" href="/login">Авторизация</a></center>
	            	</div>
                </form>
            </main>
        </div>
    </body>
</html>
