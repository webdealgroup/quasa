<?php include_once('site/modules/aModule.class.php');
class reg extends aModule{
    function execute($arr)
    {           
		$_SESSION['smarty']->display('reg/reg.tpl');          
		$in = $arr["send_params"];
		if (isset($_REQUEST['scSendBtn'])) {
			$cPhone = $_REQUEST['phonenum'];
			$cUser = $_REQUEST['fio'];
			$cPassword = $_REQUEST['password'];
			$cQueue = "insert into users(login, name, password) "
			. "values ('{$cPhone}', '{$cUser}', '{$cPassword}')";
			q($cQueue);
			
			require_once 'sms.ru.php';
			
			$phone = $_REQUEST["phonenum"];
			
			$smsru = new SMSRU('C1C780D2-EC04-5DAE-D6B6-938A17E5CAE0'); // Ваш уникальный программный ключ, который можно получить на главной странице
			
			$data = new stdClass();
			$data->to = $phone;
			$data->text = 'Ваш проверочный код: 1574'; // Текст сообщения
			// $data->from = ''; // Если у вас уже одобрен буквенный отправитель, его можно указать здесь, в противном случае будет использоваться ваш отправитель по умолчанию
			// $data->time = time() + 7*60*60; // Отложить отправку на 7 часов
			// $data->translit = 1; // Перевести все русские символы в латиницу (позволяет сэкономить на длине СМС)
			// $data->test = 1; // Позволяет выполнить запрос в тестовом режиме без реальной отправки сообщения
			// $data->partner_id = '1'; // Можно указать ваш ID партнера, если вы интегрируете код в чужую систему
			$sms = $smsru->send_one($data); // Отправка сообщения и возврат данных в переменную

			if ($sms->status == "OK") { // Запрос выполнен успешно
				echo "Сообщение отправлено успешно. ";
				echo "ID сообщения: $sms->sms_id. ";
				echo "Ваш новый баланс: $sms->balance";
			} 
			else {
				echo "Сообщение не отправлено. ";
				echo "Код ошибки: $sms->status_code. ";
				echo "Текст ошибки: $sms->status_text.";
			}
			header('Location: /ver');
		}
    }
}
?>