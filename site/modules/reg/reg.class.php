<?php include_once('site/modules/aModule.class.php');
class reg extends aModule{
    function execute($arr)
    {           
		$in = $arr["send_params"];
		
		if (	
				   isset($_REQUEST['verification']) 
				&& $_REQUEST['verification'] == 1 
			) 
		{
			if($in['ver_code'] == $_SESSION['ver_code'])
			{
				header('Location: /login/');
				exit();
			}
			else 
			{
				$_SESSION['smarty']->assign('error', "код не верный");
				$_SESSION['smarty']->display('reg/ver.tpl');  
				exit();
			}
		}


		if (	
				   isset($_REQUEST['registration']) 
				&& $_REQUEST['registration'] == 1 
			) 
		{

			/*$res = rows("SELECT * FROM users WHERE login LIKE '".filter_num_characters($_REQUEST['phone'])."'");
			if (array_key_exists(0, $res))
			{
				$_SESSION['smarty']->assign('error', "Пользователь с таким номером телефона уже существует");
				$_SESSION['smarty']->display('reg/reg.tpl');   
				exit();
			}*/
			
			q("INSERT INTO users(login, name, password, phone) 
				VALUES (
				'".filter_num_characters($_REQUEST['phone'])."', 
				'".noSQL($_REQUEST['name'])."', 
				'".noSQL(MD5($_REQUEST['password']))."',
				'".noSQL($_REQUEST['phone'])."'
			)");
			
			require_once '/site/libs/sms.ru.php';
			
			$phone = $_REQUEST["phone"];
			
			$smsru = new SMSRU('C1C780D2-EC04-5DAE-D6B6-938A17E5CAE0'); // Ваш уникальный программный ключ, который можно получить на главной странице
			
			$data = new stdClass();
			$data->to = $phone;

			$ver_code = rand(1111, 9999);
			$_SESSION['ver_code'] = $ver_code;

			$data->text = $ver_code; // Текст сообщения

			$sms = $smsru->send_one($data); // Отправка сообщения и возврат данных в переменную

			if ($sms->status == "OK") { // Запрос выполнен успешно
				//echo "Сообщение отправлено успешно. ";
				//echo "ID сообщения: $sms->sms_id. ";
				//echo "Ваш новый баланс: $sms->balance";

				$_SESSION['smarty']->display('reg/ver.tpl');
				exit();	
			} 
			else {
				//echo "Сообщение не отправлено. ";
				//echo "Код ошибки: $sms->status_code. ";
				//echo "Текст ошибки: $sms->status_text.";
				$_SESSION['smarty']->assign('error', "Ошибка отправки кода верификации");
				$_SESSION['smarty']->display('reg/reg.tpl');   
				exit();
			}

		}


		$_SESSION['smarty']->display('reg/reg.tpl');          
    }
}
?>