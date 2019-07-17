<?php include_once('site/modules/aModule.class.php');
class pay extends aModule{

    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];



	  	  $_SESSION['smarty']->display('pay/pay.tpl');
        
    }
}
?>