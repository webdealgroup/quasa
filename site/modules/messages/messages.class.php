<?php include_once('site/modules/aModule.class.php');
class messages extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$messages = rows('SELECT * FROM messages WHERE id_client ='.$_SESSION['user']['id']);
		$types = rows('SELECT * FROM message_types');

	  	$_SESSION['smarty']->assign('tasks', $tasks);
		$_SESSION['smarty']->display('messages/messages.tpl');
        
    }
}
?>