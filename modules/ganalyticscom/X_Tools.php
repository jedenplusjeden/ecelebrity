<?php

	if(!function_exists('X_format'))
	{
		function X_format($val,$typ,$sup = '')
		{
			$return = $val;
			$tabjour = array('dimanche','lundi','mardi','mercredi','jeudi','vendredi','samedi');
			$tabmois = array('','janvier','février','mars','avril','mai','juin','juillet','aot','septembre','octobre','novembre','dcembre');
			if('nl2p' === $typ && !strchr($return,'<ul>'))
			{
				$return = str_replace("\r\n",'</p><p>',$return);
				$return = str_replace("\n",'</p><p>',$return);
				$return = str_replace("\r",'</p><p>',$return);
				$return = '<p>'.$return.'</p>';
			}
			elseif('br2nl' === $typ)
			{
				$return = preg_replace('/<br>/i',"\n",$return);
				$return = preg_replace('/<br \/>/i',"\n",$return);
				$return = preg_replace('/<br>\//i',"\n",$return);
				$return = preg_replace('/<p/i',"\n".'<p',$return);
				$return = str_replace("\r","\n",$return);
				$return = preg_replace("/\n{2,}/","\n",$return);
			}
			elseif('var_dump' === $typ)
			{
				if(!$sup)
					$r = '<ul><li>';
				if(is_array($val))
				{
					$r = 'array('.count($val).')<ul>';
					foreach($val as $k=>$v)
						$r .= '<li><strong>'.$k.'</strong> : '.X_format($v,'var_dump',1);
					$r .= '</ul>';
				}
				elseif(is_object($val))
				{
					$r = 'object('.count(get_object_vars($val)).')<ul>';
					foreach($val as $k=>$v)
						$r .= '<li><strong>> '.$k.'</strong> : '.X_format($v,'var_dump',1);
					$r .= '</ul>';
				}
				else
					$r = gettype($val).'('.Tools::strlen($val).') "'.$val.'"</li>';
				if(!$sup)
					$r .= '</ul>';
				$return = $r;
			}
			elseif('sql' === $typ)
			{
				$return = htmlentities($return);
				$return = preg_replace('/(from|order by|limit|inner join|left join|where|having|group by)/i','<br>\\1',$return);
			}
			return $return;
		}
	}
	
	#[F]# X_writeLogs
	# @param		$file					string		Url du fichier de logs
	# @param 		$logs					array		tableau de logs
	if(!function_exists('X_writeLogs'))
	{
		function X_writeLogs($file, $logs){
			if(is_array($logs))	foreach($logs as $key => $log) X_writeLogs($file, $log);
			else @file_put_contents(realpath(dirname(__FILE__)).'/'.$file, $logs."\n", FILE_APPEND);
		}
	}
	
	if(!function_exists('X_cutHtmlText'))
	{
		function X_cutHtmlText($text, $length, $ending = '...', $exact = false)
		{
			if(Tools::strlen(preg_replace('/<.*?>/', '', $text)) <= $length)
				return $text;
			preg_match_all('/(<.+?>)?([^<>]*)/is', $text, $matches, PREG_SET_ORDER);
			$total_length = 0;
			$arr_elements = array();
			$truncate = '';
			foreach($matches as $element)
			{
				if(!empty($element[1]))
				{
					if(preg_match('/^<\s*.+?\/\s*>$/s', $element[1]))
					{
						//
					}
					else if(preg_match('/^<\s*\/([^\s]+?)\s*>$/s', $element[1], $element2))
					{
						$pos = array_search($element2[1], $arr_elements);
						if($pos !== false)
							unset($arr_elements[$pos]);
					}
					else if(preg_match('/^<\s*([^\s>!]+).*?>$/s', $element[1], $element2))
					{
						array_unshift($arr_elements,
						Tools::strtolower($element2[1]));
					}
					$truncate .= $element[1];
				}
				$content_length = Tools::strlen(preg_replace('/(&[a-z]{1,6};|&#[0-9]+;)/i', ' ', $element[2]));
				if($total_length >= $length) {
					break;
				}
				elseif ($total_length+$content_length > $length)
				{
					$left = $total_length>$length?$total_length-$length:$length-$total_length;
					$entities_length = 0;
					if(preg_match_all('/&[a-z]{1,6};|&#[0-9]+;/i', $element[2], $element3, PREG_OFFSET_CAPTURE))
					{
						foreach($element3[0] as $entity)
						{
							if($entity[1]+1-$entities_length <= $left)
							{
								$left--;
								$entities_length += Tools::strlen($entity[0]);
							}
							else
								break;
						}
					}
					$truncate .= Tools::substr($element[2], 0, $left+$entities_length);
					break;
				}
				else
				{
					$truncate .= $element[2];
					$total_length += $content_length;
				}
			}
			if(!$exact)
			{
				$spacepos = strrpos($truncate, ' ');
				if(isset($spacepos))
				{
					$truncate = Tools::substr($truncate, 0, $spacepos);
				}
			}
			$truncate .= $ending;
			foreach($arr_elements as $element)
			{
				$truncate .= '</' . $element . '>';
			}
			return $truncate;
		}
	}

	
?>