<?php include_once('site/modules/aModule.class.php');
class user_card extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$_SESSION['smarty']->assign('user', $_SESSION['user']);

		$tasks = rows('SELECT * FROM tasks');
	    $_SESSION['smarty']->assign('tasks', $tasks); 
		$_SESSION['smarty']->display('user_card/user_card.tpl');
        
    }
}
?>