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
    <link rel="stylesheet" href="/css/pay.css">

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
        <div class="captionMenu"><span class="arrowBack"></span>Пополнение</div>

    </header>

<!--    ~~include file='tpl/menu.tpl'~    -->

    <main class="main">

        <ul class="category">
            <li>
                <div class="icoCategory ico_01"></div>
                <div class="name">
                  <div class="text">Сумма пополнения</div>
                  <div> <input type="text" name="" placeholder="  400 &#8381;"></div>
                </div> <div></div>
            </li>
          </ul>
          <ul class="card">
            <li style="border-bottom: none">
                <div class="name">
                  <div class="text">Минимальная сумма - 400 &#8381;</div>
                  <div class="title">Способ оплаты</div>
                </div>
            </li>
          </ul>
          <ul class="category">
            <li>
                <div class="icoCategory ico_02"></div> <div class="name">Google Pay</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_03"></div>
                <div class="name">
                   <div>Банковские карты</div>
                   <div class="text">Visa, MasterCard, Maestro</div>
                </div>
                <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_04"></div> <div class="name">Сбербанк Онлайн</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_05"></div> <div class="name">Qiwi кошелёк</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_06"></div> <div class="name">Яндекс.Деньги</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_07"></div> <div class="name">Альфа-Клик</div> <div class="arrowCat"></div>
            </li>
            <li>
                <div class="icoCategory ico_08"></div> <div class="name">WebMoney</div> <div class="arrowCat"></div>
            </li>
        </ul>

    </main>
    <footer class="footer">
        <div class="footer__copyright">
            &copy; 2019
        </div>
        <div class="footer__signature">
            Quasa
        </div>
    </footer>
</div>
</body>
</html>