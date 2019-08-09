<!DOCTYPE html>
<html>
    <head>

        <title></title>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/css/main.css">
        
        <script type="text/javascript">
            function init() {
                AndroidFunction.showMenu();
            }
            function show_user(user_name) {
                Android.changeName(user_name);
            }
        </script>

        <style>

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
        <script
          src="https://code.jquery.com/jquery-3.4.1.min.js"
          integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
          crossorigin="anonymous">
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
            
            // Tabs
            (function() {
              $(function() {
                var toggle;
                return toggle = new Toggle('.toggle');
              });

              this.Toggle = (function() {
                Toggle.prototype.el = null;

                Toggle.prototype.tabs = null;

                Toggle.prototype.panels = null;

                function Toggle(toggleClass) {
                  this.el = $(toggleClass);
                  this.tabs = this.el.find(".tab");
                  this.panels = this.el.find(".panel");
                  this.bind();
                }

                Toggle.prototype.show = function(index) {
                  var activePanel, activeTab;
                  this.tabs.removeClass('active');
                  activeTab = this.tabs.get(index);
                  $(activeTab).addClass('active');
                  this.panels.hide();
                  activePanel = this.panels.get(index);
                  return $(activePanel).show();
                };

                Toggle.prototype.bind = function() {
                  var _this = this;
                  return this.tabs.unbind('click').bind('click', function(e) {
                    return _this.show($(e.currentTarget).index());
                  });
                };

                return Toggle;

              })();

            }).call(this);

        </script>


    </head>

    <body class="" onload="javascript:return show_user('~~$user_name~');">

        <div class="grid-container">

            <header class="header">
                Открытые задания
<!--
                <div class="boxAllTasks">
                    <div class="batMenu" onClick="javascript:return init();"><span class="ico menu"></span></div>
                    <div class="batSearch">
                        <form action="#" method="post">
                            <input type="text" name="search" class="radius200" value="" placeholder="Поиск по заданиям" />
                        </form>
                    </div>
                    <div class="batCategory"><span class="ico settings"></span></div>
                    <div class="batMap"><span class="ico map"></span></div>
                </div>
//-->
<!--p class="radius200"></p-->
            </header>

            ~~include file='tpl/menu.tpl'~

            <main class="main toggle">
<!--
                <div class="main-header tabs">
                    <div class="main-header__heading tab active">ВСЕ</div>
                    <div class="main-header__heading tab">РЕКОМЕНДОВАННЫЕ</div>
                    <div class="main-header__updates tab">ИЗБРАННЫЕ</div>
                    <div class="line"></div>
                </div>
//-->
                <div class="allTaskSection">

                    <div class="panels">
                        <div class="panel">
                            <ul class="atUl">
                                ~~foreach from=$tasks item=i~
                                <li onclick="javascript: document.location.href = '/task_card/?id=~~$i.id~&referrer=all_tasks';">
                                    <div class="overviewIcon"><div class="icoCategory ico_03"></div></div>
                                    <div class="overviewInfo">
                                        <div class="title">~~$i.title~</div>
                                        <div class="adress">~~$i.address~</div>
                                        <div class="timeStart">начать: ~~$i.time_start~</div>
                                        <div class="price"><span>~~$i.cost~</span> <span class="cardIco"></span></div>
                                    </div>
                                </li>
                                ~~/foreach~
                            </ul>
                        </div>
                        <div class="panel">
                            123
                        </div>
                        <div class="panel">
                            456
                        </div>
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
