<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];

        if (isset($in['save_task']) && $in['save_task']==1) 
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

        if (isset($in['create_task']) && $in['create_task'] == 1) 
        {
            $res = row("SELECT * FROM cat WHERE id = ".noSQL($in['cat_id']));
            $_SESSION['smarty']->assign('sub_category', $res);

            $_SESSION['smarty']->display('create_task/create_task.tpl');

            exit();

        }


        if (isset($in['cat_id']) && strlen($in['cat_id']) > 0) 
        {
            $res = row("SELECT * FROM cat WHERE id = ".noSQL($in['cat_id']));
            $_SESSION['smarty']->assign('category', $res);

            $cat_items = rows("SELECT * FROM cat WHERE id_parent = ".noSQL($in['cat_id']));
            $_SESSION['smarty']->assign('cat_items', $cat_items);
            $_SESSION['smarty']->display('create_task/sub_catalog.tpl');

            exit();

        }


        $cat_items = rows("SELECT * FROM cat WHERE id_parent = 0");
        $_SESSION['smarty']->assign('cat_items', $cat_items);

        $_SESSION['smarty']->assign('now', now());
        $_SESSION['smarty']->display('create_task/show_catalog.tpl');

        
    }
}
?>