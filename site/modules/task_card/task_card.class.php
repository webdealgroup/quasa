<?php include_once('site/modules/aModule.class.php');
class task_card extends aModule{
    function execute($arr)
    {
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();
        $in = $arr["send_params"];

        //$tasks = rows('SELECT * FROM tasks WHERE id ='.$in['id']);
        $_SESSION['smarty']->assign('referrer', $in['referrer']);
        $_SESSION['smarty']->assign('tasks', $tasks);
        $_SESSION['smarty']->display('task_card/task_card.tpl');

    }
}
?>