<?php

class TransferujPaymentReturnModuleFrontController extends ModuleFrontController
{
	public $ssl = true;

	/**
	 * @see FrontController::initContent()
	 */
	public function initContent()
	{
		
		$this->display_column_left = true;
		parent::initContent();	
		
		$this->setTemplate('payment_return.tpl');
	}
}
