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

                    <ul class="tasks">

                      <li onclick="javascript: document.location.href = '#';">
                        <div class="task__title">Вас выбрали в 5 заданиях</div>
                        <div class="body">
                          <div class="task__icon icon_red"></div>
                          <div class="name">
                            <div>Выполнены</div>
                            <div class="status">5 заданий</div>
                          </div>
                          <div class="arrowCat"></div>
                        </div>
                      </li>
                      <li onclick="javascript: document.location.href = '#';">
                        <div class="task__title">Отменено или выбран другой исполнитель</div>
                        <div class="body">
                          <div class="task__icon icon_grey"></div>
                          <div class="name">
                            <div>В архиве</div>
                            <div class="status">19 заданий</div>
                          </div>
                          <div class="arrowCat"></div>
                        </div>
                      </li>

                    </ul>
                </div>
                <div class="panel">

                  <ul class="tasks">

                    <li onclick="javascript: document.location.href = '#';">
                      <div class="task__title">Вы создали 1 задание</div>
                      <div class="body">
                        <div class="task__icon icon_green"></div>
                        <div class="name">
                          <div>Открыты</div>
                          <div class="status">1 задание</div>
                        </div>
                        <div class="arrowCat"></div>
                      </div>
                    </li>

                  </ul>

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
