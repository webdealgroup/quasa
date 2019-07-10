<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		
		$tasks = rows('SELECT * FROM cat WHERE id_parent = 0');
	    $_SESSION['smarty']->assign('cat_items', $cat_items); 
		$_SESSION['smarty']->display('create_task/show_catalog.tpl');
        
    }
}
?>