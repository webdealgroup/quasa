<?php include_once('site/modules/aModule.class.php');
class res extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

		$res = rows("SELECT * FROM users WHERE login LIKE '".$in['login']."' AND password LIKE '".$in['password']."' ");
		//echo "<pre>"; print_r($res); echo "</pre>"; //die(); 

		if (count($res) == 0)
		{
			$_SESSION['smarty']->display('res/res.tpl');
		}
		else
		{
			$_SESSION['user'] = $res[0];
			header('Location: /');
		}
        
    }
}
?>