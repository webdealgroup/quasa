<?php /* Smarty version 2.6.11, created on 2019-07-01 17:50:54
         compiled from user_card/user_card.tpl */ ?>
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
            }

            /* Assign grid instructions to our parent grid container, mobile-first (hide the sidenav) */
            .grid-container {
              display: grid;
              grid-template-columns: 1fr;
              grid-template-rows: 50px 1fr 50px;
              grid-template-areas:
                'header'
                'main'
                'footer';
              height: 100vh;
            }


            /* Give every child element its grid name */
            .header {
              grid-area: header;
              display: flex;
              align-items: center;
              justify-content: space-between;
              padding: 0 16px;
              background-color: #2A2E43;
            }

            /* Make room for the menu icon on mobile */
            .header__search {
              margin-left: 4px;
              font-family: Arial;
              font-size: 1.5em;
            }

            .sidenav {
              grid-area: sidenav;
              display: flex;
              flex-direction: column;
              height: 100%;
              width: 240px;
              position: fixed;
              overflow-y: auto;
              transform: translateX(-245px);
              transition: all .6s ease-in-out;
              box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.16), 0 0 0 1px rgba(0, 0, 0, 0.08);
              z-index: 2; /* Needs to sit above the hamburger menu icon */
              background-color: #394263;
            }

            .sidenav.active {
              transform: translateX(0);
            }

            .sidenav__close-icon {
              position: absolute;
              visibility: visible;
              top: 8px;
              right: 12px;
              cursor: pointer;
              font-size: 20px;
              color: #ddd;
            }

            .sidenav__list {
              padding: 0;
              margin-top: 85px;
              list-style-type: none;
            }

            .sidenav__list-item {
              padding: 20px 20px 20px 40px;
              color: #ddd;
            }

            .sidenav__list-item:hover {
              background-color: rgba(255, 255, 255, 0.2);
              cursor: pointer;
            }




            .footer {
              grid-area: footer;
              display: flex;
              align-items: center;
              justify-content: space-between;
              padding: 0 16px;
              background-color: #648ca6;
            }

            /* Non-mobile styles, 750px breakpoint */
            @media only screen and (min-width: 46.875em) {
              /* Show the sidenav */
              .grid-container {
                grid-template-columns: 240px 1fr;
                grid-template-areas:
                  "sidenav header"
                  "sidenav main"
                  "sidenav footer";
              }

              .header__search {
                margin-left: 0;
              }

              .sidenav {
                position: relative;
                transform: translateX(0);
              }

              .sidenav__close-icon {
                visibility: hidden;
              }
            }

            /* Medium screens breakpoint (1050px) */
            @media only screen and (min-width: 65.625em) {
              /* Break out main cards into two columns */
              .main-cards {
                column-count: 2;
              }
            }
        </style>

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
                <div class="header__search" onClick="javascript:return init();">
                        <span>&#9776;</span>
                </div>
                <div class="header__avatar">
                    <?php echo $this->_tpl_vars['page']; ?>

                </div>
            </header>

            <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'tpl/menu.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
 


<style>

.main {
  grid-area: main;
  background-color: #fff;
  color: #312E35;
}

.main-header {
  display: flex;
  justify-content: space-between;
  margin: 0px;
  padding: 20px;
  height: 15px;ы
  background-color: #e3e4e6;
  color: slategray;
}

.main-overview {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(265px, 1fr));
  grid-auto-rows: 94px;
  grid-gap: 1px;
  margin: 0px;
}

.overviewcard {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px;
  color: #312E35;
  background-color: #fff;
}

            .grid {
              display: grid;
              grid-template-columns: 1fr;
              grid-template-rows: 1fr 1fr;
              grid-gap: 20px;
              margin-top: 20px;
            }

            .grid div{
              padding: 0 20px;
            }




</style> 
            <main class="main">

                <div class="main-overview">

	            	<div class="grid">
	            		
	            		<div>id: <?php echo $this->_tpl_vars['user']['id']; ?>
</div>
	            		<div>Логин: <?php echo $this->_tpl_vars['user']['login']; ?>
</div>
	            		<div>Имя: </div>
	            		<div>Фамилия: </div>
	            		<div>пол: </div>
	            		<div>город: </div>
	            		<div>день рождения: </div>
	            		<div>Блокчейн аккаунт: </div>
	            		<div>электронная почта: </div>
	            		<div>телефон: </div>
	            		<div>рейтинг пользователя: </div>
	            		<div>баланс: </div>
	            		<div>QUA баланс: </div>


	            	</div>

                </div>

              

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