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

.main-overview  .grid {
	padding: 0px 30px;
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
            	margin-top:50px;
              	display: grid;
              	grid-template-columns: 1fr;
              	grid-template-rows: 1fr 1fr;
              	//grid-column-gap: 20px;
              	grid-row-gap: 20px;
              	
 				justify-self: center;
            }

			.grid div {
				/**/
				background-color: #fff;
				border: 1px solid #212941;
				border-radius: 5px;
				padding: 8px 15px;
				color: #ffffff;

				font-family: roboto;
				
				 
				
			}
			.grid div input{
				/*
				background-color: #28314E;*/
				border-width: 0px;
				width:100%;
			
				font-family: 'Roboto', sans-serif;
				font-size: 1.1em;
				
				text-decoration: none;
				
			}

			.grid div input :active, :hover, :focus {
			    /**/
			    outline: 0;
			    outline-offset: 0;
			    
			}

			.enter_link {
				/*
				width:100%;
				text-align: center;
				margin:20px 0px;*/
			}
			.enter_link a {
				/**/
				
				text-decoration: none;
				font-size: 1.5em;
			}

			.submit_btn {
				/**/
				margin-top:50px;
				background-color: #394263 !important;
				border: 0px !important;
			}
			.submit_btn input{
				color: #fff;
				background-color: #394263 !important;
			}

</style> 
            <main class="main">



                <div class="main-overview">
					<form method="POST" action="/create_task/">
		            	<div class="grid">

		            		<div><input type="text" name="title1" value="" placeholder="Заголовок" autocomplete="off"></div>
		            		<div><input type="text" name="title2" value="" placeholder="Описание задания" autocomplete="off"></div>
		            		<div><input type="text" name="title3" value="" placeholder="Адрес" autocomplete="off"></div>
		            		<div><input type="text" name="title4" value="" placeholder="Дата начала" autocomplete="off"></div>
		            		<div><input type="text" name="title5" value="" placeholder="Дата завершения" autocomplete="off"></div>
		            		<div><input type="text" name="title6" value="" placeholder="Стоимость" autocomplete="off"></div>
		            		<div class="submit_btn" ><input type="submit" name="btn"value="Создать задание"></div>
	            		
		            	</div>
					</form>
                </div>

              

            </main>


        </div>
    </body>
</html>
