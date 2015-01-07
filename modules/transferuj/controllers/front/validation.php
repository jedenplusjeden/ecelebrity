<?php

class TransferujValidationModuleFrontController extends ModuleFrontController
{
	/**
	 * @see FrontController::postProcess()
	 */
	public function postProcess()
	{
		$cart = $this->context->cart;
		$cookie = $this->context->cookie;
		if ($cart->id_customer == 0 || $cart->id_address_delivery == 0 || $cart->id_address_invoice == 0 || !$this->module->active)
			Tools::redirect('index.php?controller=order&step=1');

		$authorized = false;
		foreach (Module::getPaymentModules() as $module)
			if ($module['name'] == 'transferuj')
			{
				$authorized = true;
				break;
			}
		if (!$authorized)
			die($this->module->l('Moduł transferuj jest niedostępny.', 'validation'));

		$customer = new Customer($cart->id_customer);
		if (!Validate::isLoadedObject($customer))
			Tools::redirect('index.php?controller=order&step=1');

		if (($_POST['confirm']==$customer->secure_key) && ($cookie->isLogged(true)))
		{
			$cart_id = base64_decode($_POST['cart']);
			$this->module->validateOrder((int)$cart_id, Configuration::get('TRANSFERUJ_NEW_ORDER'), $_POST['kwota'], $this->module->displayName, NULL, array(), NULL, false,$customer->secure_key);
			$_POST['opis'] = "Zamówienie nr: ".$this->module->currentOrder;
			$_POST['crc'] = base64_encode($this->module->currentOrder);
			$_POST['md5sum'] = md5(Configuration::get('TRANSFERUJ_SID').$_POST['kwota'].$_POST['crc'].Configuration::get('TRANSFERUJ_COD'));
			$data = '?';

			$str= "<html><head></head><body>
			<form name='submitform' action='https://secure.transferuj.pl' method=POST>";
			foreach ($_POST as $k => $v) {
			if ($k == 'confirm') continue;
			  $str.= " <input type='hidden' name='$k' value='$v' />\n";
			}

			$str.="
			</form>
			<SCRIPT FOR=window EVENT=onload LANGUAGE='JavaScript'>
			 document.submitform.submit();
			</SCRIPT>
			</body></html>";
			echo $str;

		} 
	}
}
