<?php
if (!defined('_PS_VERSION_'))
	exit; 

class transferuj extends PaymentModule {
	
	private $_html = '';
	
	function __construct()
	{
		$this->name = 'transferuj';
		$this->tab = 'payments_gateways';
		$this->version = '2.1';
		$this->author = 'Transferuj.pl';
		$this->currencies = true;
		$this->currencies_mode = 'radio';
		parent::__construct();

		$this->displayName = $this->l('Transferuj.pl');
		$this->description = $this->l('Obsługa płatności Transferuj.pl');

		if (!sizeof(Currency::checkPaymentCurrencies($this->id)))
			$this->warning = $this->l('Nie ustawiono waluty dla tego modułu');		
	}
	
	function getContent(){
		if (Tools::isSubmit('submit'))
		{
			Configuration::updateValue('TRANSFERUJ_SID', Tools::getValue('sprzedawcaID'));
			Configuration::updateValue('TRANSFERUJ_TIP', Tools::getValue('ip_serw'));
			Configuration::updateValue('TRANSFERUJ_COD', Tools::getValue('kod_potw'));
			Configuration::updateValue('TRANSFERUJ_SHOW_CHANNELS', Tools::getValue('t_kanaly'));
			Configuration::updateValue('TRANSFERUJ_CHANNELS_ONLINE', Tools::getValue('t_online'));
			Configuration::updateValue('TRANSFERUJ_SHOW_REG', Tools::getValue('t_reg'));
		}
		
		$this->_displayForm();
		
		return $this->_html;
	}
	
	function _displayForm(){
		$this->_html .='<h2>Transferuj.pl</h2>'.$this->l('Poniżej znajdują się parametry integracji systemu płatności Transferuj.pl.');
		$this->_html .= '
				<form action="'.$_SERVER['REQUEST_URI'].'" method="post">
				<fieldset>
				
				<legend><img src="../img/admin/contact.gif" />'.$this->l('Główne ustawienia').'</legend>
				<table id="form" cellspacing="5" cellpadding="5" border="0">
				<tr><td>
				<label>'.$this->l('ID Sprzedawcy').'<br /><small style="color:red">'.$this->l('Obowiązkowe').'</small></label>
				</td><td>
				<input type="text" name="sprzedawcaID" value="'.Configuration::get('TRANSFERUJ_SID').'" />
				</td></tr>
				
				<tr><td>
				<label>'.$this->l('Kod potwierdzający').'<br /><small style="color:red">'.$this->l('Obowiązkowe. Taki sam jak w Panelu sprzedawcy').'</small></label>
				</td><td>
				<input type="text" name="kod_potw" value="'.Configuration::get('TRANSFERUJ_COD').'" maxlength="16" />
				</td></tr>
				
				<tr><td>	
				<label>'.$this->l('IP serwera').'<br /><small style="color:red">'.$this->l('Obowiązkowe').'</small></label>
				</td><td>
				<input type="text" name="ip_serw" value="'.Configuration::get('TRANSFERUJ_TIP').'" />
				</td></tr>

				<tr><td>	
				<label>'.$this->l('Pokaż kanały płatności').'<br /></label>
				</td><td><select name="t_kanaly">
				<option value="1" '.(Configuration::get('TRANSFERUJ_SHOW_CHANNELS')==1?'selected':'').'>&nbsp;Tak&nbsp;</option>
				<option value="0" '.(Configuration::get('TRANSFERUJ_SHOW_CHANNELS')==0?'selected':'').'>&nbsp;Nie&nbsp;</option>
				</select></td></tr>

				<tr><td>	
				<label>'.$this->l('Pokaż tylko kanały online').'<br /></label>
				</td><td><select name="t_online">
				<option value="1" '.(Configuration::get('TRANSFERUJ_CHANNELS_ONLINE')==1?'selected':'').'>&nbsp;Tak&nbsp;</option>
				<option value="0" '.(Configuration::get('TRANSFERUJ_CHANNELS_ONLINE')==0?'selected':'').'>&nbsp;Nie&nbsp;</option>
				</select></td></tr>

				<tr><td>	
				<label>'.$this->l('Wyświetlaj informację z regulaminem Transferuj.pl').'<br /></label>
				</td><td><select name="t_reg">
				<option value="1" '.(Configuration::get('TRANSFERUJ_SHOW_REG')==1?'selected':'').'>&nbsp;Tak&nbsp;</option>
				<option value="0" '.(Configuration::get('TRANSFERUJ_SHOW_REG')==0?'selected':'').'>&nbsp;Nie&nbsp;</option>
				</select></td></tr>
				
				</table>
				<br /><br />
				<input type="submit" name="submit" value="'.$this->l('Zapisz Ustawienia').'" class="button" />
				
				</fieldset>
				</form>';
	}
	
	function install()
	{
		if (!parent::install() OR !$this->registerHook('payment') OR !$this->registerHook('paymentReturn'))
			return false;
		Configuration::updateValue('TRANSFERUJ_TIP', '195.149.229.109');
		Configuration::updateValue('TRANSFERUJ_SHOW_CHANNELS', '1');
		Configuration::updateValue('TRANSFERUJ_CHANNELS_ONLINE', '0');
		Configuration::updateValue('TRANSFERUJ_SHOW_REG', '1');
		
		if (Validate::isInt(Configuration::get('TRANSFERUJ_NEW_ORDER')) XOR (Validate::isLoadedObject($order_state_new = new OrderState(Configuration::get('TRANSFERUJ_NEW_ORDER')))))
		{
			$order_state_new = new OrderState();
			$order_state_new->name[Language::getIdByIso("pl")] = "Oczekiwanie na płatność Transferuj";
			$order_state_new->name[Language::getIdByIso("en")] = "Awaiting Transferuj payment";
			$order_state_new->send_email = false;
			$order_state_new->invoice = false;
			$order_state_new->unremovable = false;
			$order_state_new->color = "lightblue";
			if (!$order_state_new->add())
				return false;
			//@copy('logo.gif', '../../img/os/'.$order_state_new->id.'.gif');
			if(!Configuration::updateValue('TRANSFERUJ_NEW_ORDER', $order_state_new->id))
				return false;
		}
	
		return true;
	}
	
	function uninstall()
	{
		return (parent::uninstall());
	}	
	
	function hookPayment($params)
	{
		if (!$this->active)
			return;
		
		global $smarty, $cookie;

		$smarty->assign('this_path', $this->_path);
		$smarty->assign('buttonText', $this->l('Płać z Transferuj.pl')); 
		
		return $this->display(__FILE__, 'payment.tpl');
	}
	
	function hookPaymentReturn($params){
		if (!$this->active)
			return;
		$state = $params['objOrder']->getCurrentState();
		if ($state == Configuration::get('TRANSFERUJ_NEW_ORDER') || $state == Configuration::get('PS_OS_OUTOFSTOCK'))
		{
			$this->smarty->assign('status', 'ok');
		}
		else
			$this->smarty->assign('status', 'failed');
			
		return $this->display(__FILE__, 'payment_return.tpl');
	}

}
