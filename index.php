<?php

    session_start();
    require_once('site/libs/mysql.php'); // порядок подключения обязателен


    require_once('site/libs/smarty/Smarty.class.php');
    include_once('site/modules/aModule.class.php');

	function getRequest()
    {
        $params = array_merge($_GET, $_POST);
        reset($params);
        while(list($key,$value) = each($params)){
            if (gettype($params[$key]) != "array"){
                if (get_magic_quotes_gpc()){
                    $value = stripslashes(trim($value));
                }
                $params[$key] = $value;
            }
        } 
        return $params; 
    }



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
			//echo "<pre style='display:none;'>"; print_r($page); echo "</pre>"; //die();



			switch ($page) {

				case 'login':			print ($_SESSION['smarty']->fetch('mod:login'));			exit();		break;
				case 'create_task':		print ($_SESSION['smarty']->fetch('mod:create_task'));		exit();		break;
				case 'all_tasks':		print ($_SESSION['smarty']->fetch('mod:all_tasks'));		exit();		break;
				case 'my_tasks':		print ($_SESSION['smarty']->fetch('mod:my_tasks'));			exit();		break;
				case 'task_card':		print ($_SESSION['smarty']->fetch('mod:task_card'));		exit();		break; 
				case 'user_card':		print ($_SESSION['smarty']->fetch('mod:user_card'));		exit();		break; 
				case 'messages':		print ($_SESSION['smarty']->fetch('mod:messages'));			exit();		break;
        		case 'profile_edit':	print ($_SESSION['smarty']->fetch('mod:profile_edit'));		exit();		break;


        default:		print ($_SESSION['smarty']->fetch('mod:login'));	exit();		break;
			}
		}
	}

    $rout = new router();
    $rout->execute(getRequest()); 
?>