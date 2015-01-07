<?php defined('APPPATH') or die();

/**
 * @project    MyAdmin
 * @module     Core
 * @copyright  (c) 2010 FORIX
 * @license    http://forix.com.pl/licencja.html
 */


class MyIO {
	
	public static function readFile($filePath, $mode='r+b'){
		
		$fileContent = null;
		try{
			if(file_exists($filePath) && (filesize($filePath))>0){
				$fp = fopen($filePath, $mode);
				$fileContent = fread($fp, filesize($filePath));
				fclose($fp);
			}
		}catch(Exception $e){
			throw $e;
		}
		
		return $fileContent;
	}
	
	public static function saveFile($filePath,$content,$mode='w+b'){
		
		$ret = false;
		try{
			$fp = fopen($filePath, $mode);
			if(is_resource($fp)){
				$ret = fwrite($fp, $content);
				fclose($fp);
			}
		}catch(Exception $e){
			throw $e;
		}
		
		return ($ret && true);
	}
	
	public static function unlinkFile($filePath){
		
		$ret = false;
		try{
			$ret = unlink($filePath);
		}catch(Exception $e){
			throw $e;
		}
		
		return ($ret);
	}
	
	public static function deleteFile($filePath){
		
		return self::unlinkFile($filePath);
	}
	
	public static function saveZipFile($filePath,$content){
		
		$zip = new ZipArchive();
		$ret = false;
		
		if ($zip->open($filePath.'.zip', ZIPARCHIVE::CREATE|ZIPARCHIVE::OVERWRITE)!==TRUE) {
			//       throw new Exception("ZIP: Cannot open <$filePath>\n");
		}
		$ret = $zip->addFromString(basename($filePath), $content);
		$zip->close();
		return $ret;
	}
	
	public static function readZipFile($filePath){
		
		$fileContent = null;
		$zip = new ZipArchive();
		
		if ($zip->open($filePath.'.zip') === TRUE) {
			$fileContent = $zip->getFromName(basename($filePath));
			$zip->close();
		} else {
			// 	throw new Exception("ZIP: Cannot open <".dirname($filePath).basename($filePath).".zip>\n");
		}
		
		return $fileContent;
	}
	
	public static function extractZipFile($filePath, $destPath){
		
		$ret = false;
		$zip = new ZipArchive();
		
		if ($zip->open($filePath) === TRUE) {
			$ret = $zip->extractTo($destPath);
			$zip->close();
		} else {
			// 	throw new Exception("ZIP: Cannot open <".dirname($filePath).basename($filePath).".zip>\n");
		}
		
		return $ret;
	}
	
	
	public static function isFile($filePath){
		
		$ret = false;
		try{
			if(is_file($filePath))
				$ret=true;
			
		}catch(Exception $e){
			throw $e;
		}
		
		return $ret;
		
	}
	
	
	public static function isDir($dirPath){
		
		$ret = false;
		try{
			if(is_dir($dirPath))
				$ret=true;
			
		}catch(Exception $e){
			throw $e;
		}
		
		return $ret;
		
	}
	
	protected static function ls($dirPath, $type=''){
		
		$list=Array();
		try{
			if(is_dir($dirPath)){
				$handle = opendir($dirPath);
				while ($file = readdir($handle)) {
					if ($file<>"." && $file<>".."){
						switch($type){
							case 'file';
							if(is_file($dirPath.$file))
								$list[]=$file;	      
							break;
							
							case 'dir';
							if(is_dir($dirPath.$file))
								$list[]=$file;
							break;
							
							default:
								$list[]=$file;
						}
					}
				}
				closedir($handle);
			}
		}catch(Exception $e){
			throw $e;
		}
		
		return $list;
		
	}
	
	public static function getFileList($dirPath){
		return self::ls($dirPath,'file');
	}
	
	public static function getDirList($dirPath){
		return self::ls($dirPath,'dir');
	}
	
	public static function mkDir($dirPath, $mask, $recursive){
		
		$ret = false;
		if(strlen($dirPath)>0){
			$ret = mkdir($dirPath, $mask, $recursive);
		}
		
		return $ret;
	}
	
	public static function isWritable($filePath){
		
		$ret = false;
		try{
			if(is_writable($filePath)){
				$ret = true;
			}
		}catch(Exception $e){
			throw $e;
		}
		
		return ($ret && true);
		
	}
	
	public static function chmod($filePath, $mode){
		
		$ret = false;
		try{
			if(chmod($filePath,$mode)){
				$ret = true;
			}
		}catch(Exception $e){
			throw $e;
		}
		
		return ($ret && true);
	}
	
	
	function deleteDir($dirPath, $deleteRoot = true){
		
		if(strpos($dirPath,APPPATH) !== 0){
			return false;
		}
		
		$ret = true;
		
		foreach(self::ls($dirPath) as $subElement){
			if($subElement=="." || $subElement==".."){
				continue;
			}
			
			$subElementPath= $dirPath."/".$subElement;
			
			if(self::isDir($subElementPath)){
				if(count(self::ls($subElementPath))>0){
					$ret = $ret && self::deleteDir($subElementPath);		
				}else{
					$ret = $ret && @rmdir($subElementPath);
				}
			}else{
				self::unlinkFile($subElementPath);
			}
		}
		if($deleteRoot){
			$ret = $ret && @rmdir($dirPath);
		}
		
		
		return true;
	}
	
}
?>