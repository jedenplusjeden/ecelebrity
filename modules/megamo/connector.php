<?php
/**
 * @project    MyAdmin
 * @module     js
 * @copyright  (c) 2013 FORIX biuro@megamo.pl
 * @license    http://http://service.myadmin.com.pl/licencja.html
*  @version  0.9.8 Beta $
 */


define('APPPATH', dirname(__FILE__).'/');
require_once(dirname(__FILE__). '/lib/MyCURL.php');


$errorInfo = array();
$out = "";
$outHeaders = array();




try{
	 $action = $_POST['action'];
	 $apiKey = $_POST['apikey'];

	switch(strtolower($action)){
	
		case 'prepare-shipping-data':

			$shippercode = $_POST['shippercode'];
			$postArray["shippercode"] = $shippercode;
			$postArray["orderids"] = $_POST['orderid'];
			$postArray["inputvalues"] = base64_encode(serialize($_POST['inputParams']));

			$contentType = $_POST['contenttype'];
			$fileName = $shippercode;
			$fileSuffix = $_POST['fsuffix'];


			try{
				$out = base64_decode(doServiceRequest($myadminBaseUrl, $apiKey, 'mkurierzy', $shippercode."export", "prepare-shipping-data", $postArray, 22));
			}catch(Exception $e){
				$errorInfo[] = $e->getMessage();
			}


			if(is_array($errorInfo) && count($errorInfo)>0){
				$errorTxt = "";
				foreach($errorInfo AS $info){
					$errorTxt .= '<span class="infoexcl" style="display: block;">'.$info.'</span>';
				}

				$out = '<div id="error-info"><p class="error">'.$errorTxt.'</p></div>';
				$out .= '<script type="text/javascript"> window.parent.document.getElementById("error-info").innerHTML = document.getElementById("error-info").innerHTML;</script>';
			}else{
				$outHeaders[] = $contentType;
				$outHeaders[] = "Content-Disposition: attachment; filename=".$fileName."-".date("ymd-H-i-s",time()).'.'.$fileSuffix;
			}

			break;


		case 'get-available-services':

			$myadminBaseUrl = $_POST['myadminBaseUrl'];
			$services = unserialize(base64_decode(doServiceRequest($myadminBaseUrl, $apiKey, 'mkurierzy', "info", "get-available-services", array(), 55)));

			$out = json_encode(array("info"=>"ok", "data"=>$services));
			$outHeaders[] = "Content-Type: application/json";
			break;

		default;
		throw new Exception("Nieznana akcja", $error);
	}
}catch(Exception $e){

	$out = json_encode(array("info"=>"error", "error"=>$e->getMessage()));
	$outHeaders[] = "Content-Type: application/json";
}


foreach($outHeaders AS $header){
	header($header);
}

echo $out;






function doServiceRequest($serviceUrl = "", $apikey, $moduleName, $serviceName,  $do, $parameters, $error=0){

	if(strlen($serviceUrl) == 0){
	  $serviceUrl = 'http://'.$_SERVER['HTTP_HOST']."/myadmin/";
	}
	
	$mycurl = new MyCURL($serviceUrl."service/json/$moduleName/$serviceName/");

	$postArray["apikey"] = $apikey;
	$postArray["do"] = $do;

	$postArray = array_merge($postArray, $parameters);

	$jsonData = $mycurl->post($postArray);
	$response = json_decode($jsonData, true);

	if($response["info"] == "ok"){
		return $response["data"];
	}
	elseif($response["info"] == "error"){
		throw new Exception("[Err=PPDSR0".$error."_2] -> ".$response["error"], $error);
	}else{
		throw new Exception("Błąd połączenia [Err=PPDSR0".$error."_1]".print_r($jsonData,1), $error);
	}

}

