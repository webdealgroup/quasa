<?php include_once('site/modules/aModule.class.php');
class pay extends aModule{

    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];


        $pays = rows("SELECT * FROM pay WHERE id>0");

//      echo '<pre>pay=';
//      print_r ($pays);
//      echo '</pre>';

        $_SESSION['smarty']->assign('pays', $pays);
        $_SESSION['smarty']->display('pay/pay.tpl');

    }
}
?>