<?php

    session_start();
    require_once('site/libs/mysql.php'); // порядок подключения обязателен


    require_once('site/libs/smarty/Smarty.class.php');
    include_once('site/libs/functions.php');
    include_once('site/modules/aModule.class.php');


    class router extends aModule{
		function execute($arr)
		{
			
			if (empty($arr['q']))
			{
				$arr['q']='/index';
			} // если пусто, считаем что это index
			@$alias = split("[\/]+", $arr['q']); // разбираем строку
			foreach($alias as $a)	{if($a!='') {$post[] = $a; $aliases[] = $a;}}
			$page = "";
			
			foreach($post as $k=>$v) {if ($k==0) {$page .= $v;}else{$page .= "/".$v;}}

			$dir = $post;                    // $dir[0] - алиас модуля
			$post = array_reverse($post);    // $post[0] - алиас запрашиваемой страницы
			
			$_SESSION['smarty']->assign('page', $page); 
			//echo "<pre >"; print_r($page); echo "</pre>"; //die();


			$mods = array(

				'login',
				'create_task',
				'all_tasks',
				'my_tasks',
				'task_card',
				'user_card',
				'messages',
				'profile_edit',
				'pay',
				'reg',
				'ver',
				'res',
				'sms'
			);

			if (in_array($page, $mods))
			{
				switch ($page) {
					case $page:	   print ($_SESSION['smarty']->fetch('mod:'.$page));	exit();	break;
	        		default:	   print ($_SESSION['smarty']->fetch('mod:login'));		exit();	break;
				}				
			}
			else
			{
				
				if(isset($_SESSION['user']) && $_SESSION['user']['id'] !=0)
				{
					print ($_SESSION['smarty']->fetch('mod:all_tasks')); exit();
				}
				else
				{
					print ($_SESSION['smarty']->fetch('mod:login')); exit();
				}
				
			} 
		}
	}

	if(isset($_REQUEST['logout']))  {unset($_SESSION['user']);}

    $rout = new router();
    $rout->execute(getRequest()); 
?>