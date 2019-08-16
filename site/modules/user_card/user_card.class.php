<?php include_once('site/modules/aModule.class.php');
class user_card extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];

        $_SESSION['smarty']->assign('user', $_SESSION['user']);
        //echo "<pre>"; print_r($_SESSION['user']); echo "</pre>";

        if (isset($_REQUEST['bill'])) {

          $_SESSION['smarty']->display('user_card/bill_user.tpl');
          exit();
        }

        $user = row("SELECT * FROM users WHERE id=" . $_SESSION['user']['id']);
        //echo "<pre>"; print_r($user); echo "</pre>";


        $birthday = new DateTime($user['birthday']); // дата рождения
        $age = $birthday->diff(new DateTime)->format('%y'); // возраст

        $today = now();
        if($age == $today['year'] || $age == 0) 
        {
            $user['age'] = "";
        }
        else
        {
            $user['age'] = $age." ".OOPSSpell($age,' ',array('год','года','лет'));
        }

        $user['t1'] = row("SELECT count(id) as v FROM tasks WHERE id_client=" . $_SESSION['user']['id']);
        $user['t2'] = row("SELECT count(id) as v FROM tasks WHERE completed > 0 and id_contractor=" . $_SESSION['user']['id']);

        $_SESSION['smarty']->assign('now', $now);
        $_SESSION['smarty']->assign('user', $user);
  	  	$_SESSION['smarty']->display('user_card/user_card.tpl');
        
    }
}
?>