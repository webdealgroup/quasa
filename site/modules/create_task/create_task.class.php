<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];

        if (isset($_REQUEST['save_task']) && $_REQUEST['save_task']==1) 
        {

            $result = preg_match('/(\d\d).(\d\d).(\d\d\d\d) (\d\d):(\d\d)/',$_REQUEST['time_start'],$t);
            if ($result == 1) $time_start = "{$t[3]}-{$t[2]}-{$t[1]} {$t[4]}:{$t[5]}:00";
            else exit();

            
            q("INSERT INTO tasks (
                id_client, 
                title, 
                description, 
                cost, 
                time_start
              ) 
              VALUES (
                {$_SESSION['user']['id']}, 
                '{$_REQUEST['title']}', 
                '{$_REQUEST['description']}', 
                {$_REQUEST['cost']}, 
                '{$time_start}'
            )");


            header('Location: /all_tasks/');
            

            exit();

        }

        $_SESSION['smarty']->assign('now', now());
        $_SESSION['smarty']->display('create_task/create_task.tpl');

        
    }
}
?>