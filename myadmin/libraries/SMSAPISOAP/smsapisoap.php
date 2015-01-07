<?php

require_once 'smsapi.php';
require_once 'smsapi/soapclient.php';

class SMSAPISOAP extends smsAPI_SOAPClient{


	public function __construct($p1, $p2){
		
		require_once 'smsapi/exception.php';
		require_once 'smsapi/soap/smsmulti.php';
		require_once 'smsapi/soap/sms.php';
		require_once 'smsapi/soap/response.php';
		require_once 'smsapi/soap/response/getnumbers.php';
		require_once 'smsapi/soap/response/getgroups.php';
		require_once 'smsapi/soap/response/addgroup.php';
		require_once 'smsapi/soap/response/smsstatus.php';
		require_once 'smsapi/soap/response/sms.php';
		require_once 'smsapi/soap/response/getsenders.php';
		require_once 'smsapi/soap/response/getpoints.php';
		
		parent::__construct($p1,$p2);
	}

}

?>