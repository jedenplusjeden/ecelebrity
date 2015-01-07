<?php
/*
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
*  @author Dlani [Mend's] <mends@prestashopbr.com>
*  @author GCCSystem | Gleriston <contato@prestashopbr.com>
*  @colaborator Carmonteiro
*  @copyright 2009-2011
*  @version  Release: $Revision: 0.93 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*/

if (!defined('_CAN_LOAD_FILES_'))
	exit;

require( _PS_MODULE_DIR_.'/productrating/rating/_drawrating.php');

class productrating extends Module
{
	function __construct()
	{
		$this->name = 'productrating';
		$this->tab 	= 'front_office_features';
		$this->version = '0.95';
		$this->author = 'Dlani [Mend\'s]';
		$this->need_instance = 0;

		/** Tradução **/
		$this->l_rating	= $this->l('Give your rating now');
		$this->l_rating	= $this->l('Rating');
		$this->l_cast	= $this->l('cast');
		$this->l_votes	= $this->l('votes');
		$this->l_vote	= $this->l('vote');
		$this->l_out	= $this->l('out of');
		$this->l_thank	= $this->l('Thanks for voting!');	

		parent::__construct(); // The parent construct is required for translations

		$this->page = basename(__FILE__, '.php');
		$this->displayName = $this->l('Product ratings');
		$this->description = $this->l('Allows customers to rate products');
	}
	
	function traduz($termo)
	{
		return $this->l($termo);
	}

