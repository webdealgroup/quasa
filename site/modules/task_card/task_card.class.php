<?php include_once('site/modules/aModule.class.php');
class task_card extends aModule{
  function execute($arr)
  {           
      //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
  		$in = $arr["send_params"];

      if (isset($in['id']) && strlen($in['id'])>0) 
      {

            q("UPDATE tasks 
               SET  views = views+1  
               WHERE tasks.id = ".noSQL($in['id'])."
             ");
            

          $task = row('SELECT * FROM tasks WHERE id ='.$in['id']);

            $result = preg_match('/(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)/',$task['time_start'],$t);
            $month = month_text($t[2]);
            if ($result == 1) $time_start = "{$t[3]} {$month} {$t[1]}, {$t[4]}:{$t[5]}";
            

            $result = preg_match('/(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)/',$task['created_at'],$t);
            $month = month_text($t[2]);
            if ($result == 1) $created_at = "{$t[3]} {$month} {$t[1]}, {$t[4]}:{$t[5]}";

      
          $task['time_start'] = $time_start;
          $task['created_at'] = $created_at;

          $_SESSION['smarty']->assign('task', $task);
          $_SESSION['smarty']->assign('in', $in);
    	  	$_SESSION['smarty']->display('task_card/task_card.tpl');
      }

  }
}
?>