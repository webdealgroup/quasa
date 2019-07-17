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
    <div class="boxAllTasks billUser">
        <div class="batMenu" onClick="javascript:return init();"><span class="ico arrowLeft"></span> <!--p class="radius200"></p--> </div>
        <div class="batText">Счет</div>
        <div class="batCategory"><span class="icoSvg icoSvgHelp"></span></div>
    </div>
</header>
~~include file='tpl/menu.tpl'~

    <main class="main">
        <div class="billUserBox">
            <div class="billUserGradient">
                ~~$money~ &#x20bd;
               <!-- <p>37 &#x20bd; + 1 000 &#x20bd; бонусов</p> //-->
            </div>
            <div class="btnNext" onclick="javascript: document.location.href = '/pay/';">Далее</div>
        </div>
     </main>
</div>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</body>
</html>
