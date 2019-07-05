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
            function show_user(user_name) {
                Android.changeName(user_name);
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
                <div class="header__search" onClick="javascript:return init();">
                        <span>&#9776;</span>
                </div>
                <div class="header__avatar">
                    ~~$page~
                </div>
            </header>

            ~~include file='tpl/menu.tpl'~
 


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
  padding: 15px 20px;
  background-color: #e3e4e6;
  color: slategray;
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
    background-image: url(../site/img/card.svg);
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
                    <div class="main-header__updates tab">
                        ИЗБРАННЫЕ
                    </div>
                </div>
                <div class="panels">
                    <div class="panel">
                        <div class="main-overview">

                            
                            ~~foreach from=$tasks item=i~
                            <div class="overviewcard" onclick="javascript: document.location.href = '/task_card/?id=~~$i.id~&referrer=all_tasks';">
                                <div class="overviewcard__icon" style="background-color: #0bb99f;">
                                    <img src="../site/img/car.svg">
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
