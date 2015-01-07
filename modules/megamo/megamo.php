<?php
/*
 * 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author www.megamo.pl
*  @copyright  www.megamo.pl
*  @version  0.9.8 Beta $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*/
if (!defined('_PS_VERSION_'))
exit;

define('APPPATH', dirname(__FILE__).'/');

class Megamo extends Module{
	
	protected $avModules;
	
	public function __construct()
	{
		$this->name = 'megamo';
		$this->tab = 'others';
		$this->version = '0.9.9';
		$this->author = 'www.megamo.pl';
		$this->need_instance = 1;
		$this->ps_versions_compliancy = array('min' => '1.5', 'max' => '1.6');
		$this->avModules = array('maukcje_on','mkurierzy_on','mimport_allegro_on','mimport_ebay_on','mimport_shoper_on','mimport_istore_on','mimport_kqs_on','mimport_qorder_on');

		parent::__construct();

		$this->displayName = $this->l('Megamo - MyAdmin ');
		$this->description = $this->l('Integracja sklepu z Allegro, Pocztą Polską (e-Nadawca), UPS, DPD, DHL, K-EX, Siódemka, GLS, TNT, Druczki-Pocztowe - www.megamo.pl');
	}

	public function install(){

		return ( parent::install() AND $this->registerHook('displayAdminOrder') AND $this->registerHook('displayBackOfficeHeader') );
	}


