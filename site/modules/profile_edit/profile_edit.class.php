<?php include_once('site/modules/aModule.class.php');
class profile_edit extends aModule{
    function execute($arr)
    {

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
                .               " birthday='{$cBirthday}', email='{$cEmail}', phone='{$cPhone}' WHERE id=" . $_SESSION['user']['id'];

echo '<pre>';
print_r ($cQueue);
echo '</pre>';
        q($cQueue);
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