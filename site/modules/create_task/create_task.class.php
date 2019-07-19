<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$tasks = rows('SELECT * FROM tasks');
	    $_SESSION['smarty']->assign('tasks', $tasks); 
		$_SESSION['smarty']->display('create_task/show_catalog.tpl');
        
    }
}
?>