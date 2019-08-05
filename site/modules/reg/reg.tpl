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
        
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>


        <script type="text/javascript">
            function init() {
                AndroidFunction.showMenu();
            }
        </script>

        ~~include file="tpl/grid_css.tpl"~
 

    </head>
	
    <body class="">

        <div class="grid-container">

            <main class="main">
				<center><p style="font-size: 24px; font-weight: 600; text-transform: uppercase;"><a style="text-decoration: none; color: #fff;" href="/">QUASA</a></p></center>
				
            	<form method="POST" action="">
            		<input type="hidden" name="registration" value='1' />

	            	<div class="grid">
	            		<div><input class="reg" type="text" name="phonenum" value="" placeholder="номер телефона" required autocomplete="off"></div>
						<div><input class="reg" type="text" name="fio" value="" placeholder="Ф.И.О" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="password" value="" placeholder="Пароль" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="pass_conf" value="" placeholder="Подтверждение пароля" required autocomplete="off"></div>
						<button class="btn_subm" type="button" name="scSendBtn" value="Зарегистрироваться" onclick="AndroidFunction.showMessage('123456789');">ЗАРЕГИСТРИРОВАТЬСЯ</div>
						</br>
						<a style="text-decoration: none; color: #fff; font-size: 12px;" href="/login/">Авторизация</a>
	            	</div>
                </form>
            </main>
        </div>

        <div id="toastjs"></div>
        
    </body>
</html>
