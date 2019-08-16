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

    </head>

    <body class="" onload="javascript:return show_user('~~$user_name~');">

        <div class="grid-container">

            <header class="header">
                <div class="boxAllTasks billUser">
                    <div class="batMenu" onclick="javascript: document.location.href = '/my_tasks/';"><span class="ico arrowLeft"></span>  </div>
                    <div class="batText">~~$title~</div>
                    <div class="batCategory"><!--span class="icoSvg icoSvgHelp"></span--></div>
                </div>
            </header>

            ~~include file='tpl/menu.tpl'~

            <main class="main toggle">

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
