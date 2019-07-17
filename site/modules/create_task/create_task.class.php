<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

		$cat_id = isset($_REQUEST['cat_id']) ? $_REQUEST['cat_id'] : 0;
    $cat_items = rows('SELECT * FROM cat WHERE id_parent = ' . $cat_id);

//echo '<pre>';
//print_r ($_REQUEST);
//echo '</pre>';

    $_SESSION['smarty']->assign('cat_items', $cat_items);

    if ($cat_id > 0) {
      $_SESSION['smarty']->display('create_task/sub_catalog.tpl');
    } else {
      $_SESSION['smarty']->display('create_task/show_catalog.tpl');
    }
        
    }
}
?>