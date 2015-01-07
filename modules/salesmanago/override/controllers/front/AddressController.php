<?php

class AddressController extends AddressControllerCore
{
	protected function processSubmitAddress()
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
		$firma = Tools::getValue('company');
		$telefon= Tools::getValue('phone_mobile');
		$ulica1= Tools::getValue('address1');
		$ulica2= Tools::getValue('address2');
		$ulica = $ulica1 . ' ' . $ulica2;
		$kodpocztowy= Tools::getValue('postcode');
		$miasto= Tools::getValue('city');
		//$kraj= Tools::getValue('id_country');
		$email = $this->context->customer->email;
		$name = $this->context->customer->firstname;
		$surname = $this->context->customer->lastname;
		$nazwa = $name . " " . $surname;
		$urodziny = $this->context->customer->birthday;
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
							'name' => $nazwa,
							'company' => $firma,
							'phone' => $telefon,
							'address' => array(
											'streetAddress' => $ulica,
											'zipCode' => $kodpocztowy,
											'city' => $miasto,
											),
        					),
        		'owner' => $owner,
				'forceOptOut' => 'false',
				'forceOptIn' => 'false',
				'birthday' => $urodziny,
				);
		$json1 = json_encode($data);		
		$result = do_post_request9('http://' . $endpoint . '/api/contact/upsert', $json1);
		$r1 = json_decode($result);
    	$contactId = $r1->{'contactId'};
		setcookie('smclient',$contactId, time() + 3650 * 86400,"/",$_SERVER["SERVER_NAME"]);
		parent::processSubmitAddress();
	}
	
	
	
}
?>