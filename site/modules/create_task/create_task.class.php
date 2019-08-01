<?php include_once('site/modules/aModule.class.php');
class create_task extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		    $in = $arr["send_params"];

        if (isset($_REQUEST['save_task'])) {
    
          q("INSERT INTO tasks (
              id_client, 
              title, 
              description, 
              cost, 
              time_start, 
              time_end
            ) 
            VALUES (
              {$_SESSION['user']['id']}, 
              '{$_REQUEST['title']}', 
              '{$_REQUEST['description']}', 
              {$_REQUEST['cost']}, 
              '{$_REQUEST['time_start']}', 
              '{$_REQUEST['time_end']}'
            )");
        }

        $cat_id = isset($_REQUEST['cat_id']) ? $_REQUEST['cat_id'] : 0;
        if ($cat_id > 2) {
          $cat_parent = row('SELECT id_parent FROM cat WHERE id = ' . $cat_id);
          $cat_name = row('SELECT name FROM cat WHERE id='.$cat_id);
          $cat_id = $cat_parent['id_parent'];

        }

        $cat_items = rows('SELECT * FROM cat WHERE id_parent = ' . $cat_id);

        $create_task = isset($_REQUEST['create_task']) ? $_REQUEST['create_task'] : 0;

        $dTimeStart = getdate();
        $cTimeStart = $dTimeStart['mday'] . '.' . $dTimeStart['mon'] . '.' . $dTimeStart['year']
                    . ' ' . $dTimeStart['hours'] . ':' . $dTimeStart['minutes'] . ':' . $dTimeStart['seconds'];

        if ($create_task > 0) 
        {
          $_SESSION['smarty']->assign('cat_id', $cat_id);
          $_SESSION['smarty']->assign('cat_name', $cat_name['name']);
          $_SESSION['smarty']->assign('time_start', $cTimeStart);
          $_SESSION['smarty']->display('create_task/create_task.tpl');
        } 
        else
         {
            $_SESSION['smarty']->assign('cat_items', $cat_items);
            if ($cat_id > 0) 
            {
              $_SESSION['smarty']->assign('cat_id', $cat_id);
              $_SESSION['smarty']->display('create_task/sub_catalog.tpl');
            } 
            else 
            {
              $_SESSION['smarty']->assign('cat_id', $cat_id);
              $_SESSION['smarty']->display('create_task/show_catalog.tpl');
            }
        }
        
    }
}
?>