	function install()
	{
		if (!parent::install() OR !$this->registerHook('extraRight') OR !$this->registerHook('header'))
			return false;
		
		Configuration::updateValue('RATING_SHOW_CATEGORY', 0);
		Configuration::updateValue('RATING_NUMBER', 10);
		Configuration::updateValue('RATING_STAR', '0001.gif');
		Configuration::updateValue('RATING_BGCL', 'fff');
		Configuration::updateValue('RATING_BDCL', 'fff');
		
		if (!Db::getInstance()->Execute('
		CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'ratings` (
  			`id` INT(10) unsigned NOT NULL PRIMARY KEY,
  			`total_votes` INT(10) unsigned NOT NULL default 0,
  			`total_value` INT(10) unsigned NOT NULL default 0,
  			`used_ips` LONGTEXT
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci')
		)
	 		return false;
		
		return true;
	}

	public function uninstall()
    {
		Configuration::deleteByName('RATING_SHOW_CATEGORY');
		Configuration::deleteByName('RATING_NUMBER');
		Configuration::deleteByName('RATING_STAR');
		Configuration::deleteByName('RATING_BGCL');
		Configuration::deleteByName('RATING_BDCL');
	 	if (!Db::getInstance()->Execute('DROP TABLE '._DB_PREFIX_.'ratings'))
	 		return false;
		return parent::uninstall();
    } 
    
	public function getContent()
	{
		$output = '<h2>'.$this->displayName.'</h2>';
		if (Tools::isSubmit('submitStar'))
		{
			Configuration::updateValue('RATING_STAR', Tools::getValue('star_pic'));
			Configuration::updateValue('RATING_BGCL', Tools::getValue('bgcolor'));
			Configuration::updateValue('RATING_BDCL', Tools::getValue('bdcolor'));
			
			$output .= $this->displayConfirmation($this->l('Settings are updated'));
		}
				
		if (Tools::isSubmit('submit'))
		{
			$onllog = Tools::getValue('onllogg');
			Configuration::updateValue('RATING_ONLG', $onllog);
		    Configuration::updateValue('RATING_SHOW_CATEGORY', (int)(Tools::getValue('show_cat')));
			
			$nbr = (int)(Tools::getValue('nbr'));
			if (!$nbr OR $nbr <= 0 OR !Validate::isInt($nbr))
				$errors[] = $this->l('Invalid number');
			else
				Configuration::updateValue('RATING_NUMBER', $nbr);
			if (isset($errors) AND count($errors))
				$output .= $this->displayError(implode('<br />', $errors));
			else
				$output .= $this->displayConfirmation($this->l('Settings are updated'));
		}
		
		return $output.$this->displayForm();
	}
	
	public function displayForm()
	{
		$star_pic = Tools::getValue('star_pic', Configuration::get('RATING_STAR'));

		$array	= array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
		
		$output = '
		<form action="'.$_SERVER['REQUEST_URI'].'" method="post">
			<fieldset>
			<legend><img src="'.$this->_path.'logo.gif" alt="" title="" />'.$this->l('Settings').'</legend>
				<label>'.$this->l('Display on category').'</label>
				<div class="margin-form">
					<input disabled="disabled" type="radio" name="show_cat" id="display_on" value="1" '.(Tools::getValue('show_cat', Configuration::get('RATING_SHOW_CATEGORY')) ? 'checked="checked" ' : '').'/>
					<label class="t" for="display_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
					<input disabled="disabled" type="radio" name="show_cat" id="display_off" value="0" '.(!Tools::getValue('show_cat', Configuration::get('RATING_SHOW_CATEGORY')) ? 'checked="checked" ' : '').'/>
					<label class="t" for="display_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
					<p class="clear">'.$this->l('Display product rating on product listings').' (This feature is not finished yet!)</p>
				</div>
				<label>'.$this->l('Number of stars').'</label>
				<div class="margin-form">
				<select size="1" name="nbr">';
				foreach ( $array as $value )					
					$output .= "<option value=\"$value\" ".( Tools::getValue('nbr', Configuration::get('RATING_NUMBER')) == $value ?  ' SELECTED ' : false )." >$value</option>";
		$output .= '</select>				
				<p class="clear">'.$this->l('The number of stars (default: 10)').'</p>
				</div>
				<label >'.$this->l('Only logged').'</label>
				<div class="margin-form">
					<input type="checkbox" name="onllogg" value="1" '.( Tools::getValue('onllogg', Configuration::get('RATING_ONLG')) ? 'checked="checked"' : false ).' />
					<p class="clear">'.$this->l('Only logged in users can rate products').'</p>
				</div>
			
				<p class="center"><input type="submit" name="submit" value="'.$this->l('Save').'" class="button" /></p>
			</fieldset>
		</form><br />';
		
		/** STAR **/
		$output .= '<form action="'.$_SERVER['REQUEST_URI'].'" method="post">
		<fieldset>
			<legend><img src="../img/admin/themes.gif" />'.$this->l('Star').'</legend>';
			
		$star_pic = Tools::getValue('star_pic', Configuration::get('RATING_STAR'));

		foreach ( $this->pegaArquivos() as $id => $value )
		{
			if ($star_pic ==  $value)
				$check = 'checked = "checked"'; 
			else
				$check = '';
			
			$output .=  '<label style="width: 30px; float: left; margin-right: 7px; margin-bottom: 20px; padding: 0; text-align: center;">
			<input type="radio" name="star_pic" value="'.$value.'" '.$check.' ><img src="../modules/productrating/rating/stars/'.$value.'" /></label>';
		}
		
		$output .= '<div class="clear"></div>
			<hr />
			<label>'.$this->l('Background color').'</label>
			<div class="margin-form">
				<input type="text" size="7" name="bgcolor" value="'.Tools::getValue('bgcolor', Configuration::get('RATING_BGCL')).'" />
				<p class="clear">'.$this->l('Hexadecimal code color Ex. f1f2f4, or 0 for Transparent').'</p>
			</div>
			<label >'.$this->l('Border color').'</label>
			<div class="margin-form">
				<input type="text" size="7" name="bdcolor" value="'.Tools::getValue('bdcolor', Configuration::get('RATING_BDCL')).'" />
				<p class="clear">'.$this->l('Hexadecimal code color Ex. d0d3d8, or 0 for None.').'</p>
			</div>
			
			<p class="center"><input type="submit" name="submitStar" value="'.$this->l('Save').'" class="button" /></p>
		</fieldset>
		</form>';
		
		return $output;
	}

	public function pegaArquivos()
	{
		$diretorio = dirname(__FILE__).'/rating/stars/';
		
		$ponteiro = opendir($diretorio);

		while ($nome_itens = readdir($ponteiro))
		{
			$itens[] = $nome_itens;
		}
		
		sort($itens);

		foreach ($itens as $listar)
		{
			if ($listar != '.' && $listar != '..' && $listar != 'Thumbs.db' && $listar != 'index.php')
			{
				if (!is_dir($listar))
				{
					$arquivos[] = $listar;
				}
			}
		}
		
		return $arquivos;	
	}

	function hookHeader($params)
	{
		global $smarty;

		$pathinfo = pathinfo(__FILE__);
		$page_name = basename($_SERVER['PHP_SELF'], '.'.$pathinfo['extension']);
		$page_name = (preg_match('/^[0-9]/', $page_name)) ? 'page_'.$page_name : $page_name;

		if ($page_name == 'product')
		{
			Tools::addJS(($this->_path).'rating/js/behavior.js');
			Tools::addJS(($this->_path).'rating/js/rating.js');
			Tools::addCSS(($this->_path).'rating/css/rating.css', 'all');
		}
		
		$smarty->assign(array(
			'rating_show_category' => Configuration::get('RATING_SHOW_CATEGORY'),
			'bdcolor' => Configuration::get('RATING_BDCL'),
			'bgcolor' => Configuration::get('RATING_BGCL'), 
			'star' => Configuration::get('RATING_STAR')
		));
		
		return $this->display(__FILE__, 'productrating-header.tpl');
	}

	function hookextraRight($params)
	{
		global $smarty, $cookie, $page_name, $logged;

		$smarty->assign(array(
			'onllog' => Configuration::get('RATING_ONLG'),
			'rating' => rating_bar(Tools::getValue('id_product'), Configuration::get('RATING_NUMBER')),
			'result' => rating_bar(Tools::getValue('id_product'), Configuration::get('RATING_NUMBER'), 'static')
		));

		return $this->display(__FILE__, 'productrating.tpl');
	}
}
