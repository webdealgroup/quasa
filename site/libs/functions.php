<?php 


	function microtime_float()
	{
	    list($usec, $sec) = explode(" ", microtime());
	    return ((float)$usec + (float)$sec);
	}
// ================================================================================================================================================================        

	function getRequest()
        {
            $params = array_merge($_GET, $_POST);
            reset($params);
            while(list($key,$value) = each($params)){
                if (gettype($params[$key]) != "array"){
                    if (get_magic_quotes_gpc()){
                        $value = stripslashes(trim($value));
                    }
                    $params[$key] = $value;
                }
            } 
            return $params; 
        }

// ================================================================================================================================================================        
	
	function now()
	{
		$now = array();
		list($now['year'], $now['month'], $now['months'], $now['day'], $now['days'], $now['hour'], $now['hours'], $now['minute'], $now['minutes'], $now['second']) = sscanf(date("Y m m d d H H i i s"), "%d %d %s %d %s %d %s %d %s %d");
		return $now;
	}
    
	function time_format($time)
	{
		$now = array();
		list($now['year'], $now['month'], $now['months'], $now['day'], $now['days'], $now['hour'], $now['hours'], $now['minute'], $now['minutes'], $now['second']) = sscanf(date("Y m m d d H H i i s",$time), "%d %d %s %d  %s %d %s %d %s %d");
		return $now;
	}    

// ================================================================================================================================================================        
	
	function get_period() 
	{ 
	    global $ts;
	    list($usec, $sec) = explode(" ", microtime()); 
	    $time = ((float)$usec + (float)$sec);
	    $period = $time - $ts;
	    $ts = $time ;
	    return $period;
	} 

// ================================================================================================================================================================        

    function noSQL($string)
    {
    	return mysql_escape_string(trim($string)); // !!  не изменять (влияет на логин)
    }	

// ================================================================================================================================================================ 

	function filter_num_characters($str) {
	    return implode('', array_filter(str_split($str), function($digit) {
	        return (is_numeric($digit));
	    }));
	}

// ================================================================================================================================================================     

?>