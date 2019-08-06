<?php include_once('site/modules/aModule.class.php');
class reg extends aModule{
    function execute($arr)
    {           
		$in = $arr["send_params"];

		if (	
				   isset($_REQUEST['registration']) 
				&& $_REQUEST['registration'] == 1 
			) 
		{
			
			q("INSERT INTO users(login, name, password) 
				VALUES (
				'".filter_num_characters($_REQUEST['phone'])."', 
				'".noSQL($_REQUEST['name'])."', 
				'".noSQL(MD5($_REQUEST['password']))."'
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

				header('Location: /login/');	
			} 
			else {
				//echo "Сообщение не отправлено. ";
				//echo "Код ошибки: $sms->status_code. ";
				//echo "Текст ошибки: $sms->status_text.";
			}
			header('Location: /ver/');
		}


		$_SESSION['smarty']->display('reg/reg.tpl');          
    }
}
?>