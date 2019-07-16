<?php include_once('site/modules/aModule.class.php');
class user_card extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$_SESSION['smarty']->assign('user', $_SESSION['user']);

		$tasks = rows('SELECT * FROM tasks');
	    $_SESSION['smarty']->assign('tasks', $tasks);

//      echo "<pre>";
      $j = 0;
      for ($i=0; $i<count($_SESSION['smarty']->_tpl_vars['tasks']); $i++) {
        if ($_SESSION['smarty']->_tpl_vars['user']['id'] == $_SESSION['smarty']->_tpl_vars['tasks'][$i]['id_client']) { $j++; }
      }
//      echo $j . '<br/>'; количество заданий клиента
//      print_r ($_SESSION['smarty']->_tpl_vars);
//      print_r ($_SESSION['smarty']->_tpl_vars->tasks);
//      echo "</pre>";
      $_SESSION['smarty']->assign('task_no', $j);

		$_SESSION['smarty']->display('user_card/user_card.tpl');
        
    }
}
?>