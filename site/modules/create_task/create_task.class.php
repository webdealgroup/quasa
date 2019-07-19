<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
      if (isset($_REQUEST['scSendBtn'])) {
//echo '<pre>';
//print_r ($_REQUEST);
//echo '</pre>';
$cUser = $_SESSION['user']['id'];
$cTitle = $_REQUEST['title'];
$cDescription = $_REQUEST['description'];
$cCost = $_REQUEST['cost'];
$cTimeStart = $_REQUEST['time_start'];
$cTimeEnd   = $_REQUEST['time_end'];
      echo '<pre>';
//      print_r ($cUser . ' / ' . $cTitle . ' / ' . $cDescription . ' / ' . $cCost . ' / ' .$cTimeStart . ' / ' . $cTimeEnd);
      echo '</pre>';
$cQueue = "insert into tasks (id_client, title, description, cost, time_start, time_end) "
        . "values ({$cUser}, '{$cTitle}', '{$cDescription}', {$cCost}, '2019.07.19 11:22:33', '2019.07.19 11:22:33')";
q($cQueue);
      }

    $cat_id = isset($_REQUEST['cat_id']) ? $_REQUEST['cat_id'] : 0;
    if ($cat_id > 2) {
      $cat_parent = row('SELECT id_parent FROM cat WHERE id = ' . $cat_id);
      $cat_name = row('SELECT name FROM cat WHERE id='.$cat_id);
      $cat_id = $cat_parent['id_parent'];
//echo '<pre>';
//print_r ($cat_name);
//echo '</pre>';
    }

    $cat_items = rows('SELECT * FROM cat WHERE id_parent = ' . $cat_id);

    $create_task = isset($_REQUEST['create_task']) ? $_REQUEST['create_task'] : 0;

      $dTimeStart = getdate();
      $cTimeStart = $dTimeStart['mday'] . '.' . $dTimeStart['mon'] . '.' . $dTimeStart['year']
                  . ' ' . $dTimeStart['hours'] . ':' . $dTimeStart['minutes'] . ':' . $dTimeStart['seconds'];
//echo '<pre>';
//print_r ($cTimeStart);
//echo '</pre>';


      if ($create_task > 0) {
      $_SESSION['smarty']->assign('cat_id', $cat_id);
      $_SESSION['smarty']->assign('cat_name', $cat_name['name']);
      $_SESSION['smarty']->assign('time_start', $cTimeStart);
      $_SESSION['smarty']->display('create_task/create_task.tpl');
    } else {
      $_SESSION['smarty']->assign('cat_items', $cat_items);
      if ($cat_id > 0) {
        $_SESSION['smarty']->assign('cat_id', $cat_id);
        $_SESSION['smarty']->display('create_task/sub_catalog.tpl');
      } else {
        $_SESSION['smarty']->assign('cat_id', $cat_id);
        $_SESSION['smarty']->display('create_task/show_catalog.tpl');
      }
    }
        
    }
}
?>