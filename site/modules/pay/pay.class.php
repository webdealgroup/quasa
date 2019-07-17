<?php include_once('site/modules/aModule.class.php');
class pay extends aModule{

    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];


        $money = rows("SELECT money as v FROM users WHERE id=" . $_SESSION['user']['id']);

        $_SESSION['smarty']->assign('money', ceil($money[0]['v'])); // округление в большую сторону, floor() - в меньшую

        $_SESSION['smarty']->display('pay/pay.tpl');

    }
}
?>