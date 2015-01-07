<?php

if (!defined('_PS_VERSION_'))
	exit;

class LGProductOrdered extends Module
{
	public function __construct()
	{
		$this->name = 'lgproductordered';
		$this->tab = 'Lineagrafica';
		$this->version = '1.1';
		$this->author = 'Lineagrafica.es';
		$this->need_instance = 0;
		$this->module_key = '2475c7a67aa36829ec54a1a03d893ce3';
		

		parent::__construct();

		$this->displayName = $this->l('Ordenar productos');
		$this->description = $this->l('Ordenar productos de forma masiva.');
	}

	public function install()
	{
		if ( ! parent::install())
			return false;
		
		return $this->installModuleTab('AdminLGProductOrdered', $this->l('Ordenar Productos'));
	}
	
	public function uninstall()
	{
		$sql = 'SELECT `id_tab` FROM `' . _DB_PREFIX_ . 'tab` WHERE `module` = "' . pSQL($this->name) . '"';
		
		$result = Db::getInstance()->ExecuteS($sql);
		
		if ($result && sizeof($result))
		{
			foreach ($result as $tabData)
			{
				$tab = new Tab($tabData['id_tab']);
				
				if (Validate::isLoadedObject($tab))
					$tab->delete();
			}
		}
				
		return parent::uninstall();
	}
		
	private function installModuleTab($class, $name)
	{
	$sql = 'SELECT `id_tab` FROM `' . _DB_PREFIX_ . 'tab` WHERE `class_name` = "AdminCatalog"';

	$tabParent = (int)(Db::getInstance()->getValue($sql));

	if ( ! is_array($name))
		$name = self::getMultilangField($name);
	  
	$tab = new Tab();
	$tab->name       = $name;
	$tab->class_name = $class;
	$tab->module     = $this->name;
	$tab->id_parent  = $tabParent;

	return $tab->save();
	}

    private static function getMultilangField($field)
	{
		$languages = Language::getLanguages();
		$res = array();

		foreach ($languages as $lang)
		$res[$lang['id_lang']] = $field;

		return $res;
	}
}


