<?php include_once('site/modules/aModule.class.php');
class all_tasks extends aModule{
    function execute($arr)
    {           
        //echo "<pre>"; print_r($arr); echo "</pre>"; //die();   
		$in = $arr["send_params"];
		$where = '';

		if (isset($in['search_task']) && $in['search_task']==1)
		{
			$where = " WHERE title LIKE '%".noSQL($in['search'])."%' ";
		}

		$tasks = rows("SELECT * FROM tasks ".$where." ORDER BY created_at DESC");
		foreach ($tasks as $k => $v)
		{
            $result = preg_match('/(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)/',$tasks[$k]['time_start'],$t);
            $month = month_text($t[2]);
            if ($result == 1) $time_start = "{$t[3]} {$month} {$t[1]}, {$t[4]}:{$t[5]}";
            else continue;
			
			$tasks[$k]['time_start'] = $time_start;
			//2019-08-08 09:00:00
		}


	  	$_SESSION['smarty']->assign('tasks', $tasks);

	  	$_SESSION['smarty']->assign('search_string', $in['search']);
		$_SESSION['smarty']->display('all_tasks/all_tasks.tpl');
        
    }
}
?>