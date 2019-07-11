<!DOCTYPE html>
<html>
    <head>

        <title></title>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,600&display=swap" rel="stylesheet">
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
                <div class="boxAllTasks">
                    <div class="batMenu" onClick="javascript:return init();"><span class="ico menu"></span> <!--p class="radius200"></p--> </div>
                    <div class="batName">Игорь К. <p>43 года, Москва</p></div>
                    <div class="batCategory"><span class="ico share"></span></div>
                    <div class="batMap"><span class="ico options"></span></div>
                </div>
            </header>
            ~~include file='tpl/menu.tpl'~

            <main class="main">

                <div class="boxUserSection">
                    <div class="boxUserCard">
                        <div class="avatarBox">
                            <div class="orderBox"> 1 <p>задание <br/> создано</p> </div>
                            <div class="avatar"><img src="/img/ava.jpg.png" alt=""></div>
                            <div class="orderBox"> 5 <p>заданий <br/> выполнено</p> </div>
                        </div>
                        <div class="greenBox"> <p class="radius200">Станьте проверенным исполнителем</p> </div>
                        <div class="sertBox">
                            <ul>
                                <li><img src="/img/user_ico_1.png" alt=""></li>
                                <li><img src="/img/user_ico_2.png" alt=""></li>
                                <li><img src="/img/user_ico_3.png" alt=""></li>
                            </ul>
                        </div>
                    </div>
                    <div class="doubCircle"></div>
                </div>

                <div class="userCardInfo">
                    <ul class="category">
                        <li>
                            <div class="icoCategoryUser ico_01"></div> <div class="name">На счете 1 037 &#8381;</div> <div class="arrowCat"></div>
                        </li>
                        <li>
                            <div class="icoCategoryUser ico_02"></div> <div class="name">Безлимитные предложения</div> <div class="arrowCat"></div>
                        </li>
                        <li>
                            <div class="icoCategoryUser ico_03"></div> <span class="pointer radius200"></span> <div class="name double">О себе и примеры работ <p>Не хватает информации о вашем опыте</p></div> <div class="arrowCat"></div>
                        </li>
                        <li>
                            <div class="icoCategoryUser ico_04"></div> <div class="name">Подписка на задания</div> <div class="arrowCat"></div>
                        </li>
                        <li>
                            <div class="icoCategoryUser ico_05"></div> <div class="name">Шаблоны предложений</div> <div class="arrowCat"></div>
                        </li>
                    </ul>

                    <div class="aboutMe">
                        <div class="boxInfo">
                            <div class="capt"><span>О себе</span><span class="icoCategoryUser ico_06"></span> </div>
                            <p>YouDo с августа 2017 г.</p>
                            <p>Номер пользователя: 3547383</p>
                        </div>

                        <div class="boxNumber">
                            <div class="capt"><span>Средняя оценка - </span><span class="number">5,0</span> </div>
                            <ul>
                                <li><span class="title">Качество</span> <span class="star_05"></span></li>
                                <li><span class="title">Вежливость</span> <span class="star_04"></span></li>
                                <li><span class="title">Стоимость услуг</span> <span class="star_03"></span></li>
                            </ul>
                        </div>

                        <div class="boxReviews">
                            <div class="capt"><span>Отзывы </span><span class="likeReview">5</span> <span class="dislikeReview">0</span> </div>
                            <div class="text">
                                &laquo;Все очень грамотно и оперативно, без лишних звонков и вопросов! Презентабельный внешний вид и отличный подход к работе! Только положительный отзыв! &raquo;
                                <p>- Юлия Г.</p>
                            </div>
                            <div class="more radius200">Смотреть все отзывы</div>
                        </div>

                        <div class="boxWork">
                            <div class="capt">Выполняемые работы</div>
                            <ul>
                                <li>
                                    Курьерские услуги
                                    <p>Выполнено 4 задания</p>
                                </li>
                                <li>
                                    Web-разработка
                                    <p>Выполнено 1 задание</p>
                                </li>
                            </ul>
                        </div>

                        <div class="boxCheck">
                            <div class="capt">Подтверждены</div>
                            <ul>
                                <li>
                                    <span class="icoCategoryUser ico_09"></span><span class="text">Телефон</span>
                                </li>
                                <li>
                                    <span class="icoCategoryUser ico_10"></span><span class="text">Электронная почта</span>
                                </li>
                                <li>
                                    <span class="icoCategoryUser ico_11"></span><span>ВКонтакте <p>7 друзей</p></span>
                                </li>
                            </ul>
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
