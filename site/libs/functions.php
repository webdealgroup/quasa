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
	function OOPSSpell($num, $base, $endings) {
	    if ($num % 100 >= 11 && $num % 100 <= 19) {
	        return $base . $endings[2];
	    } else {
	        switch ($num % 10) {
	          case 1:
	          return $base . $endings[0];
	          case 2: case 3: case 4:
	          return $base . $endings[1];
	          default:
	          return $base . $endings[2];
	        }
	     }
	}

// ================================================================================================================================================================     

	function month_text($num)
	{
		switch ($num) {
			case 1 : $month = 'января';			break;
			case 2 : $month = 'февраля';		break;
			case 3 : $month = 'марта';			break;
			case 4 : $month = 'апреля';			break;
			case 5 : $month = 'мая';			break;
			case 6 : $month = 'июня';			break;
			case 7 : $month = 'июля';			break;
			case 8 : $month = 'августа';		break;
			case 9 : $month = 'сентября';		break;
			case 10 : $month = 'октября';		break;
			case 11 : $month = 'ноября';		break;
			case 12 : $month = 'декабря';		break;
		}
		return $month;
	}

// Comet Server  =================================================================================================================================================     


	function send($link, $cLines)
	{
	    
	    $result = mysqli_query($link, 'INSERT INTO pipes_messages (name, event, message)VALUES("time", "event_name", "'.base64_encode(json_encode($cLines)).'")');
	    if($result != 11)
	    {
	        return false;
	    }

	    return true;
	}

// ================================================================================================================================================================     

?>