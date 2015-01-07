<?php 
/*
* SALESmanago integracja by Waynet
*/

if (!defined('_PS_VERSION_'))
  exit;
 
class Salesmanago extends Module
{
	// DB file
	const INSTALL_SQL_FILE = 'install.sql';

	public function __construct()
	{
		$this->name = 'salesmanago';
		$this->tab = 'advertising_marketing';
		$this->version = '1.0';
		$this->author = 'SALESmanago';
		$this->need_instance = 0;
		$this->ps_versions_compliancy = array('min' => '1.5', 'max' => '1.6'); 
		// $this->dependencies = array('blockcart');

		parent::__construct();

		$this->displayName = $this->l('SALESmanago');
		$this->description = $this->l('Integracja Prestashop z SALESmanago Marketing Automation.');

		$this->confirmUninstall = $this->l('Czy na pewno chcesz usunac?');
		
		$this->_checkContent();

		$this->context->smarty->assign('module_name', $this->name);
	}

	 private function _checkContent()
	{
		if (!Configuration::get('SM_CLIENT_ID') &&
		!Configuration::get('SM_ENDPOINT') &&
		!Configuration::get('SM_API') &&
		!Configuration::get('SM_EMAIL'))
		$this->warning = $this->l('You need to configure this module.');
	}
	/**
 	 * install
	 */
	public function install()
	{
		// Create DB tables - uncomment below to use the install.sql for database manipulation
		/*
		if (!file_exists(dirname(__FILE__).'/'.self::INSTALL_SQL_FILE))
			return false;
		else if (!$sql = file_get_contents(dirname(__FILE__).'/'.self::INSTALL_SQL_FILE))
			return false;
		$sql = str_replace(array('PREFIX_', 'ENGINE_TYPE'), array(_DB_PREFIX_, _MYSQL_ENGINE_), $sql);
		// Insert default template data
		$sql = str_replace('THE_FIRST_DEFAULT', serialize(array('width' => 1, 'height' => 1)), $sql);
		$sql = str_replace('FLY_IN_DEFAULT', serialize(array('width' => 1, 'height' => 1)), $sql);
		$sql = preg_split("/;\s*[\r\n]+/", trim($sql));

		foreach ($sql as $query)
			if (!Db::getInstance()->execute(trim($query)))
				return false;
		*/

		if (!parent::install() || 
			!$this->registerHook('displayHome') || 
			!$this->registerHook('displayHeader') || 
			!$this->registerHook('displayBackOfficeHeader') || 
			!$this->registerHook('displayAdminHomeQuickLinks') ||
			!$this->registerHook('actionCustomerAccountAdd') ||
			!$this->registerHook('actionAuthentication') ||
			!$this->registerHook('actionValidateOrder') ||
			!$this->registerHook('actionCartSave') || 
			!$this->_createContent())
			return false;
		return true;
	}

	/**
 	 * uninstall
	 */
	public function uninstall()
	{
		if (!parent::uninstall() ||
		!$this->_deleteContent())
			return false;
		return true;
	}

