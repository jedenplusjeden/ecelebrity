<?php

class TransferujPaymentModuleFrontController extends ModuleFrontController
{
	public $ssl = true;

	/**
	 * @see FrontController::initContent()
	 */
	public function initContent()
	{
		$this->display_column_left = true;
		parent::initContent();

		$cart = $this->context->cart;
		$smarty = $this->context->smarty;
		$cookie = $this->context->cookie;
		
		$kraj_iso = LanguageCore::getIsoById($cookie->id_lang);
		$currency = $this->module->getCurrency((int)$cart->id_currency);

		if ($cart->id_currency != $currency->id)
		{
			$cart->id_currency = (int)$currency->id;
			$cookie->id_currency = (int)$cart->id_currency;
			$cart->update();
			Tools::redirect('index.php?controller=order');
		}		
		$address = new Address(intval($cart->id_address_invoice));
		$customer = new Customer(intval($cart->id_customer));
		$kwota = number_format($cart->getOrderTotal(true), 2, '.', '');
		$channels = '';
		$reg = '';
		
		$sid = Configuration::get('TRANSFERUJ_SID');
		
		if(Configuration::get('TRANSFERUJ_SHOW_CHANNELS') == 1 && function_exists('curl_exec'))
		{
			$api_url = "https://secure.transferuj.pl/channels-".$sid.Configuration::get('TRANSFERUJ_CHANNELS_ONLINE').".js";
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_URL, $api_url);
			$curl_res = (curl_exec($ch));
			@curl_close($ch);

			preg_match_all("/\['(.*?)','(.*?)'/s", $curl_res, $res);
			$channels = '<p>Wybierz kanał płatności:</p><table><tr>';

			for($i=0;$i<count($res[1]);$i++)
			{
				$cell = "<td style='padding:4px;font-size:12px'><input type='radio' id='tr_".$res[1][$i]."' name='kanal' value='".$res[1][$i]."' /><label for='tr_".$res[1][$i]."'>&nbsp;".$res[2][$i]."</label></td>";
				if($i % 2 == 1)
					$channels .= $cell."</tr><tr>";
				else
					$channels .= $cell;
			}
			$channels .= '</tr></table>';
		}
		
		if(Configuration::get('TRANSFERUJ_SHOW_REG') == 1)
		{
			$reg = '
			<br/><p class="checkbox" style="margin-top: 10px;padding-top: 10px;border-top: 1px solid #000;"><input id="t_accept" type="checkbox" checked="checked" value="1" name="akceptuje_regulamin">
			<label for="t_accept">
			Akceptuję <a target="_blank" href="https://secure.transferuj.pl/regulamin.pdf">regulamin</a> serwisu Transferuj.pl
			</label></p>';
		}

		$crc = base64_encode($cart->id);
      
      $smarty->assign(array(
			'kwota'=>$kwota,
			'mail'=>$customer->email,
			'nazwisko'=>$customer->lastname,
			'imie'=>$customer->firstname,
			'telefon'=>$address->phone,
			'adres'=>$address->address1." ".$address->address2,
			'miasto'=>$address->city,
			'kod'=>$address->postcode,
			'BackUrl' => Tools::getShopDomainSsl(true, true).__PS_BASE_URI__,
			'goBackUrl' => Tools::getShopDomainSsl(true, true).__PS_BASE_URI__.'module/transferuj/paymentReturn',
			'goBackUrlError' => Tools::getShopDomainSsl(true, true).__PS_BASE_URI__,
			'notify' => Tools::getShopDomainSsl(true, true).__PS_BASE_URI__.'modules/transferuj/validation.php',
			'jezyk' => $kraj_iso,
			'crc' => $crc,
			'kraj'=>$address->country,
			'sid'=> $sid,
			'seckey'=> $customer->secure_key,
			'chan'=> $channels,
			'reg'=> $reg,
			'this_path' => $this->module->getPathUri(),
			'this_path_ssl' => Tools::getShopDomainSsl(true, true).__PS_BASE_URI__.'modules/'.$this->module->name.'/'			
			));		
		
		
		$this->setTemplate('payment_execution.tpl');
	}
}
