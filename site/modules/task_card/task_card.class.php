<?php include_once('site/modules/aModule.class.php');
class task_card extends aModule{
  function execute($arr)
    {           
      //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
  		$in = $arr["send_params"];
      if (isset($_REQUEST['scSendBtn'])) {
        $cQueue = "UPDATE tasks SET cost=cost-50 WHERE id=" . $in['id'];
        q($cQueue);
      }
  		$task = row('SELECT * FROM tasks WHERE id ='.$in['id']);
      $_SESSION['smarty']->assign('task', $task);
      $_SESSION['smarty']->assign('in', $in);
	  	$_SESSION['smarty']->display('task_card/task_card.tpl');
  }
}
?>