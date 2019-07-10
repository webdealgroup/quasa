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
                <div class="boxAllTasks">
                    <div class="batMenu" onClick="javascript:return init();"><span class="ico menu"></span> <!--p class="radius200"></p--> </div>
                    <div class="batSearch">
                        <form action="#" method="post">
                            <input type="text" name="search" class="radius200" value="" placeholder="Поиск по заданиям" />
                        </form>
                    </div>
                    <div class="batCategory"><span class="ico settings"></span></div>
                    <div class="batMap"><span class="ico map"></span></div>
                </div>

            </header>

            ~~include file='tpl/menu.tpl'~
 


<style>

.main {
  grid-area: main;
  background-color: #fff;
  color: #312E35;
}


.main-overview {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(265px, 1fr));
  grid-auto-rows: 105px;
  grid-gap: 1px;
  margin: 0px;
}

.overviewcard {
  display: flex;
  align-items: flex-start;
  padding: 20px;
  color: #312E35;
  background-color: #fff;
  border-bottom: 1px solid rgb(245, 244, 247);
}

.overviewcard__icon {
    border-radius: 50%;
    height: 40px;
    width: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 10px;
}
.overviewcard__icon img {
    max-width: 30px;
}
.overviewcard__title {
    font-weight: bold;
    font-size: 15px;
}
.overviewcard__address {
    color: darkgray;
    font-size: 13px;
}
.overviewcard__time_start {
    font-weight: bold;
    color: darkgray;
    font-size: 13px;
}
.overviewcard__labels {
    display: flex;
}
.overviewcard__labels div{
    margin-right:10px;
}
.overviewcard__info {
    font-weight: bold;
    font-size: 15px;
}
.overviewcard__card {
    background-image: url(/img/card.svg);
    width: 20px;
    height: 20px;
    background-size: cover;
}

.toggle .tabs .tab.active {
  border-bottom: 2px solid rgb(238, 205, 139);
}
.toggle .panels .panel {
  display: none;
}
.toggle .panels .panel:first-child {
  display: block;
}
</style> 
            <main class="main toggle">


                <div class="main-header tabs">
                    <div class="main-header__heading tab active">
                        ВСЕ
                    </div>
                    <div class="main-header__heading tab">
                        РЕКОМЕНДОВАННЫЕ
                    </div>
                    <div class="main-header__updates tab">
                        ИЗБРАННЫЕ
                    </div>
                    <div class="line"></div>
                </div>


                <div class="panels">
                    <div class="panel">
                        <div class="main-overview">

                            
                            ~~foreach from=$tasks item=i~
                            <div class="overviewcard" onclick="javascript: document.location.href = '/task_card/?id=~~$i.id~&referrer=all_tasks';">
                                <div class="overviewcard__icon" style="background-color: #0bb99f;">
                                    <img src="/img/car.svg">
                                </div>
                                <div class="overviewcard__text">
                                    <div class="overviewcard__title">~~$i.title~</div>
                                    <div class="overviewcard__address">~~$i.address~</div>
                                    <div class="overviewcard__time_start">начать ~~$i.time_start~</div>
                                    <div class="overviewcard__labels">
                                        <div class="overviewcard__info">~~$i.cost~</div>
                                        <div class="overviewcard__card"></div>
                                    </div>
                                </div>
                            </div>
                            ~~/foreach~

                        </div>
                    </div>
                    <div class="panel">
                        123
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
