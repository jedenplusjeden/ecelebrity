<?php

/**
 * @author www.MyPresta.eu | Milos "VEKIA" Myszczuk <support@mypresta.eu>
 * @version of vouchers engine 1.0.8
 * All rights reserved! Copying, duplication strictly prohibited
 * http://www.mypresta.eu - prestashop modules
 */

class vouchers extends Module{
	function __construct(){
	   	ini_set("display_errors", 0);
        error_reporting(0); //E_ALL
		$this->name = 'vouchers';
        $this->author = 'MyPresta.eu';
		$this->tab = 'advertising_marketing';
		$this->version = '2.6';
        $this->dir = '/modules/vouchers/';
        $this->psver=$this->psversion();
		parent::__construct();
        $this->trusted();
		$this->displayName = $this->l('Voucher Generator');
		$this->description = $this->l('Generate any amount of discount codes by one mouse click');
        $this->mkey="nlc";     
        
        
        
        //voucher engine fields to translate
        $this->l('Tax excluded');
        $this->l('Tax included');
        $this->l('Shipping excluded');
        $this->l('Shipping included');
        $this->l('Enabled');
        $this->l('Disabled');
        $this->l('Percent(%)');
        $this->l('Amount');
        $this->l('None');
        $this->l('Value');
        $this->l('Amount');
        $this->l('Order (without shipping)');
        $this->l('Specific product');
        $this->l('Product ID');
        $this->l('enter product ID number');
        $this->l('how to get product id?');
        $this->l('Select categories from list above, use CTRL+click to select multiple categories, CTRL+A to select all of them');
        $this->l('Select products from list above, use CTRL+click to select multiple products, CTRL+A to select all of them');
        $this->l('General settings');
        $this->l('Name');
        $this->l('This will be displayed in the cart summary, as well as on the invoice');
        $this->l('Description');
        $this->l('For your eyes only. This will never be displayed to the customer');
        $this->l('Voucher length');
        $this->l('How many characters will be used to generate voucher code');
        $this->l('Enable sufix');
        $this->l('Turn this option on if you want to enable sufix for your voucher code. It will be added AFTER generated code like CODE_sufix.');
        $this->l('Sufix');
        $this->l('Define sufix for your voucher code');
        $this->l('Enable prefix');
        $this->l('Turn this option on if you want to enable prefix for your voucher code. It will be added BEFORE generated code like prefix_CODE.');
        $this->l('Prefix');
        $this->l('Define prefix for your voucher code');
        $this->l('Highlight');
        $this->l('If the voucher is not yet in the cart, it will be displayed in the cart summary.');
        $this->l('Partial use');
        $this->l('Only applicable if the voucher value is greater than the cart total.
If you do not allow partial use, the voucher value will be lowered to the total order amount. If you allow partial use, however, a new voucher will be created with the remainder.');
        $this->l('Priority');
        $this->l('Cart rules are applied by priority. A cart rule with a priority of "1" will be processed before a cart rule with a priority of "2".');
        $this->l('Active');
        $this->l('Conditions');
        $this->l('Expiration time');
        $this->l('Define how long (in days) voucher code will be active');
        $this->l('Minimum amount');
        $this->l('You can choose a minimum amount for the cart either with or without the taxes and shipping.');
        $this->l('Total available');
        $this->l('The cart rule will be applied to the first "X" customers only.');
        $this->l('Total available for each user');
        $this->l('A customer will only be able to use the cart rule "X" time(s).');
        $this->l('Add rule concerning categories');
        $this->l('Add rule concerning products');
        $this->l('Actions');
        $this->l('Free shipping');
        $this->l('Apply a discount');
        $this->l('Apply discount to');
        $this->l('Turn this option on if you want dont want to allow to use this code with other voucher codes');
        $this->l('Uncombinable with other codes');
        $this->l('Select manufacturers from list above, use CTRL+click to select multiple products, CTRL+A to select all of them');
        $this->l('Add rule concerning manufacturers');
        $this->l('Add rule concerning attributes');
        $this->l('Select Attributes from list above, use CTRL+click to select multiple products, CTRL+A to select all of them');
        $this->l('Cheapest product');
        $this->l('Selected products');   
        $this->l('Cumulative with price reductions');
        $this->l('Turn this option on if you want to allow to use this code with price reductions');     
        $this->l('Date from');
        $this->l('Date to');
        $this->l('Expiry date, format: YYYY-MM-DD HH:MM:SS');
        $this->l('Start date, format: YYYY-MM-DD HH:MM:SS');
        $this->l('Conditions');
        
        
        
        
        
        
          
        if (@file_exists('../modules/'.$this->name.'/key.php'))
            @require_once ('../modules/'.$this->name.'/key.php');
        else if (@file_exists(dirname(__FILE__) . $this->name.'/key.php'))
            @require_once (dirname(__FILE__) . $this->name.'/key.php');
        else if (@file_exists('modules/'.$this->name.'/key.php'))
            @require_once ('modules/'.$this->name.'/key.php');                        
        $this->checkforupdates();
	}

    function checkforupdates(){
        if (isset($_GET['controller']) OR isset($_GET['tab'])){
            if (Configuration::get('update_'.$this->name) < (date("U")>86400)){
                $actual_version = vouchersUpdate::verify($this->name,$this->mkey,$this->version);
            }
            if (vouchersUpdate::version($this->version)<vouchersUpdate::version(Configuration::get('updatev_'.$this->name))){
                $this->warning=$this->l('New version available, check MyPresta.eu for more informations');
            }
        }
    }
        function trusted(){
            if (_PS_VERSION_ >= "1.6.0.8"){
                if (isset($_GET['controller'])){
                    if ($_GET['controller']=="AdminModules"){
                        if (defined('self::CACHE_FILE_TRUSTED_MODULES_LIST')==true){
                            $context = Context::getContext();
                    		$theme = new Theme($context->shop->id_theme);
                    		// Save the 2 arrays into XML files
                    		$trusted_xml = new SimpleXMLElement('<modules_list/>');
                    		$trusted_xml->addAttribute('theme', $theme->name);
                    		$modules = $trusted_xml->addChild('modules');
                    		$modules->addAttribute('type', 'trusted');
                    		$module = $modules->addChild('module');
                    		$module->addAttribute('name', $this->name);
                            $success = file_put_contents( _PS_ROOT_DIR_.self::CACHE_FILE_TRUSTED_MODULES_LIST, $trusted_xml->asXML());
                            if (defined('self::CACHE_FILE_DEFAULT_COUNTRY_MODULES_LIST')==true){
                                file_put_contents(_PS_ROOT_DIR_.self::CACHE_FILE_DEFAULT_COUNTRY_MODULES_LIST,'<name><![CDATA['.$this->name.']]></name>');
                            }
                        }
                    }
                }
            }
        }  
        
        
	function install(){
        if (!parent::install()){
            return false;
        }
	   return true;
	}
	
    
	public function psversion() {
		$version=_PS_VERSION_;
		$exp=$explode=explode(".",$version);
		return $exp[1];
	}
    
    public function msg_saved(){
        return "<div class=\"bootstrap\" style=\"margin-top:20px;\"><div class=\"alert alert-success\">".$this->l('Saved')."</div></div>";
    }
	    
	public function getContent(){	   
    	$output="";
        if (Tools::isSubmit('delete_csv_file')){
            if (file_exists("..".$this->dir.$_POST['fcsv'])){
                unlink("..".$this->dir.$_POST['fcsv']);
            }
            $output .= '<div class="conf confirm"><img src="../img/admin/ok.gif" alt="'.$this->l('CSV FILE DELETED').'" />'.$this->l('CSV FILE DELETED').'</div>';
        }
        
        if (Tools::isSubmit('save_voucher_settings')){
            $output=$this->msg_saved();
            vouchersVoucherEngine::updateVoucher(Tools::getValue('voucherPrefix'),$_POST);
        }

		if (Tools::isSubmit('submit_generate')){                
            $licz=0;

            for ($i=0; $i<Tools::getValue('counter'); $i++){
                $licz++;
                $key=vouchersVoucherEngine::AddVoucherCode("vg",null);
                $txt.="$licz;".trim($key).";\n";
            }            
            $counter=Configuration::get("vg_counter");
           
            
            if ($counter>0){
                $counter_return=$counter+1;
                Configuration::updateValue("vg_counter",$counter_return);
            } else {
                $counter_return=1;
                Configuration::updateValue("vg_counter",$counter_return);
            }
            
            $nowdate=date("Y-m-d H-i-s");
            $nowdatemd5=md5($nowdate);
            $fp = fopen("..".$this->dir.$counter_return."-{$nowdate}.csv", "a");
            fputs($fp, $txt);
            fclose($fp); 
            $output=$this->msg_saved();
            
    	}     
		return $output.$this->displayForm();
	}

	public function displayForm(){
         $dir = opendir('..'.$this->dir);
         $count=0;
         while(false !== ($file = readdir($dir))){
             if (($file==".")||($file=="..")){} else {
                if(preg_match('@(.*)\.(csv)@i',$file)){
                     $filesarray[$count]['name']=$file;
                     $count++;   
                } 
            }
        } 
        $csvfiles="";
        
        
        if (isset($filesarray)){
            if (count($filesarray)>0){
                    foreach ($filesarray as $key=>$value){
                        $csvfiles=$csvfiles.'<div style="display:inline-block; padding:5px 10px; background:#FFF; border:1px solid #c0c0c0; margin-right:10px;"><form action="'.$_SERVER['REQUEST_URI'].'" method="post" enctype="multipart/form-data"><label style="width:auto; margin-right:10px;"><a href="'._PS_BASE_URL_._MODULE_DIR_.'vouchers/'.$value['name'].'" target="_blank">'.$value['name'].' <span style="margin-left:10px; margin-right:10px; display:inline-block; padding:5px; background:#000; color:#FFF;">'.$this->l('DOWNLOAD CSV FILE').'</span></a></label><input type="hidden" name="fcsv" value="'.$value['name'].'"><input type="submit" value="'.$this->l('Delete').'" name="delete_csv_file" class="button"/></form></div>';
                    }
                } else {
                    $csvfiles=$this->l('No Files');
            }
        } else {
        	$csvfiles=$this->l('No Files');
        }

            $vn=new vouchersVoucherEngine("vg","date");
            
            $form.='
		    <form id="vg_settings" action="'.$_SERVER['REQUEST_URI'].'" method="post" enctype="multipart/form-data" >
                <fieldset style="margin-bottom:10px;">
                    <legend>'.$this->l('Voucher settings').'</legend>
                    '.$vn->generateForm().'
                    <input type="submit" name="save_voucher_settings" class="button" value="'.$this->l('Save').'"/>
                </fieldset>
            </form>';
            $form.='
            
		    <form id="vg_generate" action="'.$_SERVER['REQUEST_URI'].'" method="post" enctype="multipart/form-data" >
                <fieldset style="margin-bottom:10px;">
                    <legend>'.$this->l('Generate Coupons').'</legend>
                    <div style="display:block; clear:both;">
                        <label>'.$this->l('nb of coupons').'</label>
                        <div class="margin-form" style="position:relative;">
                            <input type="text" value="1" name="counter">
            			</div>
                    </div>
                    <input type="submit" name="submit_generate" class="button" value="'.$this->l('Generate').'"/>
                </fieldset>
            </form>';            
        
		return $form.'
        <fieldset style="margin-top:20px;">
            <legend><img src="'.$this->_path.'logo.gif" alt="" title="" />'.$this->l('Generated vouchers in CSV file').'</legend>
            '.$csvfiles.'
        </fieldset>
        <style>
         .language_flags {display:none;}
        </style>
        ';
	}

    
    public function generateVoucher($length = 6, $chars) {
        $last="";
        $validCharacters = $chars;
        $validCharNumber = strlen($validCharacters);
        $result = "";
        for ($i = 0; $i < $length; $i++) {
            $index = mt_rand(0, $validCharNumber - 1);
            while ($last==$index){
                $index = mt_rand(0, $validCharNumber - 1);        
            }
            $result .= $validCharacters[$index];
            $last = $index;
        }
        return $result;
    }
}

if (file_exists(_PS_MODULE_DIR_ .'vouchers/voucherengine/engine.php')){ 
    require_once _PS_MODULE_DIR_ .'vouchers/voucherengine/engine.php'; 
}

class vouchersUpdate extends vouchers {  
    public static function version($version){
        $version=(int)str_replace(".","",$version);
        if (strlen($version)==3){$version=(int)$version."0";}
        if (strlen($version)==2){$version=(int)$version."00";}
        if (strlen($version)==1){$version=(int)$version."000";}
        if (strlen($version)==0){$version=(int)$version."0000";}
        return (int)$version;
    }
    
    public static function encrypt($string){
        return base64_encode($string);
    }
    
    public static function verify($module,$key,$version){
        if (ini_get("allow_url_fopen")) {
             if (function_exists("file_get_contents")){
                $actual_version = @file_get_contents('http://dev.mypresta.eu/update/get.php?module='.$module."&version=".self::encrypt($version)."&lic=$key&u=".self::encrypt(_PS_BASE_URL_.__PS_BASE_URI__));
             }
        }
        Configuration::updateValue("update_".$module,date("U"));
        Configuration::updateValue("updatev_".$module,$actual_version); 
        return $actual_version;
    }
}

?>