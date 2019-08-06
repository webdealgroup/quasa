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
        <script src="/js/jquery.maskedinput.min.js"></script>
        
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

                var mess = '';
                var i = 0;


                if(tel=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Введите номер телефона';
                    i++;
                }

                if(name=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Имя не должно быть пустым';
                    i++;
                }
               
                if(p1=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Пустой пароль';
                    i++;
                }
                if(p1!=p2)
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Пароли не совпадают';
                    i++;
                }


                if (mess != '')
                {
                    //AndroidFunction.show_message(mess);
                    console.log(mess);
                }
                else
                {
                    $('#reg_form').submit();
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
	            		<div><input class="reg phone_mask" type="text" name="phone" id="reg_t" value="" placeholder="+7 (999) 999-99-99" required autocomplete="off"></div>
						<div><input class="reg" type="text" name="name" value="" id="reg_n" placeholder="ваше имя" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="password" id="reg_p1" value="" placeholder="Пароль" required autocomplete="off"></div>
						<div><input class="reg" type="password" name="pass_conf" id="reg_p2" value="" placeholder="Подтверждение пароля" required autocomplete="off"></div>
						<button class="btn_subm" type="button" name="scSendBtn" value="Зарегистрироваться" onclick="send_form();">ЗАРЕГИСТРИРОВАТЬСЯ</div>
						</br>
						<center><a style="margin:0 auto;text-decoration: none; color: #fff; font-size: 12px;" href="/login/">Авторизация</a></center>
	            	</div>
                </form>
            </main>
        </div>

        <div id="toastjs"></div>


        <script>
            $(".phone_mask").mask("+7 (999) 999-99-99");
        </script>        

    </body>
</html>
