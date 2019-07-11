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

<!--div class="header__search" onClick="javascript:return init();">
    <span>&#9776;</span>
</div>
    <div class="header__avatar">
        ~~$page~
    </div-->
    <div class="captionMenu"><span class="arrowBack"></span>Категории</div>

</header>
~~include file='tpl/menu.tpl'~

    <main class="main">

        <ul class="category">
            <li>
                <div class="icoCategory ico_01"></div> <div class="name">Курьерские услуги</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_02"></div> <div class="name">Ремонт и строительство</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_03"></div> <div class="name">Грузоперевозки</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_04"></div> <div class="name">Уборка и помощь по хозяйству</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_05"></div> <div class="name">Виртуальный помощник</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_06"></div> <div class="name">Компьютерная помощь</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_07"></div> <div class="name">Мероприятия и промо-акции</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_08"></div> <div class="name">Дизайн</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_09"></div> <div class="name">Web-разработка</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_10"></div> <div class="name">Фото и видео-услуги</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_11"></div> <div class="name">Установка и ремонт техники</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_12"></div> <div class="name">Красота и здоровье</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_13"></div> <div class="name">Ремонт цифровой техники</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_14"></div> <div class="name">Юридическая помощь</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_15"></div> <div class="name">Репетиторы и обучение</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_16"></div> <div class="name">Ремонт транспорта</div> <div class="arrowCat"></div>
            </li>
        </ul>
     </main>
</div>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</body>
</html>
