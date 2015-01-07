<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class GanalyticsComs extends ObjectModel
{
	public $id;
	public $commande;
	public $referer;
	public $gclid;
	public $ga_statut;
	
	protected $fieldsRequired = array();
	protected $fieldsValidate = array('id' => 'isUnsignedId', 'commande' => 'isUnsignedId', 'referer' => 'isMessage',
		'gclid' => 'isMessage', 'ga_statut' => 'isUnsignedId');

	protected $table = 'ganalyticscoms';
	protected $identifier = 'id';

	public function getFields()
	{
	 	parent::validateFields(false);
		$fields['commande'] = (int)($this->commande);
		$fields['referer'] = pSQL($this->referer);
		$fields['gclid'] = pSQL($this->gclid);
		$fields['ga_statut'] = (int)($this->ga_statut);
		return ($fields);
	}
	
	public function getByOrder($id_order)
	{
	 	if (!Validate::isUnsignedId($id_order))
			die(Tools::displayError());
		$result = Db::getInstance()->ExecuteS('
		SELECT * FROM `'._DB_PREFIX_.'ganalyticscoms`
		WHERE `commande` = '.(int)($id_order));
		if (isset($result[0])) return $result[0];
		else return false;
	}
}