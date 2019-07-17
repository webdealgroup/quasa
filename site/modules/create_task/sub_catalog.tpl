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
    <div class="boxAllTasks oneText">
        <div class="batMenu" onClick="javascript:return init();">
            <span class="ico arrowLeft" onclick="javascript: document.location.href = '/create_task/?cat_id=~~$cat_id~';">>
            </span> <!--p class="radius200"></p--> </div>
        <div class="batText">Грузоперевозки</div>
    </div>
</header>
~~include file='tpl/menu.tpl'~

    <main class="main">

        <ul class="category subCategoryTask"> <!-- ?cat_id=~~$i.id~-->

            ~~foreach from=$cat_items item=i~
            <li onclick="javascript: document.location.href = '/create_task/?cat_id=~~$i.id~&create_task=1';">
                <div class="name">~~$i.name~</div>
                <span class="icoSvg icoSvgArrowWhite"></span></li>
            ~~/foreach~

        </ul>
     </main>
</div>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</body>
</html>
