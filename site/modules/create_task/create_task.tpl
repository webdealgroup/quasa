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
        <link rel="stylesheet" href="/css/main.css">
        
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


    </head>

<body class="">
<div class="grid-container">
    <header class="header">
        <div class="boxAllTasks createTaskStep">
            <div class="batMenu" onClick="javascript:return init();">
                <span class="ico arrowLeft" onclick="javascript: document.location.href = '/create_task/?cat_id=~~$cat_id~';">
                </span>
            </div>
            <div class="batName">~~$cat_name~<p>Шаг 1 из 7</p></div>
            <div class="batCategory">Отмена</div>
        </div>
    </header>
~~include file='tpl/menu.tpl'~

    <main class="main">

        <div class="addTaskStep">
            <form action="#" method="post">
                <div class="capt">Что нужно сделать?</div>
                <div class="inp">
                    <p>Название задания</p>
                    <input type="text" name="title" value="" />
                </div>
                <div class="inp">
                    <p>Содержание задания</p>
                    <input type="text" name="description" value="" />
                </div>
                <div class="inp">
                    <p>Стоимость</p>
                    <input type="text" name="cost" value="" placeholder="99999999.99"/>
                </div>
                <div class="inp">
                    <p>Начало исполнения</p>
                    <input type="text" name="time_start" value="" placeholder="~~$time_start~"/>
                </div>
                <div class="inp">
                    <p>Завершение исполнения</p>
                    <input type="text" name="time_end" value="" placeholder="~~$time_start~"/>
                </div>
                <br/>
                <input type='submit' name='scSendBtn' value='Сохранить задание'>
            </form>
            <div class="btnNext">Далее</div>
        </div>

     </main>
</div>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</body>
</html>
