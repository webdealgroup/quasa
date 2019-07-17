<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
      if (isset($_REQUEST['scSendBtn'])) {
echo '<pre>';
print_r ($_REQUEST);
echo '</pre>';
      }

    $cat_id = isset($_REQUEST['cat_id']) ? $_REQUEST['cat_id'] : 0;

    $cat_id_back = isset($_REQUEST['cat_id_back']) ? $_REQUEST['cat_id_back'] : '';
    $cat_id_no   = isset($_REQUEST['cat_id_no'])   ? $_REQUEST['cat_id_no'] : 0;

    if ($cat_id_back == 's') {
      $cat_id = $cat_id_no;
    }
    if ($cat_id_back == 'c') {
      $cat_id = 0;
    }

    $cat_items = rows('SELECT * FROM cat WHERE id_parent = ' . $cat_id);

    $create_task = isset($_REQUEST['create_task']) ? 1 : 0;

//echo '<pre>';
//print_r ($_REQUEST);
//echo '</pre>';

    if ((mb_strlen($cat_id_back) == 0) && ($create_task > 0)) {
      $_SESSION['smarty']->assign('cat_id_back', 's');
      $_SESSION['smarty']->assign('cat_id_no', $cat_id);
      $_SESSION['smarty']->display('create_task/create_task.tpl');
    } else {
      $_SESSION['smarty']->assign('cat_items', $cat_items);
      if ($cat_id > 0) {
        $_SESSION['smarty']->assign('cat_id_back', 'c');
        $_SESSION['smarty']->assign('cat_id_no', 0);
        $_SESSION['smarty']->display('create_task/sub_catalog.tpl');
      } else {
        $_SESSION['smarty']->assign('cat_id_back', 'c');
        $_SESSION['smarty']->assign('cat_id_no', 0);
        $_SESSION['smarty']->display('create_task/show_catalog.tpl');
      }
    }
        
    }
}
?>