	private function _createContent()
	{
		$length = 10;
		$randomString = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $length);
		if (!Configuration::updateValue('SM_CLIENT_ID', '') ||
		!Configuration::updateValue('SM_ENDPOINT', '') ||
		!Configuration::updateValue('SM_API', '')  ||
		!Configuration::updateValue('SM_PRESTA', $randomString)  ||
		!Configuration::updateValue('SM_EMAIL', ''))
		return false;
		return true;
	}

	private function _deleteContent()
	{
		if (!Configuration::deleteByName('SM_CLIENT_ID') ||
		!Configuration::deleteByName('SM_ENDPOINT')  ||
		!Configuration::deleteByName('SM_API')	||
		!Configuration::deleteByName('SM_EMAIL'))
		return false;
		return true;

	}
	/**
 	 * admin page
	 */	
	public function getContent()
	{
		$message = '';

		if (Tools::isSubmit('submit_'.$this->name))
		$message = $this->_saveContent();
		
		if (Tools::isSubmit('export_'.$this->name))
		$message = $this->_exportSM();
		
		$this->_displayContent($message);
	
		return $this->display(__FILE__, 'views/templates/admin/salesmanago.tpl');
	}
	
	private function _saveContent()
	{
		$message = '';

		if (Configuration::updateValue('SM_CLIENT_ID', Tools::getValue('SM_CLIENT_ID')) &&
      Configuration::updateValue('SM_ENDPOINT', Tools::getValue('SM_ENDPOINT')) &&
      Configuration::updateValue('SM_API', Tools::getValue('SM_API')) &&
      Configuration::updateValue('SM_EMAIL', Tools::getValue('SM_EMAIL')) )
      $message = $this->displayConfirmation($this->l('Ustawienia zostaly zapisane'));
    else
      $message = $this->displayError($this->l('Wystapil blad'));

    return $message;
  }

  private function _displayContent($message)
  {
    $this->context->smarty->assign(array(
      'message' => $message,
      'SM_CLIENT_ID' => Configuration::get('SM_CLIENT_ID'),
      'SM_ENDPOINT' => Configuration::get('SM_ENDPOINT'),
	  'SM_API' => Configuration::get('SM_API'),
	  'SM_PRESTA' => Configuration::get('SM_PRESTA'),
	  'SM_EMAIL' => Configuration::get('SM_EMAIL'),
    ));
  }

	// BACK OFFICE HOOKS

	/**
 	 * admin <head> Hook
	 */
	public function hookDisplayBackOfficeHeader()
	{
		// CSS
		$this->context->controller->addCSS($this->_path.'views/css/elusive-icons/elusive-webfont.css');
		// JS
		// $this->context->controller->addJS($this->_path.'views/js/js_file_name.js');	
	}

	/**
	 * Hook for back office dashboard
	 */
	public function hookDisplayAdminHomeQuickLinks()
	{	
		$this->context->smarty->assign('salesmanago', $this->name);
	    return $this->display(__FILE__, 'views/templates/hooks/quick_links.tpl');    
	}
	
	public function hookActionCustomerAccountAdd($params)
	{
		function do_post_request1($url, $data)
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
		
		//d($params);
		$email = $params['newCustomer'] -> email;
		$name = $params['newCustomer'] -> firstname;
		$surname = $params['newCustomer'] -> lastname;
		$newsletter = $params ['newCustomer'] -> newsletter;
		$optin = $params ['newCustomer'] -> optin;
		$plec = $params ['newCustomer'] -> id_gender;
		$urodziny = $params ['newCustomer'] -> birthday; 
		$nazwa = $name . " " . $surname;
		$clientId = Configuration::get('SM_CLIENT_ID');
		$endpoint = Configuration::get('SM_ENDPOINT');
    	$apiKey = 'j2q8qp4fbp9qf2b8p49fb'; //Losowy ciąg znaków
		$owner = Configuration::get('SM_EMAIL');
    	$apiSecret = Configuration::get('SM_API');
		$tagi = array('formularz_rejestracja'); 
		if ($urodziny[6] == '-'){
		$urodziny = substr_replace($urodziny,'0',5,0);
		}
		if (strlen($urodziny) == 9){
		$urodziny = substr_replace($urodziny,'0',8,0);
		}
		$urodziny = str_replace('-','', $urodziny);
		if ($newsletter || $optin){
		$optout = 'false'; 
		} else {
		$optout = 'true';
		}
		if ($newsletter){
		array_push($tagi,'Newsletter');
		}
		if ($optin){
		array_push($tagi,'Newsletter_podmioty-trzecie');
		}
		if ($plec == 1){
		array_push($tagi,'plec_m');
		}
		if ($plec == 2){
		array_push($tagi,'plec_k');
		}
		$data1 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
       			'contact' => array(
							'email' => $email,                        
							'name'=> $nazwa,
        					),
        		'owner' => $owner,
				'tags' => $tagi,
				'birthday' => $urodziny,
				'forceOptOut' => $optout,
				);
		$json1 = json_encode($data1);
    	$result1 = do_post_request1('http://' . $endpoint . '/api/contact/upsert', $json1);
    	$r1 = json_decode($result1);
    	$contactId = $r1->{'contactId'};
		do{
		usleep(100000); //0,1 sekundy
		} while (!isset($contactId));
		$context = Context::getContext();
		$cart = new Cart($this->context->cookie->id_cart); 
		if ($cart -> id){		
		if (($cart -> nbProducts()) > 0)
		{
		$products = $cart -> getProducts();
		$prices = $cart -> getOrderTotal(true);
		foreach ( $products as $product)
				{
					$productslist = $productslist . $product['id_product'] . ",";
				}
		$finalproductslist = substr($productslist, 0, -1); 
		$data7 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
				'email' => $email,                        
        		'owner' => $owner,
				'contactEvent' => array(
							'date' => (time()*1000),
							'products' => $finalproductslist,
							'value' => $prices,
							'contactExtEventType' => 'CART',
        					),
				);

		$json7 = json_encode($data7);
		$result7 = do_post_request1('http://' . $endpoint . '/api/contact/addContactExtEvent', $json7);
		$r7 = json_decode($result7);
		if ($r7->{'success'} == 'true'){
		$eventID= $r7->{'eventId'};
		$key = 'SMeventID';
		$context = Context::getContext();
		$context->cookie->__set($key,$eventID);
		}
		}
		}
 		return setcookie('smclient',$contactId, time() + 3650 * 86400,"/",$_SERVER["SERVER_NAME"]);
		
	}
	
	public function hookActionAuthentication($params)
	{
		
		function do_post_request2($url, $data)
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
		
		$email = $params['cookie'] -> email;
		$name = $this->context->customer -> firstname;
		$surname = $this->context->customer -> lastname;
		$urodziny = $this->context->customer -> birthday;
		$nazwa = $name . " " . $surname;
		$clientId = Configuration::get('SM_CLIENT_ID');
		$endpoint = Configuration::get('SM_ENDPOINT');
    	$apiKey = 'j2q8qp4fbp9qf2b8p49fb'; //Losowy ciąg znaków
		$owner = Configuration::get('SM_EMAIL');
    	$apiSecret = Configuration::get('SM_API');
		if ($urodziny[6] == '-'){
		$urodziny = substr_replace($urodziny,'0',5,0);
		}
		if (strlen($urodziny) == 9){
		$urodziny = substr_replace($urodziny,'0',8,0);
		}
		$urodziny = str_replace('-','', $urodziny);
		$data2 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
       			'contact' => array(
							'name' => $nazwa,
							'email' => $email,                        
        					),
        		'owner' => $owner,
				'tags' => array('formularz_logowanie'),
				'forceOptIn' => 'false',
				'birthday' => $urodziny,
				);
		$json2 = json_encode($data2);
    	$result2 = do_post_request2('http://' . $endpoint . '/api/contact/upsert', $json2); 
    	$r2 = json_decode($result2);
    	$contactId = $r2->{'contactId'};
 		return setcookie('smclient',$contactId, time() + 3650 * 86400,"/",$_SERVER["SERVER_NAME"]);
	}
	
	public function hookActionValidateOrder($params)
	{
		
		function do_post_request3($url, $data)
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

		$email = $this->context->cookie->email;
		$guest = $params['customer'] -> is_guest;
		$newsletter = $params['customer'] -> newsletter;
		if ($newsletter){
		$optout = 'false'; 
		}
		else {
		$optout = 'true';
		}
		$value = $params['order'] -> getOrdersTotalPaid();
		$products = $params['cart'] -> getProducts();
				foreach ( $products as $product)
				{
					$productslist = $productslist . $product['id_product'] . ",";
				}
		$finalproductslist = substr($productslist, 0, -1);
		if ($guest) 
			{ $purchasetype = 'Zakup jako gosc'; }
		else { $purchasetype = 'Zakup jako zalogowany'; }
		$clientId = Configuration::get('SM_CLIENT_ID');
		$endpoint = Configuration::get('SM_ENDPOINT');
    	$apiKey = 'j2q8qp4fbp9qf2b8p49fb'; //Losowy ciąg znaków
		$owner = Configuration::get('SM_EMAIL');
    	$apiSecret = Configuration::get('SM_API');
		$data3 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
       			'contact' => array(
							'email' => $email,                        
        					),
        		'owner' => $owner,
				'forceOptOut' => $optout,
				);
		$json3 = json_encode($data3);	
		$result3 = do_post_request3('http://' . $endpoint . '/api/contact/upsert', $json3);	
		$r3 = json_decode($result3);
		$contactId = $r3->{'contactId'};
		do{
		usleep(100000); //0,1 sekundy
		} while (!isset($contactId));		
		$data4 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => (time()*1000),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
				'email' => $email,                        
        		'owner' => $owner,
				'contactEvent' => array(
							'date' => (time()*1000),
							'description' => $purchasetype,
							'products' => $finalproductslist,
							'value' =>  $value,
							'contactExtEventType' => 'PURCHASE',
        					),
				);
		$json4 = json_encode($data4);
		$result4 = do_post_request3('http://' . $endpoint . '/api/contact/addContactExtEvent', $json4);
    	$r4 = json_decode($result4);
    	$eventId = $r4->{'eventId'};
		$key = 'SMeventID';
		$context = Context::getContext();
		$context->cookie->__unset($key);
 		return setcookie('smclient',$contactId, time() + 3650 * 86400,"/",$_SERVER["SERVER_NAME"]);
		
	}
	
	public function hookActionCartSave($params) 
	{
		$email = $this->context->customer->email;
		$context = Context::getContext();
		if ($this->context->cart->id){		
		if (($params['cart'] -> nbProducts()) > 0)
		{
		$products = $params['cart'] -> getProducts();
		$prices = $params['cart'] -> getOrderTotal(true);
        function do_post_request4($url, $data)
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
		
		
		foreach ( $products as $product)
				{
					$productslist = $productslist . $product['id_product'] . ",";
				}
		$finalproductslist = substr($productslist, 0, -1);
		
		$clientId = Configuration::get('SM_CLIENT_ID');
		$endpoint = Configuration::get('SM_ENDPOINT');
    	$apiKey = 'j2q8qp4fbp9qf2b8p49fb'; //Losowy ciąg znaków
		$owner = Configuration::get('SM_EMAIL');
    	$apiSecret = Configuration::get('SM_API');
		//
		$data5 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),
				'email' => $email,                        
        		'owner' => $owner,
				'contactEvent' => array(
							'date' => (time()*1000),
							'products' => $finalproductslist,
							'value' => $prices,
							'contactExtEventType' => 'CART',
        					),
				);
		$data6 = array(
        		'clientId' => $clientId,
        		'apiKey' => $apiKey,
        		'requestTime' => time(),
        		'sha' => sha1($apiKey . $clientId . $apiSecret),                      
        		'owner' => $owner,
				'contactEvent' => array(
							'eventId' => $context->cookie->SMeventID,
							'date' => (time()*1000),
							'products' => $finalproductslist,
							'value' => $prices,
							'contactExtEventType' => 'CART',
        					),
				);
		if (isset($context->cookie->SMeventID)){
		$json5 = json_encode($data6);
		$result5 = do_post_request4('http://' . $endpoint . '/api/contact/updateContactExtEvent', $json5);
		$r5 = json_decode($result5);
		if ($r6->{'success'} == 'true'){
		$eventID= $r5->{'eventId'};
		$key = 'SMeventID';
		$context->cookie->__set($key,$eventID);
		}
		}
		else {
		$json6 = json_encode($data5);
		$result6 = do_post_request4('http://' . $endpoint . '/api/contact/addContactExtEvent', $json6);
		$r6 = json_decode($result6);
		if ($r6->{'success'} == 'true'){
		$eventID= $r6->{'eventId'};
		$key = 'SMeventID';
		$context->cookie->__set($key,$eventID);
		}
		}
		}	
		}
	}
	
	

	// FRONT OFFICE HOOKS

	/**
 	 * <head> Hook
	 */
	public function hookDisplayHeader()
	{
		// CSS
		$this->context->controller->addCSS($this->_path.'views/css/'.$this->name.'.css');
		// JS
		$this->context->controller->addJS($this->_path.'views/js/'.$this->name.'.js');
		$this->context->smarty->assign(array(
			'client_id' => Configuration::get('SM_CLIENT_ID'),
			'endpoint' => Configuration::get('SM_ENDPOINT'),
			'api' => Configuration::get('SM_API'),
			'email' => Configuration::get('SM_EMAIL'),
		));

		return $this->display(__FILE__, 'views/templates/hooks/smtracking.tpl');
	}

	/**
 	 * Top of pages hook
	 */
	public function hookDisplayTop($params)
	{
		return $this->hookDisplayHome($params);
	}

	/**
 	 * Home page hook
	 */
	public function hookDisplayHome($params)
	{
		$this->context->smarty->assign('salesmanago', array(
			'some_smarty_var' => 'some_data',
			'some_smarty_array' => array(
				'some_smarty_var' => 'some_data',
				'some_smarty_var' => 'some_data'
			),
			'some_smarty_var' => 'some_data'
		));

		return $this->display(__FILE__, 'views/templates/hooks/home.tpl');	
	}

	/**
 	 * Left Column Hook
	 */
	public function hookDisplayRightColumn($params)
	{
		return $this->hookDisplayHome($params);
	}

	/**
 	 * Right Column Hook
	 */
	public function hookDisplayLeftColumn($params)
	{
	 	return $this->hookDisplayHome($params);
	}

	/**
 	 * Footer hook
	 */
	public function hookDisplayFooter($params)
	{
		return $this->hookDisplayHome($params);
	}
}

?>