	public function getContent(){

		require_once(dirname(__FILE__). '/lib/MyIO.php');

		$info = '';
		$apiKey = '';
		$smartyVariables = array('form_action' => Tools::htmlentitiesUTF8($_SERVER['REQUEST_URI']));
		 
		//todo	    
		if (Tools::isSubmit('submitMegamoInstall')){
		  
		  if(Tools::getValue('install_now')){
		 
		  
		  try{

		    require_once(dirname(__FILE__). '/lib/MyCURL.php');
		    $tmpFile = dirname(__FILE__). '/tmp/install.zip';
		    $dstDir = _PS_ROOT_DIR_."/";
		    
		    $mc = new MyCURL("http://service.myadmin.com.pl/download.php?d=myadmin&f=myadmin_install");
		  
		    if($mc->downloadFile($tmpFile) && MyIO::isFile($tmpFile)){

		      if(!MyIO::extractZipFile($tmpFile, $dstDir)){
						throw new Exception("$tmpFile EXTR01 $dstDir");
		      }
		      
		      
		      $out = "";
		      $out .= "<a target='_blank' href='http://".$_SERVER['HTTP_HOST']."/myadmin/'>Otwórz w nowym oknie -></a><br />";
		      $out .= "<iframe id='myframe' src='http://".$_SERVER['HTTP_HOST']."/myadmin/' width='920px' height='800' allowTransparency='true'>  <p>Your browser does not support iframes.</p></iframe>";
		      $out .= '<script type="text/javascript">';


		      $out .= ' $(document).ready(function(){
			      
			      $("#myframe").width($(window).width()*0.98);
			      
			      $(document.body).animate({
			  "scrollTop":   $("#myframe").offset().top
			    }, 1000);

			    });
			    ';
		      $out .= '</script>';
		      
		      
		      return $out;
		    
		    }else{
		      throw new Exception("DWNL01");
		    }
		    
		    
		    }catch(Exception $e){
		      return $this->displayError($this->l('Podczas instalacji wystąpił błąd ('.$e->getMessage().'). '
		        .'Spróbuj przeprowadzić instalacę korzystając z tego poradnika: ').'<a href="http://www.megamo.pl/s/poradnik/instalacja/" target="_blank"> www.megamo.pl</a>'
			.$this->l(' lub skontaktuj się z nami: ').'<b>serwis@megamo.pl</b>');
		    }
		  }
		}
		
	   
		if(MyIO::isFile(_PS_ROOT_DIR_."/myadmin/data/plug.bin")){

			if (Tools::isSubmit('submitMegamoData')){
				
				$megamoEnabled = array(); 
				
				
				foreach($this->avModules AS $switchId){
				  if(Tools::getValue($switchId)){
				    $megamoEnabled[] = $switchId;
				  }
				}
				
				Configuration::updateValue('MEGAMO_ENABLED', implode(";",$megamoEnabled));
				Configuration::updateValue('myadmin_base_url', "http://".str_replace("http://","",strtolower(trim(Tools::getValue('myadmin_base_url')))));
				 
				$info = '<div class="conf">'.$this->l('Configuration updated').'</div>';
			}
			
				
			if(strlen(str_replace("http://","",strtolower(trim(Configuration::get('myadmin_base_url'))))) == 0){
			  Configuration::updateValue('myadmin_base_url', "http://".str_replace("http://","",strtolower(trim("http://".$_SERVER['HTTP_HOST']."/myadmin/"))));
			}
		
			
			$megamoEnabled = explode(";",Configuration::get('MEGAMO_ENABLED'));
			
			if(in_array('mkurierzy_on', $megamoEnabled)){
				$configFile = _PS_ROOT_DIR_."/myadmin/config/config.xml";
				if(MyIO::isFile($configFile)){

					$xml = simplexml_load_file($configFile);
					if($xml->error == 0){
						if(isset($xml->apikey)){
							$apiKey = (string)$xml->apikey;
						}
					}
				}
					
				if(strlen(trim($apiKey)) == 0){
					$info = $this->displayError($this->l('Nie znaleziona klucza API - część funkcji nie będzie działać poprawnie!'));
				}else{
					Configuration::updateValue('MEGAMO_APIKEY', $apiKey);
				}
			}

			$smartyVariables += array(
			    'APIKEY'		=> $apiKey,
			    'installed'		=> 1,
			    'form_action'	=> Tools::htmlentitiesUTF8($_SERVER['REQUEST_URI']),
			    'myadmin_base_url'	=> Tools::htmlentitiesUTF8(Configuration::get('myadmin_base_url')),

			);
			
			foreach($megamoEnabled AS $switchId){
			  $smartyVariables[$switchId] = 1;
			}
			

		}else{
			$smartyVariables += array(
			    'installed'		=> 0,
			);
			 
			$info = $this->displayError($this->l("Do poprawnego działania moduł wymaga dodatku ")."<b>MyAdmin</b><br>".$this->l("Skorzystaj z przycisku \"Instaluj MyAdmin\" lub zapoznaj się z instrukjcą instalacji ręcznej na ")."<a href='http://www.megamo.pl/s/poradnik/instalacja/' target='_blank'> www.megamo.pl</a>"
			.$this->l(" - Jeśli pojawią się problemy, prosimy o kontakt: ")."<b>serwis@megamo.pl</b>",true);
		}

		$this->smarty->assign($smartyVariables);

		return $info.$this->display(__FILE__, 'tpl/megamo_cfg.tpl');
	}


	public function hookDisplayAdminOrder($params){
		if (!$this->active)
		return;
		
		$megamoEnabled = explode(";",Configuration::get('MEGAMO_ENABLED'));
		
		if(!in_array('mkurierzy_on', $megamoEnabled)){
		  return;
		}
		

		$this->context->controller->addJquery();
		$this->context->controller->addJqueryUI('ui.accordion');
		$this->context->controller->addJqueryPlugin('fancybox');
		$this->context->controller->addJS( $this->_path.'js/mkurierzy.js' );
		$this->context->controller->addCSS( $this->_path.'css/mkurierzy.css' );

		if(strlen(str_replace("http://","",strtolower(trim(Configuration::get('myadmin_base_url'))))) == 0){
		  Configuration::updateValue('myadmin_base_url', "http://".str_replace("http://","",strtolower(trim("http://".$_SERVER['HTTP_HOST']."/myadmin/"))));
		}

		$this->smarty->assign(
		array(
			'APIKEY' => Configuration::get('MEGAMO_APIKEY'),
			'orderId'	=> (int)Tools::getValue('id_order'),
			'currentUrl'	=> Configuration::get('myadmin_base_url'),
// 			'megamo_error'		=> $error,

		));

		return $this->display(__FILE__, 'tpl/mkurierzy.tpl');
	}


	public function hookDisplayBackOfficeHeader($params){

		if (!$this->active)
		return;

		$megamoEnabled = explode(";",Configuration::get('MEGAMO_ENABLED'));

		
		if(count($megamoEnabled)>0){

			if(strlen(str_replace("http://","",strtolower(trim(Configuration::get('myadmin_base_url'))))) == 0){
			  Configuration::updateValue('myadmin_base_url', "http://".str_replace("http://","",strtolower(trim("http://".$_SERVER['HTTP_HOST']."/myadmin/"))));
			}

			$adminTabId = Tab::getIdFromClassName("AdminAdmin");
			$ordersTabId = Tab::getIdFromClassName("AdminParentOrders");
			$catalogTabId = Tab::getIdFromClassName("AdminCatalog");
			$shippingTabId = Tab::getIdFromClassName("AdminParentShipping");

			
			if(method_exists($this->context->controller, "addJquery") 
			&& method_exists($this->context->controller, "addJS") 
			&& method_exists($this->context->controller, "addCSS")){
			
			      $this->context->controller->addJquery();
			      $this->context->controller->addJqueryPlugin('fancybox');
			      $this->context->controller->addJS( $this->_path.'js/megamo.js' );

			      $out = '<script type="text/javascript">';
			      $out .= 'var myadminBaseUrl="'.Configuration::get('myadmin_base_url').'";';
			      $out .= 'var catalogTabId="'.$catalogTabId.'";';
			      $out .= 'var ordersTabId="'.$ordersTabId.'";';
			      $out .= 'var shippingTabId="'.$shippingTabId.'";';
			      $out .= 'var adminTabId="'.$adminTabId.'";';

			      
			      foreach($this->avModules AS $switchId){
				if(in_array($switchId, $megamoEnabled)){
				  $out .= 'var '.$switchId.' = 1;';
				}else{
				  $out .= 'var '.$switchId.' = 0;';
				}
			      }
			      
			      $out .= '</script>';
			}
			
		}

		return $out;

	}

}
?>