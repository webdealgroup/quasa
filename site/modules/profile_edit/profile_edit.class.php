<?php include_once('site/modules/aModule.class.php');
class profile_edit extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$_SESSION['smarty']->assign('user', $_SESSION['user']);

		$tasks = rows('SELECT * FROM tasks');
	    $_SESSION['smarty']->assign('tasks', $tasks); 
		$_SESSION['smarty']->display('profile_edit/profile_edit.tpl');
        
    }
}
?>