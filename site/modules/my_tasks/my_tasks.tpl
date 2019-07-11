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
        <link rel="stylesheet" href="/css/my_tasks.css">

        <script type="text/javascript">
            function init() {
                AndroidFunction.showMenu();
            }
        </script>

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

    <body>

        <div class="grid-container">

            <header class="header">
                <div class="header__search" onClick="javascript:return init();">
                        <span>&#9776;</span>
                </div>
                <div class="header__avatar">
                    Мои задания
                </div>
            </header>


            ~~include file='tpl/menu.tpl'~



            <main class="main toggle">

                <div class="main-header tabs">
                    <div class="main-header__heading tab active">
                        Я ИСПОЛНИТЕЛЬ
                    </div>
                    <div class="main-header__updates tab">
                        Я ЗАКАЗЧИК
                    </div>
                    <div class="line"></div>
                </div>

                <div class="panels">
                  <div class="panel">
                    <div class="main-overview">

                        <div class="overviewcard" onclick="javascript: document.location.href = '#';">
                            <div class="overviewcard__title">Вас выбрали в 5 заданиях</div>

                            <div class="overviewcard__body">
                              <div class="overviewcard__main">
                                <div class="overviewcard__icon icon_red"></div>
                                <div class="overviewcard__text">
                                  <div class="overviewcard__status">Выполнены</div>
                                  <div class="overviewcard__number">5 заданий</div>
                                </div>
                              </div>
                              <a href="#"><div class="arrowCat"></div></a>
                            </div>

                        </div>

                        <div class="overviewcard" onclick="javascript: document.location.href = '#';">
                          <div class="overviewcard__title">Отменено или выбран другой исполнитель</div>

                            <div class="overviewcard__body">
                              <div class="overviewcard__main">
                                <div class="overviewcard__icon icon_grey"></div>
                                <div class="overviewcard__text">
                                  <div class="overviewcard__status">В архиве</div>
                                  <div class="overviewcard__number">19 заданий</div>
                                </div>
                              </div>
                              <a href="#"><div class="arrowCat"></div></a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="panel">
                  <div class="main-overview">
                    <div class="overviewcard" onclick="javascript: document.location.href = '#';">
                        <div class="overviewcard__title">Вы создали 1 задание</div>

                        <div class="overviewcard__body">
                          <div class="overviewcard__main">
                            <div class="overviewcard__icon icon_green"></div>
                            <div class="overviewcard__text">
                              <div class="overviewcard__status">Открыты</div>
                              <div class="overviewcard__number">1 задание</div>
                            </div>
                          </div>
                          <a href="#"><div class="arrowCat"></div></a>
                        </div>

                    </div>
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
