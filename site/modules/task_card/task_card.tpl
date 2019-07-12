<!DOCTYPE html>
<html>
    <head>

        <title></title>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,600,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/css/main.css">
        
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

    <body class="">
        <div class="grid-container">
            <header class="header">
                <div class="boxAllTasks">
                    <div class="batMenu" onClick="javascript:return init();"><span class="ico arrowLeft"></span> <!--p class="radius200"></p--> </div>
                    <div class="batText">Задание № 4573201</div>
                    <div class="batCategory"><span class="ico heart"></span></div>
                    <div class="batMap"><span class="ico more"></span></div>
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
  padding: 20px;
  height: 15px;
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
</style>

            <main class="main">

                <div class="boxTaskCard">
                    <div class="nameTask">
                        <div class="check"><span>Выполнено</span> <span class="ico">67</span></div>
                        <div class="name"> Нужен курьер на машине <p>3 000 &#8381;</p> </div>
                    </div>

                    <div class="toggle">
                        <div class="tabs">
                            <div class="tab active">ДЕТАЛИ</div>
                            <div class="tab">ПРЕДЛОЖЕНИЯ</div>
                            <div class="line"></div>
                        </div>

                        <div class="panels">
                            <div class="panel">
                                <div class="mapGoogle">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d46754.40056263223!2d37.601975890560354!3d55.759437993972426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1562929366358!5m2!1sru!2sua" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                                <div class="description">
                                    <p>Описание</p>
                                    Приехать забрать посылки развезти по одному району
                                </div>
                                <div class="description">
                                    <p>Начать</p>
                                    Понедельник, 17 декабря 2018, 10:00
                                </div>
                                <div class="description">
                                    <ul>
                                        <li><span class="icoCategoryUser ico_12"></span><span class="text">Оплата наличными</span></li>
                                        <li><span class="icoCategoryUser ico_13"></span><span class="text">Исполнитель должен взять паспорт для оформления расписки</span> <span class="icoCategoryUser ico_14"></span></li>
                                    </ul>
                                </div>
                                <div class="description">
                                    <p>Создано 17 декабря 2018, 09:21</p>
                                    <p>Подкатегория &laquo;Услуги курьера на легковом авто&raquo;</p>
                                </div>

                                <div class="boxReviews">
                                    <div class="capt"><span class="icoCategoryUser ico_like"></span> <span class="text">Отзыв исполнителя</span></div>
                                    <div class="ava">
                                        <div class="photo radius200"><img src="/img/ava.jpg.png" alt=""></div>
                                        <div class="name">
                                            <div class="text">Игорь К.</div>
                                            <div class="like"> <span class="likeReview">5</span> <span class="dislikeReview">0</span> </div>
                                        </div>
                                    </div>
                                    <div class="textReviews">
                                        <p>Хороший заказчик удалось заработать больше чем планировал</p>
                                        <ul>
                                            <li><span class="title">Вежливость</span> <span class="star_05"></span></li>
                                            <li><span class="title">Пунктуальность</span> <span class="star_04"></span></li>
                                            <li><span class="title">Адекватность</span> <span class="star_03"></span></li>
                                        </ul>
                                    </div>
                                    <div class="dateReviews">17 декабря 2018</div>
                                </div>

                                <div class="boxReviews">
                                    <div class="capt"><span class="icoCategoryUser ico_like"></span> <span class="text">Отзыв заказчика</span></div>
                                    <div class="ava">
                                        <div class="photo radius200"><img src="/img/no_ava.jpg" alt=""></div>
                                        <div class="name">
                                            <div class="text">Алексей</div>
                                            <div class="like"> <span class="likeReview">396</span> <span class="dislikeReview">0</span> </div>
                                        </div>
                                    </div>
                                    <div class="textReviews">
                                        <p>Все отлично, спасибо</p>
                                        <ul>
                                            <li><span class="title">Качество</span> <span class="star_05"></span></li>
                                            <li><span class="title">Вежливость</span> <span class="star_04"></span></li>
                                            <li><span class="title">Стоимость услуг</span> <span class="star_03"></span></li>
                                        </ul>
                                    </div>
                                    <div class="dateReviews">18 декабря 2018</div>
                                </div>

                                <div class="boxReviews">
                                    <div class="capt"><span class="text">Заказчик</span></div>
                                    <div class="ava">
                                        <div class="photo radius200"><img src="/img/no_ava.jpg" alt=""></div>
                                        <div class="name">
                                            <div class="text">Алексей</div>
                                            <div class="like"> <span class="likeReview">396</span> <span class="dislikeReview">0</span> </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="panel">
                                123
                            </div>
                        </div>

                    </div>
                </div>



                <!--div class="main-overview">

                    ~~foreach from=$tasks item=i~
                    <div class="overviewcard">
                        <div class="overviewcard__icon">
                            avatar
                        </div>
                        <div class="overviewcard__info">

                            <div>~~$i.title~</div>
                            <div>~~$i.address~</div>
                            <div>Начать: ~~$i.time_start~</div> 
                            <div>Закончить: ~~$i.time_start~</div> 
                            <div>~~$i.cost~</div> 
                            
                        </div>
                    </div>
                    ~~/foreach~

                </div-->


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
