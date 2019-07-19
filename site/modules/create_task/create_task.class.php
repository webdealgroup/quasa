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
$cDesc = $_REQUEST['name'];
// insert into tasks (id_client, title, description) values (3, 'Тест', 'cDesc')
// insert into tasks (id, id_client, id_contractor, title, description, address, cost, time_start, time_end, completed)
$cQueue = "insert into tasks (id_client, title, description) '
        . 'values ({$cUser}, 'Тест', '{$cDesc}')";
//q($cQueue);
      }

    $cat_id = isset($_REQUEST['cat_id']) ? $_REQUEST['cat_id'] : 0;
    if ($cat_id > 2) {
      $cat_parent = row('SELECT id_parent FROM cat WHERE id = ' . $cat_id);
      $cat_id = $cat_parent['id_parent'];
//echo '<pre>id_parent=';
//print_r ($cat_id);
//echo '</pre>';
    }
//      echo '<pre>cat_id=';
//      print_r ($cat_id);
//      echo '</pre>';

    $cat_items = rows('SELECT * FROM cat WHERE id_parent = ' . $cat_id);

    $create_task = isset($_REQUEST['create_task']) ? $_REQUEST['create_task'] : 0;

//echo '<pre>';
//print_r ($_REQUEST);
//echo '</pre>';

    if ($create_task > 0) {
      $_SESSION['smarty']->assign('cat_id', $cat_id);
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