<?php include_once('site/modules/aModule.class.php');
class profile_edit extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

		$_SESSION['smarty']->assign('user', $_SESSION['user']);
//    $_SESSION['smarty']->assign('city', $_SESSION['city']);
//    $selInf = rows('SELECT count(id_client) FROM tasks WHERE id_client='.$_SESSION['contractor']['id']);

		$_SESSION['smarty']->display('profile_edit/profile_edit.tpl');
        
    }
}
?>