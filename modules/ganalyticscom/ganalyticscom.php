<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

include_once(dirname(__FILE__).'/GanalyticsComs.php');
include_once(realpath(dirname(__FILE__)) . "/X_GoogleAnalyticsMobile.class.php");
include_once(realpath(dirname(__FILE__)) . "/X_Tools.php");

class Ganalyticscom extends Module
{
	private $_html = '';
	private $_postErrors = array();
	var $_logFile = "debug/logs.txt";
	var $_httpCodesFile = "debug/http_codes.txt";

	function __construct()
	{
		$this->name = 'ganalyticscom';
		$this->tab = 'analytics_stats';
		$this->version = 1.6;
		$this->author = 'Speedyweb';
		$this->module_key = '90bbcd281e12778f64c01db88277a43c';
		$this->need_instance = 0;
		parent::__construct();
		$this->displayName = $this->l('Google Analytics E-Commerce PHP');
		$this->description = $this->l('Insertion  des commandes dans Google Analytics en PHP');
		
		/** Backward compatibility */
		require(_PS_MODULE_DIR_.$this->name.'/backward_compatibility/backward.php');
		
		if (!function_exists('curl_init'))
			$this->warning = $this->l('The cURL extension must be enabled to use this module.');
	}

	public function install()
	{
		$languages = Language::getLanguages(false);
		$aCodeGA = array();
		foreach ($languages AS $language) $aCodeGA[(int)($language['id_lang'])] = '';
		
		if (!parent::install()
			OR !$this->registerHook('top')
			OR !$this->registerHook('header')
			OR ($this->checkVersion('is_1.4') AND !$this->registerHook('cart'))
			OR ($this->checkVersion('is_1.5') AND !$this->registerHook('actionCartSave'))
			OR !$this->registerHook('postUpdateOrderStatus')
			OR !$this->registerHook('newOrder')
			OR !$this->registerHook('backOfficeHeader')
			OR !Configuration::updateValue('codeGA', $aCodeGA)
			OR !Configuration::updateValue('ga_insert_statuts', '2')
			OR !Configuration::updateValue('ga_annul_statuts', '6')
			OR !Configuration::updateValue('ga_logs', 0)
			OR !Configuration::updateValue('ga_pageTrack', 1)
			OR !Configuration::updateValue('cookie_min_time', 18000))
		return false;
		
		return Db::getInstance()->Execute('
		CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'ganalyticscoms`(
			`id` int(11) NOT NULL auto_increment,
			`id_cart` int(11) DEFAULT \'0\' NOT NULL,
			`commande` int(11) NOT NULL,
			`referer` text NOT NULL,
			`gclid` text NOT NULL,
			`utm_params` VARCHAR( 255 ) NOT NULL,
			`user_agent` TEXT NOT NULL,
			`extra_params` VARCHAR( 255 ) NOT NULL,
			`ga_statut` smallint(6) NOT NULL,
			PRIMARY KEY  (`id`)
		) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8');
	}

