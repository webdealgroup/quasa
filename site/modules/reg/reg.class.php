<?php include_once('site/modules/aModule.class.php');
class reg extends aModule{
    function execute($arr)
    {           
		$in = $arr["send_params"];
		if ($_REQUEST['password']  != $_REQUEST['pass_conf'])
		{
  			$_SESSION['smarty']->assign('error', 'Пароли не совпадают');
  			$_SESSION['smarty']->display('reg/reg.tpl');
		}
		if (	
				   isset($_REQUEST['registration']) 
				&& $_REQUEST['registration'] == 1 
			) 
		{
			
			q("INSERT INTO users(login, name, password) 
				VALUES (
				'".filter_num_characters($_REQUEST['phonenum'])."', 
				'".noSQL($_REQUEST['fio'])."', 
				'".noSQL($_REQUEST['password'])."'
			)");
			
			require_once '/site/libs/sms.ru.php';
			
			$phone = $_REQUEST["phonenum"];
			
			$smsru = new SMSRU('C1C780D2-EC04-5DAE-D6B6-938A17E5CAE0'); // Ваш уникальный программный ключ, который можно получить на главной странице
			
			$data = new stdClass();
			$data->to = $phone;

			$data->text = 'Ваш проверочный код: 1574'; // Текст сообщения

			$sms = $smsru->send_one($data); // Отправка сообщения и возврат данных в переменную

			if ($sms->status == "OK") { // Запрос выполнен успешно
				//echo "Сообщение отправлено успешно. ";
				//echo "ID сообщения: $sms->sms_id. ";
				//echo "Ваш новый баланс: $sms->balance";
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