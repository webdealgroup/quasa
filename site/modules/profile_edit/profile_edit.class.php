<?php include_once('site/modules/aModule.class.php');
class profile_edit extends aModule{
    function execute($arr)
    {

/*
 [id] => 2
    [login] => Igor
    [password] => 123
    [name] => Василий
    [surname] => ПЕтров
    [city] => Владивосток
    [birthday] => 0000-00-00
    [phone] => +8 (333) 444-55-66
    [create_time] => 2019-07-01 09:00:00
    [rating] => 0.9
    [money] => 34567.0
    [gender] => 1
    [email] => test@rambler.ru
)* */
      if (isset($_REQUEST['scSendBtn'])) {
        $cName = $_REQUEST['name'];
        $cSurname = $_REQUEST['last_name'];
        if ($_REQUEST['gender'] == 'genMen') {
          $cGender = 0;
        } else {
          $cGender = 1;
        }
        $cCity = $_REQUEST['city'];
        $cBirthday = $_REQUEST['date_Birt'];
        $cEmail = $_REQUEST['email'];
        $cPhone = $_REQUEST['phone'];
        $cQueue = "UPDATE users SET name='{$cName}', surname='{$cSurname}', gender={$cGender}, city='{$cCity}',"
                . " birthday='{$cBirthday}', email='{$cEmail}', phone='{$cPhone}' WHERE id=" . $_SESSION['user']['id'];
        q($cQueue);

        $_SESSION['user'][login]    = 'Igor';
        $_SESSION['user'][password] = '123';
        $_SESSION['user'][name]     = $cName;
        $_SESSION['user'][surname]  = $cSurname;
        $_SESSION['user'][city]     = $cCity;
        $_SESSION['user'][birthday] = $cBirthday;
        $_SESSION['user'][phone]    = $cPhone;
        $_SESSION['user'][create_time] = '2019-07-01 09:00:00';
        $_SESSION['user'][rating]   = 0.7;
        $_SESSION['user'][money]    = 2345;
        $_SESSION['user'][gender]   = $cGender;
        $_SESSION['user'][email]    = $cEmail;

echo '<pre>';
print_r ($cQueue);
echo '</pre>';
      }
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

      $gender = rows("SELECT gender as v FROM users WHERE id=" . $_SESSION['user']['id']);

      if ($gender[0]['v'] == 0) {
        $genmen = 'class="active"';
        $genbab = '';
      } else {
        $genmen = '';
        $genbab = 'class="active"';
      }

      $city = rows("SELECT city as v FROM users WHERE id=" . $_SESSION['user']['id']);
      $email = rows("SELECT email as v FROM users WHERE id=" . $_SESSION['user']['id']);
      $phone = rows("SELECT phone as v FROM users WHERE id=" . $_SESSION['user']['id']);
      $birthday = rows("SELECT birthday as v FROM users WHERE id=" . $_SESSION['user']['id']);

      $_SESSION['smarty']->assign('user', $_SESSION['user']);
      $_SESSION['smarty']->assign('genmen', $genmen);
      $_SESSION['smarty']->assign('genbab', $genbab);
      $_SESSION['smarty']->assign('city', $city[0]['v']);
      $_SESSION['smarty']->assign('email', $email[0]['v']);
      $_SESSION['smarty']->assign('phone', $phone[0]['v']);
      $_SESSION['smarty']->assign('birthday', $birthday[0]['v']);

echo '<pre>';
print_r ($_REQUEST);
echo '</pre>';

//    $selInf = rows('SELECT count(id_client) FROM tasks WHERE id_client='.$_SESSION['contractor']['id']);

		$_SESSION['smarty']->display('profile_edit/profile_edit.tpl');
        
    }
}
?>