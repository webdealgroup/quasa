<?php include_once('site/modules/aModule.class.php');
class user_card extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$_SESSION['smarty']->assign('user', $_SESSION['user']);

		$tasks = rows('SELECT * FROM tasks');
    $_SESSION['smarty']->assign('tasks', $tasks);

      $j = 0;
      $tasks_no = rows("SELECT count(id_client) as v FROM tasks WHERE id_client=" . $_SESSION['smarty']->_tpl_vars['user']['id']);
//      for ($i=0; $i<count($_SESSION['smarty']->_tpl_vars['tasks']); $i++) {
//        if ($_SESSION['smarty']->_tpl_vars['user']['id'] == $_SESSION['smarty']->_tpl_vars['tasks'][$i]['id_client']) { $j++; }
//      }
//echo '<pre>';
//print_r ($tasks_no);
//echo $tasks_no[0]['v'] . '<br/>';
//echo '</pre>';

      $_SESSION['smarty']->assign('task_no', $tasks_no[0]['v']);

	  	$_SESSION['smarty']->display('user_card/user_card.tpl');
        
    }
}
?>