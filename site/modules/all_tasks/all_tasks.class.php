<?php include_once('site/modules/aModule.class.php');
class all_tasks extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

		$tasks = rows('SELECT * FROM tasks ORDER BY created_at DESC');
	  $_SESSION['smarty']->assign('tasks', $tasks);

	  $_SESSION['smarty']->assign('user_name', $_SESSION['user']['login']);
		$_SESSION['smarty']->display('all_tasks/all_tasks.tpl');
        
    }
}
?>