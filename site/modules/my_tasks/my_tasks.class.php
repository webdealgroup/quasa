<?php include_once('site/modules/aModule.class.php');
class my_tasks extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$tasks = rows('SELECT count(id) as v FROM tasks WHERE id_client ='.$_SESSION['user']['id']);
    $ready = rows('SELECT count(id) as v FROM tasks WHERE completed=1 and id_client ='.$_SESSION['user']['id']);

//echo '<pre>';
//print_r ($tasks);
//echo '</pre>';

    $count_tasks = $tasks[0]['v'];
    $count_ready = $ready[0]['v'];

	  $_SESSION['smarty']->assign('tasks', $tasks);
    $_SESSION['smarty']->assign('count_tasks', $count_tasks);
    $_SESSION['smarty']->assign('count_ready', $count_ready);
		$_SESSION['smarty']->display('my_tasks/my_tasks.tpl');
        
    }
}
?>