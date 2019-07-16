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
      $birthday = rows("SELECT birthday as v FROM users WHERE id=" . $_SESSION['user']['id']);
      $city = rows("SELECT city as v FROM users WHERE id=" . $_SESSION['user']['id']);
      $rating = rows("SELECT rating as v FROM users WHERE id=" . $_SESSION['user']['id']);
      $money = rows("SELECT money as v FROM users WHERE id=" . $_SESSION['user']['id']);

      $iRating = $rating[0]['v'] * 10;
      if ($iRating < 1) {  $iRating = 0;  }
      if ($iRating > 9) {  $iRating = 9;  }

      $dSrc = new DateTime($birthday[0]['v']); // дата рождения
      $cDst = $dSrc->diff(new DateTime)->format('%y');
      if ($cDst < 13) {
        $cDst = $city[0]['v'];
      } else {
        $cDst = $cDst . ' года, ' . $city[0]['v'];
      }

      $tasks_no = rows("SELECT count(id_client) as v FROM tasks WHERE id_client=" . $_SESSION['user']['id']);
      $tasks_done = rows("SELECT count(1) as v FROM tasks WHERE completed > 0 and id_contractor=" . $_SESSION['user']['id']);

      $create_time = rows("SELECT create_time as v FROM users WHERE id=" . $_SESSION['user']['id']);

      $_SESSION['smarty']->assign('task_no', $tasks_no[0]['v']);
      $_SESSION['smarty']->assign('task_done', $tasks_done[0]['v']);

      $_SESSION['smarty']->assign('birthday', $cDst);
      $_SESSION['smarty']->assign('rating', $iRating);
      $_SESSION['smarty']->assign('money', ceil($money[0]['v'])); // округление в большую сторону, floor() - в меньшую
      $_SESSION['smarty']->assign('userid', $_SESSION['user']['id']);
      $_SESSION['smarty']->assign('create_time', $create_time[0]['v']);

	  	$_SESSION['smarty']->display('user_card/user_card.tpl');
        
    }
}
?>