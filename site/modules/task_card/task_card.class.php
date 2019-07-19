<?php include_once('site/modules/aModule.class.php');
class task_card extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

		$tasks = row('SELECT * FROM tasks WHERE id ='.$in['id']);

//echo '<pre>';
//print_r ($tasks);
//echo '</pre>';

/*
[id] => 25
    [id_client] => 3
    [id_contractor] =>
    [title] => наименование
    [description] => содержание
    [address] =>
    [cost] => 1234.50
    [time_start] => 2019-07-19 11:22:33
    [time_end] => 2019-07-19 11:22:33
    [approved] => 0
    [completed] => 0
    [in_archive] => 0
*/

$cId          = $tasks['id'];
$cTitle       = $tasks['title'];
$cDescription = $tasks['description'];
$cCost        = $tasks['cost'];
$cTimeStart   = $tasks['time_start'];
$cTimeEnd     = $tasks['time_end'];

      if (isset($_REQUEST['scSendBtn'])) {
        $cQueue = "UPDATE tasks SET cost=cost-50 WHERE id=" . $cId;
        q($cQueue);
      }

//echo '<pre>';
//print_r ($cTitle . '/'. $cDescription . '/'. $cCost);
//echo '</pre>';

      $_SESSION['smarty']->assign('task_id', $cId);
      $_SESSION['smarty']->assign('title', $cTitle);
      $_SESSION['smarty']->assign('description', $cDescription);
      $_SESSION['smarty']->assign('cost', $cCost);
      $_SESSION['smarty']->assign('time_start', $cTimeStart);
      $_SESSION['smarty']->assign('time_end', $cTimeEnd);

      $_SESSION['smarty']->assign('tasks', $tasks);

	  	$_SESSION['smarty']->display('task_card/task_card.tpl');
        
    }
}
?>