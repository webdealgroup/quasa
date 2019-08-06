<!DOCTYPE html>
<html>
    <head>

        <title></title>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        ~~include file="tpl/fonts.tpl"~
        ~~include file="tpl/js.tpl"~
        ~~include file="tpl/css.tpl"~


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="/js/jquery.maskedinput.min.js"></script>

        
        <script type="text/javascript">
            function init() {
                AndroidFunction.showMenu();
            }
        </script>

        <script>
            const menuIconEl = $('.menu-icon');
            const sidenavEl = $('.sidenav');
            const sidenavCloseEl = $('.sidenav__close-icon');

            // Add and remove provided class names
            function toggleClassName(el, className) {
              if (el.hasClass(className)) {
                el.removeClass(className);
              } else {
                el.addClass(className);
              }
            }

            // Open the side nav on click
            menuIconEl.on('click', function() {
              toggleClassName(sidenavEl, 'active');
            });

            // Close the side nav on click
            sidenavCloseEl.on('click', function() {
              toggleClassName(sidenavEl, 'active');
            });
        </script>




        <script>

            function send_form() {

                var task_title          = $('#task_title').val();
                var task_description    = $('#task_description').val();
                
                var task_cost           = $('#task_cost').val();
                var time_start          = $('#time_start').val();

                var mess = '';
                var i = 0;


                if(task_title=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Введите номер телефона';
                    i++;
                }

                if(task_description=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Имя не должно быть пустым';
                    i++;
                }
               
                if(task_cost=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Пустой пароль';
                    i++;
                }
                if(time_start=='')
                {
                    if (i>0) {mess = mess + '\r\n';}
                    mess += 'Пароли не совпадают';
                    i++;
                }


                if (mess != '')
                {
                    console.log(mess);
                    //AndroidFunction.show_message(mess);
               }
                else
                {
                    $('#reg_form').submit();
                }

                
            }

        </script>






    </head>

    <body class="">


        <div class="grid-container">
            <header class="header">
                <div class="boxAllTasks createTaskStep">
                    <div class="batMenu" onClick="javascript:return init();">
                        <span class="ico arrowLeft" onclick="javascript: document.location.href = '/create_task/?cat_id=~~$cat_id~';">
                        </span>
                    </div>
                    <div class="batName">~~$cat_name~<p>Шаг 1 из 1</p></div>
                    <div class="batCategory">Отмена</div>
                </div>
            </header>
            
            ~~include file='tpl/menu.tpl'~

            <main class="main">

                <div class="addTaskStep">
                    <form action="/create_task/" method="post" id="add_task_form">
                        <input type='hidden' name='save_task' value='1'>

                        <div class="capt">Что нужно сделать?</div>
                        <div class="inp">
                            <p>Название задания</p>
                            <input type="text" name="title" id="task_title" value="" />
                        </div>
                        <div class="inp">
                            <p>Содержание задания</p>
                            <input type="text" name="description" id="task_description" value="" />
                        </div>
                        <div class="inp">
                            <p>Стоимость</p>
                            <input  type="text" name="cost" id="task_cost"  value="" placeholder="0"/>
                        </div>
                        <div class="inp">
                            <p>Начало исполнения</p>
                            <input class="date" type="text" name="time_start" id="task_time_start" value="" placeholder="дд.мм.гггг чч:мм"/>
                        </div>
                        <br/>
                        
                    </form>
                    <div class="btnNext" onclick="send_form();">Далее</div>
                </div>

             </main>
        </div>

        <script>
            $(".date").mask("99.99.9999 99:99");

            //console.log('~~$error~');
            var err = '~~$error~';
            if (err != '') AndroidFunction.show_message(err);
        </script>  

    </body>
</html>
