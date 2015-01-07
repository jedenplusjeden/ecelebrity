<?php
include(dirname(__FILE__).'/../../config/config.inc.php');
include(dirname(__FILE__).'/../../init.php');

if(!empty($_POST))
{
	$sid = Configuration::get('TRANSFERUJ_SID');
	$tr_id = $_POST['tr_id'];
	$tr_amount = $_POST['tr_amount'];
	$tr_crc = $_POST['tr_crc'];
	$kod = Configuration::get('TRANSFERUJ_COD');
	
	if(md5($sid.$tr_id.$tr_amount.$tr_crc.$kod)==$_POST['md5sum'])
	{
		$tr_paid=$_POST['tr_paid'];
		$cart_id=base64_decode($_POST['tr_crc']);
		$status_transakcji = $_POST['tr_status'];

		$asql='SELECT `id_employee` FROM `'._DB_PREFIX_.'order_history` WHERE `'._DB_PREFIX_.'order_history`.`id_order` = \''.$cart_id.'\'';
		$res=Db::getInstance()->ExecuteS($asql); 
		$res=$res[0];		
		if ($status_transakcji=='TRUE')
		{
            $history = new OrderHistory();
			$history->id_order = $cart_id;
			$history->id_employee = $res["id_employee"];                                    
            $history->changeIdOrderState(_PS_OS_PAYMENT_, $cart_id); 
            $history->add();                                   
		} else{
            $history = new OrderHistory();
			$history->id_order = $cart_id;
			$history->id_employee = $res["id_employee"];                                    
            $history->changeIdOrderState(_PS_OS_ERROR_, $cart_id); 
            $history->add(); 
		}
	}
	else
	{
		echo "MD5 FAIL";
	}
	ob_get_clean();
	echo "TRUE";	
} else echo "FORBIDDEN";

?>