	public function uninstall()
    {
		Configuration::deleteByName('codeGA');
		Configuration::deleteByName('ga_insert_statuts');
		Configuration::deleteByName('ga_annul_statuts');
		Configuration::deleteByName('ga_logs');
		Configuration::deleteByName('ga_pageTrack');
		Configuration::deleteByName('cookie_min_time');
		Db::getInstance()->Execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'ganalyticscoms`');
		return parent::uninstall();
    }

	/***************************************************************************************************************/

	public function getContent()
	{
		if (Tools::isSubmit('submitAnalytics'))
		{
			$this->_postValidation();
			if (!sizeof($this->_postErrors)) $this->_postProcess();
			else $this->displayErrors();
		}
		elseif (Tools::isSubmit('submitPurgeDB')){
			$this->PurgeDB();
			if (!sizeof($this->_postErrors)) $this->displayPurgeConf();
			else $this->displayErrors();
		}
		$this->_displayAnalytics();
		$this->_displayForm();
		return $this->_html;
	}

	private function _postProcess()
	{
		if (Tools::isSubmit('submitAnalytics'))
		{
			$languages = Language::getLanguages(false);
			$aCodeGA = array();
			foreach($languages as $language) $aCodeGA[$language['id_lang']] = (string)Tools::getValue('codeGA_'.$language['id_lang']);
			Configuration::updateValue('codeGA', $aCodeGA);
			Configuration::updateValue('ga_logs', (Tools::isSubmit('ga_logs') AND (int)Tools::getValue('ga_logs') != 0) ? 1 : 0);
			Configuration::updateValue('ga_pageTrack', (Tools::isSubmit('ga_pageTrack') AND (int)Tools::getValue('ga_pageTrack') != 0) ? 1 : 0);
			Configuration::updateValue('ga_insert_statuts', implode(',',Tools::getValue('ga_insert_statuts')));
			Configuration::updateValue('ga_annul_statuts', implode(',',Tools::getValue('ga_annul_statuts')));
			$cookie_min_time = (int)Tools::getValue('cookie_min_time');
			Configuration::updateValue('cookie_min_time', ($cookie_min_time > 18000) ? $cookie_min_time : 18000);
		}
	}

	private function _postValidation()
	{
		// TO DO: Post Validation
	}

	/****** HOOKS *************************************************************************************************/	

	public function getDateCookieCreation($cookie)
	{
		$tab_cookie = explode('__datecookie:',$cookie);
		return (isset($tab_cookie[1]) ? $tab_cookie[1] : time());
	}

	public function cleanRefererFromCookie($cookie)
	{
		$tab_cookie = explode('__datecookie:',$cookie);
		return $tab_cookie[0];
	}

	public function hookTop($params)
	{
		$referer = (isset($_SERVER['HTTP_REFERER'])) ? $_SERVER['HTTP_REFERER'] : '';
		$query_string = (isset($_SERVER['QUERY_STRING'])) ? $_SERVER['QUERY_STRING'] : '';
		$user_agent = (isset($_SERVER['HTTP_USER_AGENT'])) ? $_SERVER['HTTP_USER_AGENT'] : '';
		
		$cookie_min_time_before_overwrite = intval(Configuration::get('cookie_min_time')); // 5h par défaut - Donnée configurable dans l'admin
		$cookie_expire_time = time() + 15778800; // 6 mois
		
		if((!isset($_COOKIE['ganalytics']) OR (!empty($referer) AND time() > ($this->getDateCookieCreation($_COOKIE['ganalytics']) + $cookie_min_time_before_overwrite)))
			AND $this->GetDomain($referer) != str_replace('www.','',$_SERVER['HTTP_HOST']))
		{
			setcookie("ganalytics", $referer.'__datecookie:'.time(), $cookie_expire_time, '/');
			setcookie("query_string", $query_string, $cookie_expire_time, '/');
			setcookie("user_agent", $user_agent, $cookie_expire_time, '/');
		}
	}

	public function hookActionCartSave($params)
	{
		$this->hookCart($params);
	}

	public function hookCart($params)
	{
		$referer = isset($_COOKIE['ganalytics']) ? $this->cleanRefererFromCookie($_COOKIE['ganalytics']) : '';
		$query_string = isset($_COOKIE['query_string']) ? $_COOKIE['query_string'] : '';
		$user_agent = isset($_COOKIE['user_agent']) ? $_COOKIE['user_agent'] : '';
		$extra_param = isset($_COOKIE['ga_extra_params']) ? $_COOKIE['ga_extra_params'] : '';
		
		$query_params = $this->query2tab($query_string);
		$gclid = isset($query_params['gclid']) ? $query_params['gclid'] : '';
		$utm_params = $this->getUtmParams($query_params);
		
		if(isset($params['cart']) AND intval($params['cart']->id) > 0){
			$row = Db::getInstance()->getRow('SELECT * FROM `'._DB_PREFIX_.'ganalyticscoms` WHERE `id_cart` = '.$params['cart']->id);
			if(!$row){
				//if(Configuration::get('ga_logs')) X_writeLogs($this->_logFile, "");
				//if(Configuration::get('ga_logs')) X_writeLogs($this->_logFile,  "## ".date('d-m-Y H:i:s')." #############################################");
				//if(Configuration::get('ga_logs')) X_writeLogs($this->_logFile, "#Function - hookCart | query_string = ".$query_string." | referer = ".$referer." | user_agent = ".$user_agent." | extra params = ".$extra_params);
				//if(Configuration::get('ga_logs')) X_writeLogs($this->_logFile, "# INSERT | ID cart = ".$params['cart']->id);
				Db::getInstance()->Execute('
				INSERT INTO `'._DB_PREFIX_.'ganalyticscoms` (`id_cart`, `commande`, `referer`, `gclid`, `utm_params`, `user_agent`, `extra_params`)
				VALUES('.(int)$params['cart']->id.',0, "'.$referer.'", "'.$gclid.'", "'.$utm_params.'", "'.$user_agent.'", "'.$extra_params.'")');
			}
		}
	}

	public function hookHeader($params)
	{
		global $smarty;
		
		$smarty->assign('codeGA',Configuration::get('codeGA',$this->context->language->id));
		
		// Get pageTrack like the default ganalytics module
		if(Configuration::get('ga_pageTrack'))
		{
			// Better way to check which file / controller name is loaded
			if (!($file = basename(Tools::getValue('controller'))))	$file = str_replace(array('.php', '-'), '', basename($_SERVER['SCRIPT_NAME']));		
			$multilang = method_exists('Language', 'isMultiLanguageActivated') ? Language::isMultiLanguageActivated() : (Language::countActiveLanguages() > 1);
			$defaultMetaOrder = Meta::getMetaByPage('order',$this->context->language->id);
			$order = ($multilang?((string)Tools::getValue('isolang').'/'):'').$defaultMetaOrder['url_rewrite'];
			$pageTrack = preg_match('#(^'.__PS_BASE_URI__.'order.php)|(^'.__PS_BASE_URI__.($multilang ? ((string)Tools::getValue('isolang').'/') : '').$defaultMetaOrder['url_rewrite'].'[^-])#', $_SERVER['REQUEST_URI']) ?
				'/order/step'.(int)Tools::getValue('step').'.html' : $file;
			$smarty->assign('pageTrack', $pageTrack);
		}
		return $this->display(__FILE__, 'header.tpl');
	}

	public function hookBackOfficeHeader($params)
	{
		$return = '';
		if(($this->checkVersion('is_1.5') AND (!Tools::isSubmit('controller') OR 'adminhome' == Tools::getValue('controller') OR 'ganalyticscom' == Tools::getValue('module_name')))
			OR ($this->checkVersion('is_1.4') AND !Tools::isSubmit('tab')))
			$return = '<link rel="stylesheet" href="'.__PS_BASE_URI__.'modules/ganalyticscom/css/ga.css" type="text/css" media="screen" charset="utf-8"/>';
		return $return;
	}

	public function hookNewOrder($params)
	{
		$id_order = (isset($params['order'])) ? $params['order']->id : $params['id_order'];
		$order = new Order(intval($id_order));
		$row = Db::getInstance()->getRow('SELECT * FROM `'._DB_PREFIX_.'ganalyticscoms` WHERE `id_cart` = '.$order->id_cart);
		if(!$row)
		{
			$referer = isset($_COOKIE['ganalytics']) ? $this->cleanRefererFromCookie($_COOKIE['ganalytics']) : '';
			$query_string = isset($_COOKIE['query_string']) ? $_COOKIE['query_string'] : '';
			$user_agent = isset($_COOKIE['user_agent']) ? $_COOKIE['user_agent'] : '';
			$extra_params = isset($_COOKIE['ga_extra_params']) ? $_COOKIE['ga_extra_params'] : '';
			
			$query_params = $this->query2tab($query_string);
			$gclid = isset($query_params['gclid']) ? $query_params['gclid'] : '';
			$utm_params = $this->getUtmParams($query_params);
		
			Db::getInstance()->Execute('
			INSERT INTO `'._DB_PREFIX_.'ganalyticscoms` (`id_cart`, `commande`, `referer`, `gclid`, `utm_params`, `user_agent`, `extra_params`)
			VALUES('.$order->id_cart.','.(int)$id_order.', "'.$referer.'", "'.$gclid.'", "'.$utm_params.'", "'.$user_agent.'", "'.$extra_params.'")');
		}
		else Db::getInstance()->Execute('UPDATE `'._DB_PREFIX_.'ganalyticscoms` SET `commande` = '.(int)$id_order.' WHERE `id_cart` = '.$order->id_cart);
	}

	public function hookPostUpdateOrderStatus($params)
	{
		$this->statut($params);
	}

	/***************************************************************************************************************/

	public function getArrayFromStringVar($nom, $sep = ',')
	{
		return explode($sep, Configuration::get($nom));
	}

	public function getUrlSite()
	{
		return  'http://'.htmlspecialchars($_SERVER['HTTP_HOST'], ENT_COMPAT, 'UTF-8').__PS_BASE_URI__;
	}

	public function _displayAnalytics()
	{
		$this->_html .= '
		<div style="border: dashed 1px #666; padding: 8px;margin-bottom:30px;">		
			<img src="../modules/ganalyticscom/img/ganalytics.jpg" style="margin-right:15px;" />
			<b>'.$this->l('Module de statistiques Google Analytics E-commerce - Pilotez votre CA et votre taux de conversion !').'</b><br />
		</div>';
	}

	public function displayErrors()
	{
		foreach ($this->_postErrors AS $err) $this->_html .= '<div class="alert error">'. $err .'</div>';
	}

	public function GetDomain($url)
	{
		$domain = parse_url(preg_replace('`www\.`','',$url));
		return (empty($domain["host"])) ? $domain["path"] : $domain["host"];
	}

	public function _displaySpeedyWeb()	
	{
		return $this->l('Realisation : ').'<a href="http://www.speedyweb.fr" title="Cr&eacute;ation et r&eacute;f&eacute;rencement de sites web &agrave; Perpignan, Lille et Paris - SpeedyWeb">SpeedyWeb</a>';
	}

	/***************************************************************************************************************/

	public function statut($params)
	{
		$id_order = (isset($params['order'])) ? $params['order']->id : $params['id_order'];
		$new_order_status = (isset($params['orderStatus'])) ? $params['orderStatus'] : $params['newOrderStatus'];
		$order = new Order(intval($id_order));
		
		if($this->checkVersion('is_1.5')) $logs = Configuration::get('ga_logs',null,$order->id_shop_group,$order->id_shop);
		elseif($this->checkVersion('is_1.4')) $logs = Configuration::get('ga_logs');
		
		if($logs) X_writeLogs($this->_logFile, "");
		if($logs) X_writeLogs($this->_logFile,  "## ".date('d-m-Y H:i:s')." #############################################");
		if($logs) X_writeLogs($this->_logFile, "#Function - statut | id_order = ".$id_order." | new_order_status = ".$new_order_status->name." id:".$new_order_status->id);
		$ganalyticscom = new GanalyticsComs();
		$ganalyticscom = $ganalyticscom->getByOrder($id_order);
		if($ganalyticscom)
		{
			if($logs) X_writeLogs($this->_logFile, "ganalyticscom ok");
			$ga_insert_statuts = $this->getArrayFromStringVar('ga_insert_statuts');
			$ga_annul_statuts = $this->getArrayFromStringVar('ga_annul_statuts');
			if(in_array($new_order_status->id, $ga_insert_statuts) and $ganalyticscom['ga_statut'] == 0){
				$this->GanalyticsUpdate($id_order,$new_order_status);
				Db::getInstance()->Execute('
				UPDATE `'._DB_PREFIX_.'ganalyticscoms`
				SET `ga_statut` = 1 WHERE `commande` = '.(int)$id_order);
			}
			elseif(in_array($new_order_status->id, $ga_annul_statuts) and $ganalyticscom['ga_statut'] == 1){
				$this->GanalyticsUpdate($id_order,$new_order_status, -1);
				Db::getInstance()->Execute('
				UPDATE `'._DB_PREFIX_.'ganalyticscoms`
				SET `ga_statut` = 0 WHERE `commande` = '.(int)$id_order);
			}
		}
	}

	public function GanalyticsUpdate($id_order,$order_state,$sens = 1)
	{
		$http_codes = (is_readable(realpath(dirname(__FILE__)).'/'.$this->_httpCodesFile)) ? parse_ini_file(realpath(dirname(__FILE__)).'/'.$this->_httpCodesFile) : array();
		$commande_infos = $this->getTransaction($id_order,$sens);
		$commande_order = $commande_infos['order'];
		
		if($this->checkVersion('is_1.5')) $logs = Configuration::get('ga_logs',null,$commande_order['id_shop_group'],$commande_order['id_shop']);
		elseif($this->checkVersion('is_1.4')) $logs = Configuration::get('ga_logs');
		
		if($logs) X_writeLogs($this->_logFile, "#Function - GanalyticsUpdate | order = ".$id_order." | sens = ".$sens);
		if($logs) X_writeLogs($this->_logFile, "#COMMANDE INFOS => ".serialize($commande_infos));
		
		if($this->checkVersion('is_1.5')) $_codeGA = Configuration::get('codeGA',$commande_order['id_lang'],$commande_order['id_shop_group'],$commande_order['id_shop']);
		elseif($this->checkVersion('is_1.4')) $_codeGA = Configuration::get('codeGA',$commande_order['id_lang']);
		
		$ganalyticscom = new GanalyticsComs();
		$ganalyticscom = $ganalyticscom->getByOrder($id_order);
		$referer = $ganalyticscom['referer'];
		$gclid = $ganalyticscom['gclid'];
		$utm_params = $ganalyticscom['utm_params'];
		$user_agent = $ganalyticscom['user_agent'];
		$ga_params = $this->query2tab($ganalyticscom['extra_params']);
		
		if($logs) X_writeLogs($this->_logFile, "#gclid => ".$gclid." | REFERER => ".$referer);
		$url = $this->getUrlSite().'modules/ganalyticscom/ganalytics_update.php';
		
		if($logs) X_writeLogs($this->_logFile, "#PAYMENT =>  ".$commande_order['payment']." | "."#STATUT =>  ".$order_state->name);
		
		// Si $commande_order['id_shop'] -> ShopCore::getShop($id_shop) ['domain']
		// Sinon str_replace('www.','',$_SERVER['HTTP_HOST'])
		$host = str_replace('www.','',$_SERVER['HTTP_HOST']);
		if(isset($commande_order['id_shop']))
		{
			$shop = Shop::getShop($id_shop);
			$host = $shop['domain'];
		}
		
		$ga = new X_GoogleAnalyticsMobile($_codeGA, $host, $referer, $gclid, $utm_params, NULL, $ga_params);
		$ga->SetTransaction($id_order, $commande_order['total'], $commande_order['port'], $commande_order['tva'], $commande_order['city'], $commande_order['region'], $commande_order['country'], $commande_order['currency']);
		if(count($commande_infos['products']) > 0)
			foreach($commande_infos['products'] as $product)
				$ga->SetTransactionItem($id_order, $product['ref'], $product['category'], $product['name'], $product['price'], $product['quantity'], $commande_order['currency']);
		if($logs) X_writeLogs($this->_logFile, '#TrafficSource => '.serialize($ga->GetTrafficSource()));
		$tracking_codes = $ga->GetTrackingCode();
		if(count($tracking_codes) > 0){
			$http_codes = (is_readable(realpath(dirname(__FILE__)).'/'.$this->_httpCodesFile)) ? parse_ini_file(realpath(dirname(__FILE__)).'/'.$this->_httpCodesFile) : array();
			foreach($tracking_codes as $tracking_code){
				$ch = @curl_init($tracking_code);
				if ($ch){
					@curl_setopt($ch, CURLOPT_TIMEOUT, 30);
					@curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
					@curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
					@curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
					@curl_setopt($ch, CURLOPT_USERAGENT, $user_agent); // Set the User-Agent
					$result = @curl_exec($ch);
					$http_code = @curl_getinfo($ch, CURLINFO_HTTP_CODE);
					if($logs)
						X_writeLogs($this->_logFile, (array_key_exists($http_code,$http_codes) ? $http_code.' : '.$http_codes[$http_code] : 'Aucun code HTTP retourné' ).' ** '.$tracking_code);					
					@curl_close($ch);
				}
			}
		}
	}
	
	public function getTransaction($id_order, $sens = 1)
	{	
		$return = array();
		$order = new Order(intval($id_order));
		$address = new Address(intval($order->id_address_invoice));
		$customer = new Customer(intval($order->id_customer));
		$currency = new Currency(intval($order->id_currency));
		$products = $order->getProducts();
		$customizedDatas = Product::getAllCustomizedDatas((int)($order->id_cart));
		Product::addCustomizationPrice($products, $customizedDatas);
		
		$i = 0;
		$tva = 0;
		foreach($products as $product){
			$result = Db::getInstance()->getRow('
			SELECT `name` FROM `'._DB_PREFIX_.'product`
			LEFT JOIN `'._DB_PREFIX_.'category_lang` ON `'._DB_PREFIX_.'product`.`id_category_default` = `'._DB_PREFIX_.'category_lang`.`id_category`
			WHERE `'._DB_PREFIX_.'product`.`id_product` = '.intval($product['product_id']).'
			AND `'._DB_PREFIX_.'category_lang`.`id_lang` = '.intval($order->id_lang));
			$total_produit = $product['product_price_wt'] * $product['product_quantity'];
			$total_produit_ht = ($product['product_price'] + $product['ecotax']) * $product['product_quantity'];
			$tva += round($total_produit - $total_produit_ht,2);
			$return['products']['product'.$i]['order_id'] = sprintf('%06d', (int)$order->id);
			$return['products']['product'.$i]['ref'] = (NULL != $product['product_reference']) ? $product['product_reference'] : $product['product_id'];
			$return['products']['product'.$i]['category'] = $result['name'];
			$return['products']['product'.$i]['name'] = $product['product_name'];
			$return['products']['product'.$i]['price'] = $sens * ($product['product_price'] + $product['ecotax']);
			$return['products']['product'.$i]['quantity'] = $sens * $product['product_quantity'];
			$i++;
		}
		
		$return['order']['id'] = sprintf('%06d', (int)$order->id);
		$return['order']['total'] = $sens * $order->total_paid;
		$return['order']['port'] = $sens * $order->total_shipping;	
		$return['order']['tva'] = $sens * $tva;
		$return['order']['city'] = $address->city;
		$return['order']['region'] = '';
		$return['order']['country'] = $address->country;
		$return['order']['currency'] = $currency->iso_code;
		$return['order']['payment'] = $order->payment;
		$return['order']['id_lang'] = $order->id_lang;
		$return['order']['id_shop'] = (isset($order->id_shop) ? $order->id_shop : null);
		$return['order']['id_shop_group'] = (isset($order->id_shop_group) ? $order->id_shop_group : null);
		
		return $return;
	}

	/***************************************************************************************************************/

	public function _displayForm()
	{
		global $cookie;
		
		$defaultLanguage = (int)(Configuration::get('PS_LANG_DEFAULT'));
		$languages = Language::getLanguages(false);
		$divLangName = 'div_codeGA';
		
		$ga_insert_statuts = $this->getArrayFromStringVar('ga_insert_statuts');
		$ga_annul_statuts = $this->getArrayFromStringVar('ga_annul_statuts');
		$ga_logs = Configuration::get('ga_logs');
		$ga_pageTrack = Configuration::get('ga_pageTrack');
		$cookie_min_time = Configuration::get('cookie_min_time');
		$checked = 'checked="checked"';
		$isGaLogsChecked = ($ga_logs) ? $checked : '' ;
		$isGaPageTrackChecked = ($ga_pageTrack) ? $checked : '' ;
		$orderStates = OrderState::getOrderStates($cookie->id_lang);
		$this->_html .= '
		<script type="text/javascript">
			var id_language = '.$defaultLanguage.';
		</script>
		<form action="'.$_SERVER['REQUEST_URI'].'" method="post" style="clear: both;">
		<fieldset>
			<legend><img src="../img/admin/contact.gif" />'.$this->l('Paramètres').'&nbsp;<img src="'._PS_ADMIN_IMG_.'up.gif" alt="" /></legend></legend>
			<label>'.$this->l('Code de suivi Analytics').'</label>
			<div class="margin-form">';
				foreach($languages as $language)
					$this->_html .= '
					<div id="div_codeGA_'.$language['id_lang'].'" style="display: '.($language['id_lang'] == $defaultLanguage ? 'block' : 'none').';float: left;">
						<input type="text" size="20" name="codeGA_'.$language['id_lang'].'" id="codeGA_'.$language['id_lang'].'" value="'.(Tools::getValue('codeGA_'.$language['id_lang']) ? Tools::getValue('codeGA_'.$language['id_lang']) : (Configuration::get('codeGA',$language['id_lang']) ? Configuration::get('codeGA',$language['id_lang']) : '')).'" />
					</div>';
				$this->_html .= $this->displayFlags($languages, $defaultLanguage, $divLangName, 'div_codeGA', true);
				$this->_html .= '
				<p class="clear" style="display: block; width: 550px;">'.
					$this->l('(UA-xxxxxxx-xx)').'
				</p>
				<div class="clear"></div>
			</div>
			<label>'.$this->l('Informer dynamiquement le nom de la page visitée').'</label>
			<div class="margin-form">
				<input type="checkbox" name="ga_pageTrack" value="1" '.$isGaPageTrackChecked.'/>
				<p class="clear" style="display: block; width: 550px;">'.
					$this->l('If this option is enabled, the name of the visited page will be sent to Google Analytics in the manner of "ganalytics" module developed by Prestashop, which keeps the existing goals for the purchase tunnel.').'<br />'.
					$this->l('This feature posing some problem on multilingual sites, it is possible to disable it.').'<br />
				</p>
			</div>
			<label>'.$this->l('Activer le fichier de logs').'</label>
			<div class="margin-form">
				<input type="checkbox" name="ga_logs" value="1" '.$isGaLogsChecked.'/>
			</div>
			<label>'.$this->l('Statuts insertion commande Analytics').'</label>
			<div class="margin-form">
				<select name="ga_insert_statuts[]" multiple="true" style="height:200px;width:360px;">';
				foreach($orderStates as $orderState)
					$this->_html .= '
					<option value="'.intval($orderState['id_order_state']).'" '.(in_array($orderState['id_order_state'], $ga_insert_statuts) ? 'selected="selected" ' : '').'>'.$orderState['name'].'</option>';
				$this->_html .= '
				</select>
				<p class="clear" style="display: block; width: 550px;">'.
					$this->l('Statuts d&eacute;clenchant l\'insertion d\'une commande dans Google Analytics.').'
				</p>
				<div class="clear"></div>
			</div>
			<label>'.$this->l('Statuts annulation commande Analytics').'</label>
			<div class="margin-form">
				<select name="ga_annul_statuts[]" multiple="true" style="height:200px;width:360px;">';
				foreach($orderStates as $orderState)
					$this->_html .= '
					<option value="'.intval($orderState['id_order_state']).'" '.(in_array($orderState['id_order_state'], $ga_annul_statuts) ? 'selected="selected" ' : '').'>'.$orderState['name'].'</option>';
				$this->_html .= '
				</select>
				<p class="clear" style="display: block; width: 550px;">'.
					$this->l('Statuts d&eacute;clenchant l\'annulation d\'une commande dans Google Analytics.').'
				</p>
				<div class="clear"></div>
			</div>
			<label>'.$this->l('Referer time minimum before overwrite').'</label>
			<div class="margin-form">
				<input type="text" size="20" name="cookie_min_time" value="'.$cookie_min_time.'" /> '.$this->l('s').'
				<p class="clear" style="display: block; width: 550px;">'.
					$this->l('Here is how GA updates the campaign tracking cookie based on referrer:').'<br />'.
					$this->l('Direct traffic is always overwritten by referrals, organic and tagged campaigns and does not overwrite existing campaign information').'<br />'.
					$this->l('New campaign, referral or organic link that brings a visitor to the site always overrides the existing campaign cookie').'<br /><br />'.
					$this->l('For tracking transactions, the module creates a cookie different from that posed by Google Analytics, to retain the referer for a period of time that you can adjust.').'<br />'.
					$this->l('If you wish to obtain statistics as close as possible to those of Google, we recommend that you leave the default value, 18 000 second (5 hours).').'<br />'.
					$this->l('If you want to retain the referer more time to analyze your conversion sources differently, it is possible to define the cookie lifetime greater.').'<br />'.
					$this->l('eg 5 hours = 18000s, 1 week = 604800s, 1 month = 2629800s').'
				</p>
				<div class="clear"></div>
			</div>
			<br /><br />
			<center>
				<input type="submit" name="submitAnalytics" value="'.$this->l('Enregistrer').'" class="button" />
			</center>
		</fieldset>
		</form><br />
		<form action="'.$_SERVER['REQUEST_URI'].'" method="post" style="clear: both;">
		<fieldset>
			<legend><img src="../img/admin/contact.gif" />'.$this->l('Purger la base de données').'&nbsp;</legend>
			<p>'.$this->l('Ajoutez cette URL &agrave votre crontab pour automatiser la purge de la base de données:').'<br />
				<b>'.Tools::getShopDomain(true, true).__PS_BASE_URI__.'modules/'.$this->name.'/cron/purge.php</b></p>
			<center><input type="submit" name="submitPurgeDB" value="'.$this->l('Purger').'" class="button" /></center>
			<hr/>
			<p>'.$this->_displaySpeedyWeb().'</p>	
		</fieldset>
		</form><br />';
	}

	/***************************************************************************************************************/

	public function displayPurgeConf()
	{
		$this->_html .= '
		<div class="conf confirm">'.$this->l('La purge a été correctement effectuée.').'</div>';
	}

	public function purgeDB()
	{
		$table = 'ganalyticscoms';
		
		$carts = Db::getInstance()->ExecuteS('SELECT `id_cart` FROM `'._DB_PREFIX_.'cart` WHERE DATE(date_add) < (CURDATE() - INTERVAL 1 MONTH)');
		
		if (sizeof($carts))
		{
			$list = '';
			foreach ($carts AS $cart)
				$list .= (int)$cart['id_cart'].',';
			$list = rtrim($list, ',');
			if(!Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.$table.'` WHERE `id_cart` IN ('.$list.')'))
			{
				$this->_postErrors[] = $this->l('Une erreur est survenue, la purge ne s\'est pas effectuée correctement.');
			}
		}
	}

	public function checkVersion($type)
	{
		$version = Tools::substr(_PS_VERSION_,0,3);
		if('is_1.4' == $type) return ($version < 1.5) ? true : false ;
		elseif('is_1.5' == $type) return ($version >= 1.5) ? true : false ;
	}

	public function query2tab($query)
	{
		$tab_params = array();
		$query_params = explode('&',$query);
		foreach($query_params as $param)
		{
			$explode_param = explode('=',$param);
			$tab_params[$explode_param[0]] = isset($explode_param[1]) ? $explode_param[1] : '';
		}
		return $tab_params;
	}

	public function getUtmParams($params)
	{
		$utm_params = $sep = '';
		$utm_list = array('utm_source','utm_medium','utm_campaign','utm_content','utm_term');
		foreach($params as $k_param => $param)
			if(in_array($k_param,$utm_list))
			{
				$utm_params .= $sep.$k_param.'='.$param;
				$sep = '&';
			}
		
		return $utm_params;
	}
}