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
                <div class="boxAllTasks billUser">
                    <div class="batMenu" onclick="javascript: return init();"><span class="ico arrowLeft"></span>  </div>
                    <div class="batText">Мои задания</div>
                    <div class="batCategory"><!--span class="icoSvg icoSvgHelp"></span--></div>
                </div>
            </header>

            ~~include file='tpl/menu.tpl'~


            <main class="main toggle">

                <div class="main-header tabs">
                    <div class="main-header__heading tab active">
                        Я ЗАКАЗЧИК
                    </div>
                    <div class="main-header__updates tab">
                        Я ИСПОЛНИТЕЛЬ
                    </div>
                    <div class="line"></div>
                </div>

                <div class="panels">
                  <div class="panel">

                    <ul class="tasks">

                      <li onclick="javascript: document.location.href = '/my_tasks/?section=open_tasks';">
                        
                        <div class="body">
                          <div class="task__icon icon_green"></div>
                          <div class="name">
                            <div>Создано</div>
                            <div>
                                Заданий - ~~$counts.tasks.v~
                            </div>
                          </div>
                          <div class="arrowCat"></div>
                        </div>
                      </li>

                      ~~if $counts.ready.v !=0 ~
                      <li onclick="javascript: document.location.href = '/my_tasks/?section=completed_tasks';">
                        
                        <div class="body">
                          <div class="task__icon icon_green"></div>
                          <div class="name">
                            <div>Выполнено</div>
                            <div>
                                Заданий - ~~$counts.ready.v~
                            </div>
                          </div>
                          <div class="arrowCat"></div>
                        </div>
                      </li>
                      ~~/if~

                    </ul>
                </div>

                <div class="panel">
                  <ul class="tasks">

                    <li onclick="javascript: document.location.href = '#';">
                      <div class="task__title">Вас выбрали в ~~$counts.approved_contractor.v~ заданиях</div>
                      ~~if $counts.approved_contractor.v !=0 ~
                      <div class="body">
                        <div class="task__icon icon_red"></div>
                        <div class="name">
                          <div>Выполнены</div>
                          <div class="status">~~$counts.approved_contractor.v~ заданий</div>
                        </div>
                        <div class="arrowCat"></div>
                      </div>
                      ~~/if~
                    </li>

                    <li onclick="javascript: document.location.href = '#';">
                      <div class="task__title">~~$counts.decline.v~ заданий отменено или выбран другой исполнитель</div>
                      ~~if $counts.decline.v !=0 ~
                      <div class="body">
                        <div class="task__icon icon_grey"></div>
                        <div class="name">
                          <div>В архиве</div>
                          <div class="status">~~$counts.decline.v~ заданий</div>
                        </div>
                        <div class="arrowCat"></div>
                      </div>
                      ~~/if~
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
