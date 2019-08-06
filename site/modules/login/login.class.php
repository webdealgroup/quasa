<?php include_once('site/modules/aModule.class.php');
class login extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

		if (	
				   isset($_REQUEST['recovery_pass']) 
				&& $_REQUEST['recovery_pass'] == 1 
			) 
		{
			
			$recovery_code = rand(11111, 99999);

			require_once '/site/libs/sms.ru.php';
			
			$phone = $_REQUEST["phone"];
			$smsru = new SMSRU('C1C780D2-EC04-5DAE-D6B6-938A17E5CAE0'); // Ваш уникальный программный ключ, который можно получить на главной странице
			
			$data = new stdClass();
			$data->to = $phone;


			q('UPDATE users SET password = "'.MD5($recovery_code).'" WHERE login LIKE "'.filter_num_characters($in['phone']).'" ');


			$data->text = $recovery_code; // Текст сообщения

			$sms = $smsru->send_one($data); // Отправка сообщения и возврат данных в переменную

			if ($sms->status == "OK") { // Запрос выполнен успешно
				//echo "Сообщение отправлено успешно. ";
				//echo "ID сообщения: $sms->sms_id. ";
				//echo "Ваш новый баланс: $sms->balance";
				$_SESSION['smarty']->assign('phone', $in['phone']);
				$_SESSION['smarty']->display('login/login.tpl');
				exit();	
			} 
			else {
				//echo "Сообщение не отправлено. ";
				//echo "Код ошибки: $sms->status_code. ";
				//echo "Текст ошибки: $sms->status_text.";
				$_SESSION['smarty']->assign('error', "Ошибка отправки кода верификации");
				$_SESSION['smarty']->display('login/recovery.tpl');   
				exit();
			}


		}	


		if (	
				   isset($_REQUEST['recovery']) 
				&& $_REQUEST['recovery'] == 1 
			) 
		{

			$_SESSION['smarty']->display('login/recovery.tpl');
			exit();

		}


		$login = filter_num_characters(noSQL($in['login']));
		$password = noSQL($in['password']);

		$res = rows("SELECT * FROM users WHERE login LIKE '".$login."' AND password LIKE '".MD5($in['password'])."' ");
		//echo "<pre>"; print_r($res); echo "</pre>"; //die(); 

		if (count($res) == 0)
		{
			$_SESSION['smarty']->display('login/login.tpl');
			exit();
		}
		else
		{
			$_SESSION['user'] = $res[0];
			header('Location: /all_tasks/');
			exit();
		}
        
    }
}
?> 