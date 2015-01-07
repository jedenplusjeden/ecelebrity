<?php

class AdminCustomersController extends AdminCustomersControllerCore
{
	public function processChangeNewsletterVal()
	{
	
		function do_post_request8($url, $data)
		{
    	$ch = curl_init($url);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_HTTPHEADER,
					array(
                    		 		'Content-Type: application/json',
                    			 	'Content-Length: ' . strlen($data)
						)
    					);

    	return curl_exec($ch);
		}
		$clientId = Configuration::get('SM_CLIENT_ID');
		$endpoint = Configuration::get('SM_ENDPOINT');
    	$apiKey = 'j2q8qp4fbp9qf2b8p49fb'; //Losowy ciąg znaków
		$owner = Configuration::get('SM_EMAIL');
    	$apiSecret = Configuration::get('SM_API');
		$customer = new Customer($this->id_object);
		$email = $customer->email;
		$newsletter = $customer->newsletter;
		$tagi = array('zmiana_w_panelu_admina');
		$tagiout = array('zmiana_w_panelu_admina');
		$urodziny = $customer->birthday;
		if (!$newsletter){
		$optout_tosm='false';
		$optin_tosm='true';
		array_push($tagi,'Newsletter');
		} else {
		$optout_tosm='true';
		$optin_tosm='false';
		array_push($tagiout,'Newsletter');
		}
		if ($urodziny[6] == '-'){
		$urodziny = substr_replace($urodziny,'0',5,0);
		}
		if (strlen($urodziny) == 9){
		$urodziny = substr_replace($urodziny,'0',8,0);
		}
		$urodziny = str_replace('-','', $urodziny);
		$data = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
       			'contact' => array(
							'email' => $email,                        
        					),
        		'owner' => $owner,
				'forceOptOut' => $optout_tosm,
				'forceOptIn' => $optin_tosm,
				'tags' => $tagi,
				'removeTags' => $tagiout,
				'birthday' => $urodziny,
				);
		$json1 = json_encode($data);		
		$result = do_post_request8('http://' . $endpoint . '/api/contact/upsert', $json1);
		$r1 = json_decode($result);
    	$contactId = $r1->{'contactId'};
		setcookie('smclient',$contactId, time() + 3650 * 86400,"/",$_SERVER["SERVER_NAME"]);
		parent::processChangeNewsletterVal();
		}
		
	public function processChangeOptinVal()
	{
	
		function do_post_request9($url, $data)
		{
    	$ch = curl_init($url);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_HTTPHEADER,
					array(
                    		 		'Content-Type: application/json',
                    			 	'Content-Length: ' . strlen($data)
						)
    					);

    	return curl_exec($ch);
		}
		$clientId = Configuration::get('SM_CLIENT_ID');
		$endpoint = Configuration::get('SM_ENDPOINT');
    	$apiKey = 'j2q8qp4fbp9qf2b8p49fb'; //Losowy ciąg znaków
		$owner = Configuration::get('SM_EMAIL');
    	$apiSecret = Configuration::get('SM_API');
		$customer = new Customer($this->id_object);
		$email = $customer->email;
		$optin = $customer->optin;
		$tagi = array('zmiana_w_panelu_admina');
		$tagiout = array('zmiana_w_panelu_admina');
		$urodziny = $customer->birthday;
		if (!$optin){
		$optout_tosm='false';
		$optin_tosm='true';
		array_push($tagi,'Newsletter_podmioty-trzecie');
		} else {
		$optout_tosm='true';
		$optin_tosm='false';
		array_push($tagiout,'Newsletter_podmioty-trzecie');
		}
		if ($urodziny[6] == '-'){
		$urodziny = substr_replace($urodziny,'0',5,0);
		}
		if (strlen($urodziny) == 9){
		$urodziny = substr_replace($urodziny,'0',8,0);
		}
		$urodziny = str_replace('-','', $urodziny);
		$data = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
       			'contact' => array(
							'email' => $email,                        
        					),
        		'owner' => $owner,
				'forceOptOut' => $optout_tosm,
				'forceOptIn' => $optin_tosm,
				'tags' => $tagi,
				'removeTags' => $tagiout,
				'birthday' => $urodziny,
				);
		$json1 = json_encode($data);		
		$result = do_post_request9('http://' . $endpoint . '/api/contact/upsert', $json1);
		$r1 = json_decode($result);
    	$contactId = $r1->{'contactId'};
		setcookie('smclient',$contactId, time() + 3650 * 86400,"/",$_SERVER["SERVER_NAME"]);
		parent::processChangeOptinVal();
		}
	
	
}
?>