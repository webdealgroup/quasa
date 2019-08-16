<?php include_once('site/modules/aModule.class.php');
class my_tasks extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];

          if (isset($in['section']) && strlen($in['section'])>0) {
            switch ($in['section']) {
              case 'open_tasks':
                $tasks = rows('SELECT * FROM tasks WHERE id_client=' . $_SESSION['user']['id']);
                $_SESSION['smarty']->assign('tasks', $tasks);
                $_SESSION['smarty']->assign('title', "Создано");
                $_SESSION['smarty']->display('my_tasks/list_tasks.tpl');
                exit();
                break;
              case 'completed_tasks':
                $tasks = rows('SELECT * FROM tasks WHERE completed=1 and id_client=' . $_SESSION['user']['id']);
                $_SESSION['smarty']->assign('tasks', $tasks);
                $_SESSION['smarty']->assign('title', "Исполнено");
                $_SESSION['smarty']->display('my_tasks/list_tasks.tpl');
                exit();
                break;
              case 'approved_contractor':
                $tasks = rows('SELECT * FROM tasks WHERE approved=1 AND id_contractor =' . $_SESSION['user']['id']);
                $_SESSION['smarty']->assign('tasks', $tasks);
                $_SESSION['smarty']->assign('title', "Вас выбрали");
                $_SESSION['smarty']->display('my_tasks/list_tasks.tpl');
                exit();
                break;
               case 'decline':
                $tasks = rows('SELECT * FROM tasks WHERE  approved=2 AND id_contractor ='.$_SESSION['user']['id']);
                $_SESSION['smarty']->assign('tasks', $tasks);
                $_SESSION['smarty']->assign('title', "Отменено");
                $_SESSION['smarty']->display('my_tasks/list_tasks.tpl');
                exit();
                break;
           }
            return;
          }

        $counts['tasks'] = row('SELECT count(id) as v FROM tasks WHERE id_client =' . $_SESSION['user']['id']);
        $counts['ready'] = row('SELECT count(id) as v FROM tasks WHERE completed=1 and id_client ='.$_SESSION['user']['id']);
        $counts['approved_contractor'] = row('SELECT count(id) as v FROM tasks WHERE approved=1 AND id_contractor =' . $_SESSION['user']['id']);
        $counts['decline'] = row('SELECT count(id) as v FROM tasks WHERE  approved=2 AND id_contractor ='.$_SESSION['user']['id']);

        $_SESSION['smarty']->assign('counts', $counts);
		$_SESSION['smarty']->display('my_tasks/my_tasks.tpl');
        
    }
}
?>