<?php

class IdentityController extends IdentityControllerCore
{
	public function postProcess()
	{
		parent::postProcess();
		if (Tools::isSubmit('submitIdentity')){
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
		$name = $this->customer->firstname;
		$surname = $this->customer->lastname;
		$nazwa = $name . " " . $surname;
		$urodziny = $this->customer->birthday;
		$newsletter_sm = Tools::getIsset('newsletter');
		$optin_sm = Tools::getIsset('optin');
		$plec = Tools::getValue('id_gender');
		$tagi= array('moje_konto');
		$tagiout = array('moje_konto');
		$newemail = $this->customer->email; //nowy
		$email = $this->context->cookie->email; //stary
		if ($plec == 1){
		array_push($tagi,'plec_m');
		array_push($tagiout,'plec_k');
		}
		if ($plec == 2){
		array_push($tagiout,'plec_m');
		array_push($tagi,'plec_k');
		}
		if ($urodziny[6] == '-'){
		$urodziny = substr_replace($urodziny,'0',5,0);
		}
		if (strlen($urodziny) == 9){
		$urodziny = substr_replace($urodziny,'0',8,0);
		}
		$urodziny = str_replace('-','', $urodziny);
		if ($newsletter_sm || $optin_sm){
		$optout_tosm = 'false';
		$optin_tosm = 'true';
		} else {
		$optout_tosm = 'true';
		$optin_tosm = 'false';
		}
		if ($newsletter_sm){
		array_push($tagi,'Newsletter');
		} else {
		array_push($tagiout,'Newsletter');
		}
		if ($optin_sm){
		array_push($tagi,'Newsletter_podmioty-trzecie');
		} else {
		array_push($tagiout,'Newsletter_podmioty-trzecie');
		}
		$data = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
       			'contact' => array(
							'email' => $email,                        
							'name'=> $nazwa,
        					),
        		'owner' => $owner,
				'newEmail' => $newemail,
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
		}
	}
	
}
?>