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

            function send_form() {

                var tel   = $('#reg_t').val();
                var name  = $('#reg_n').val();
                
                var p1 = $('#reg_p1').val();
                var p2 = $('#reg_p2').val();

                if(p1=='')
                {
                    console.log('Пустой пароль');
                    //AndroidFunction.show_message('Пароли не совпадают');
                }
                if(p1!=p2)
                {
                    console.log('Пароли не совпадают');
                    //AndroidFunction.show_message('Пароли не совпадают');
                }

                if(tel=='')
                {
                    console.log('введите номер телефона');
                }

                if(name=='')
                {
                    console.log('имя не должно быть пустым');
                }

                
            }

        </script>

        ~~include file="tpl/grid_css.tpl"~
 

    </head>
	
    <body class="">

        <div class="grid-container">

            <main class="main">
				<center><p style="font-size: 24px; font-weight: 600; text-transform: uppercase;"><a style="text-decoration: none; color: #fff;" href="/">QUASA</a></p></center>
				
            	<form method="POST" action="/reg/" id="reg_form">
            		<input type="hidden" name="registration" value='1' />

	            	<div class="grid">
	            		<div><input class="reg" type="text" name="phonenum" id="reg_t" value="" placeholder="номер телефона" required autocomplete="off"></div>
						<div><input class="reg" type="text" name="fio" value="" id="reg_n" placeholder="Ф.И.О" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="password" id="reg_p1" value="" placeholder="Пароль" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="pass_conf" id="reg_p2" value="" placeholder="Подтверждение пароля" required autocomplete="off"></div>
						<button class="btn_subm" type="button" name="scSendBtn" value="Зарегистрироваться" onclick="send_form();">ЗАРЕГИСТРИРОВАТЬСЯ</div>
						</br>
						<a style="text-decoration: none; color: #fff; font-size: 12px;" href="/login/">Авторизация</a>
	            	</div>
                </form>
            </main>
        </div>

        <div id="toastjs"></div>
        
    </body>
</html>
