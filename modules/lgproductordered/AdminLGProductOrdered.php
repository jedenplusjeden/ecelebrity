<?php
class AdminLGProductOrdered extends AdminTab
{
	public function __construct()
	{
		global $cookie, $currentIndex;
		parent::__construct();
		$this->id_lang = $cookie->id_lang;
	}	
	
	private function cat_tree($parent_id = '0', $spacing = '', $exclude = '', $cat_tree_array = '', $include_itself = false) {

		if (!is_array($cat_tree_array)) $cat_tree_array = array();
		if ($include_itself) {
			$category = Db::getInstance()->getRow('SELECT cl.name FROM '._DB_PREFIX_.'category_lang cl WHERE cl.id_lang = '.$this->id_lang.' ANS cl.id_category = '.$parent_id);
			$cat_tree_array[] = array('id_category' => $parent_id, 'name' => $category['name']);
		}
		if (substr_count(_PS_VERSION_, '1.4') > 0)
		{
			$precategories = Db::getInstance()->ExecuteS('SELECT c.id_category, cl.name, c.id_parent FROM '._DB_PREFIX_.'category c, '._DB_PREFIX_.'category_lang cl WHERE c.id_category = cl.id_category AND cl.id_lang = '.$this->id_lang.' AND c.id_parent = '.$parent_id.'');
		}
		else
		{
			$precategories = Db::getInstance()->ExecuteS('SELECT * FROM '._DB_PREFIX_.'category c LEFT JOIN '._DB_PREFIX_.'category_lang cl ON c.id_category = cl.id_category LEFT JOIN '._DB_PREFIX_.'category_shop cs ON c.id_category = cs.id_category WHERE c.id_category = cl.id_category AND cl.id_lang = '.$this->id_lang.' AND c.id_parent = '.$parent_id.' AND cl.id_shop = '.$this->context->shop->id.' AND cs.id_shop = '.$this->context->shop->id);
		}
		foreach($precategories as $categories) {
			if ($exclude != $categories['id_category']) $cat_tree_array[] = array('id_category' => $categories['id_category'], 'name' => $spacing . $categories['name']);
			$cat_tree_array = $this->cat_tree($categories['id_category'], $spacing . '&nbsp;&nbsp;&nbsp;', $exclude, $cat_tree_array);
		}

		return $cat_tree_array;
	}
	
	private function prod_cat($id_cat)
	{
		$prodcat = Db::getInstance()->ExecuteS('SELECT id_product, position FROM '._DB_PREFIX_.'category_product WHERE id_category = '.$id_cat.' ORDER BY position ASC');
		return $prodcat;
	}
	
	private function prod_info($id_product, $id_lang)
	{
		$productos = Db::getInstance()->getRow('SELECT * FROM '._DB_PREFIX_.'product p LEFT JOIN '._DB_PREFIX_.'product_lang pl ON p.id_product = pl.id_product WHERE p.id_product = '.$id_product.' AND pl.id_lang = '.$id_lang);
		return $productos;
	}
	
	private function prod_active($id_product)
	{
		if (substr_count(_PS_VERSION_, '1.4') > 0)
		{
			$active = Db::getInstance()->getValue('SELECT active FROM '._DB_PREFIX_.'product WHERE id_product = '.$id_product);
		}
		else
		{
			$active = Db::getInstance()->getValue('SELECT active FROM '._DB_PREFIX_.'product_shop WHERE id_product = '.$id_product.' AND id_shop = '.$this->context->shop->id);
		}
		return $active;
	}
	
	function img_prod_active($active)
	{
		if ($active == 1)
			return '<img src="../modules/lgproductordered/img/enabled.gif">';
		if ($active == 0)
			return '<img src="../modules/lgproductordered/img/disabled.gif">';
	}
	
	private function totalprod_cat($id_category, $orden)
	{
		$query = 'SELECT cp.id_product FROM '._DB_PREFIX_.'category_product cp LEFT JOIN '._DB_PREFIX_.'product p ON cp.id_product = p.id_product WHERE cp.id_category = '.$id_category.' ORDER BY ';
		if ($orden == 1)
			$query .= ' p.price ASC';
		if ($orden == 2)
			$query .= ' p.price DESC';
		if ($orden == 3)
		{
			if (substr_count(_PS_VERSION_, '1.4') > 0)
				$query .= ' p.quantity ASC';
			else
				$query = 'SELECT distinct(cp.id_product) FROM '._DB_PREFIX_.'category_product cp LEFT JOIN '._DB_PREFIX_.'product p ON cp.id_product = p.id_product LEFT JOIN '._DB_PREFIX_.'stock_available sa ON sa.id_product = cp.id_product WHERE cp.id_category = '.$id_category.' ORDER BY sa.quantity ASC';
		}
		if ($orden == 4)
		{
			if (substr_count(_PS_VERSION_, '1.4') > 0)
				$query .= ' p.quantity DESC';
			else
				$query = 'SELECT distinct(cp.id_product) FROM '._DB_PREFIX_.'category_product cp LEFT JOIN '._DB_PREFIX_.'product p ON cp.id_product = p.id_product LEFT JOIN '._DB_PREFIX_.'stock_available sa ON sa.id_product = cp.id_product WHERE cp.id_category = '.$id_category.' ORDER BY sa.quantity DESC';
		}
		if ($orden == 5)
			$query .= ' p.date_upd ASC';
		if ($orden == 6)
			$query .= ' p.date_upd DESC';
		$prodcat = Db::getInstance()->ExecuteS($query);
		return $prodcat;
	}
	
	private function fecha($date)
	{
		$datepre = explode(' ', $date);
		$date1pre = explode('-',$datepre[0]);
		return $date1pre[2].'-'.$date1pre[1].'-'.$date1pre[0].' '.$datepre[1];
	}
	
	private function getManuf($id_manufacturer)
	{
		$manufacturer = Db::getInstance()->getValue('SELECT name FROM '._DB_PREFIX_.'manufacturer WHERE id_manufacturer = '.$id_manufacturer);
		return $manufacturer;
	}
	
	private function getP()
	{
		$default_lang = Configuration::get('PS_LANG_DEFAULT');
		$lang = Language::getIsoById($default_lang);
		$pl = array('es','en','fr');
		if (!in_array($lang,$pl))
			$lang = 'en';
		$iframe = '<iframe src="http://www.lineagrafica.es/modp/lgproductordered/'.$lang.'/" style="position: relative;border: solid 1px #e6e6e6;background-color: white;-webkit-border-radius:5px;-moz-border-radius: 5px;-ms-border-radius: 5px;-o-border-radius: 5px;border-radius:5px;-webkit-box-shadow: rgba(0, 0, 0, 0.1) 0 2px 0, white 0 0 0 3px inset;box-shadow: rgba(0, 0, 0, 0.1) 0 2px 0, white 0 0 0 3px inset;width:100%;height:80px;"></iframe>';
		return $iframe;
	}
	
	public function display()
	{
		global $cookie, $currentIndex;
		echo $this->getP().'<br><br>';
		echo @Module::displayConfirmation($this->l('To operate the established order is necessary to revise its prestashop store has selected the option in your settings to use the default ordered by position within the category. You can check it by pressing').' <a href="index.php?tab=AdminPPreferences&token='.Tools::getAdminTokenLite('AdminPPreferences').'" target="_blank" style="color:#FF0000;">'.$this->l('here').'</a>');
		$categorias = $this->cat_tree();
		$prodscat = '';
		if (Tools::getValue('categoria'))
		{
			$prodscat = $this->prod_cat(Tools::getValue('categoria'));
		}
		echo 	'<form method="post" action="'.$_SERVER['REQUEST_URI'].'">
				'.$this->l('Select category').': 
				<select name="categoria" onchange="this.form.submit();">';
		foreach ($categorias as $categoria)
		{
			echo '<option value="'.$categoria['id_category'].'"';
			if (Tools::getValue('categoria') == $categoria['id_category']) echo ' selected';
			echo '>'.$categoria['name'].'</option>';
		}
		echo '
				</select> '.count($prodscat).' '.$this->l('products').'
				</form><br>';
		// actualizar
		if (Tools::getValue('updateorder'))
		{
			if (Tools::getValue('updateorderm'))
			{
				foreach ($this->prod_cat(Tools::getValue('categoria')) as $cat)
				{
					Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'category_product SET position = \''.pSQL(Tools::getValue('prod'.$cat['id_product'])).'\' WHERE id_category = '.Tools::getValue('categoria').' AND id_product = '.$cat['id_product']);
				}
			}
			else
			{
				// filtros por precio, stock y fecha
				if (Tools::getValue('updateorderpa'))
					$categorias = $this->totalprod_cat(Tools::getValue('categoria'), 1);
				if (Tools::getValue('updateorderpd'))
					$categorias = $this->totalprod_cat(Tools::getValue('categoria'), 2);
				if (Tools::getValue('updateordersa'))
					$categorias = $this->totalprod_cat(Tools::getValue('categoria'), 3);
				if (Tools::getValue('updateordersd'))
					$categorias = $this->totalprod_cat(Tools::getValue('categoria'), 4);
				if (Tools::getValue('updateorderfa'))
					$categorias = $this->totalprod_cat(Tools::getValue('categoria'), 5);
				if (Tools::getValue('updateorderfd'))
					$categorias = $this->totalprod_cat(Tools::getValue('categoria'), 6);
				$ordenprod = 0;
				foreach ($categorias as $categoria)
				{
					Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'category_product SET position = \''.$ordenprod.'\' WHERE id_category = '.Tools::getValue('categoria').' AND id_product = '.$categoria['id_product']);
					$ordenprod++;
				}
			}
			echo @Module::displayConfirmation($this->l('Order products successfully updated'));
		}
		
		if (Tools::getValue('categoria'))
		{
			echo '	<form method="post" action="'.$_SERVER['REQUEST_URI'].'">
					<table class="table">
						<tr>
							<th colspan="7">'.$this->l('Select filter mode').'</th>
						</tr>
						<tr>
							<td style="height:50px;"><input type="submit" name="updateorderm" value="'.$this->l('Manually').'" class="button"></td>
							<td><input type="submit" name="updateorderpa" value="'.$this->l('Price Ascending').'" class="button"></td>
							<td><input type="submit" name="updateorderpd" value="'.$this->l('Price Descending').'" class="button"></td>
							<td><input type="submit" name="updateordersa" value="'.$this->l('Stock Ascending').'" class="button"></td>
							<td><input type="submit" name="updateordersd" value="'.$this->l('Stock Descending').'" class="button"></td>
							<td><input type="submit" name="updateorderfa" value="'.$this->l('Date Ascending').'" class="button"></td>
							<td><input type="submit" name="updateorderfd" value="'.$this->l('Date Descending').'" class="button"></td>
						</tr>
					</table><br>';
			// smart filter by name and status
			echo '	<table class="table">
						<tr>
							<th colspan="6">'.$this->l('Filter').'</th>
						</tr>
						<tr>
							<td>'.$this->l('Name:').'</td>
							<td><input type="text" name="filtername" id="filtername"></td>
							<td>'.$this->l('Manufacturer:').'</td>
							<td>
								<select name="filtermanufacturer" id="filtermanufacturer">
									<option value="0">'.$this->l('All').'</option>';
			$marcas = Db::getInstance()->ExecuteS('SELECT id_manufacturer, name FROM '._DB_PREFIX_.'manufacturer ORDER BY name ASC');
			foreach ($marcas as $marca)
			{
				echo '	<option value="'.$marca['id_manufacturer'].'">'.$marca['name'].'</option>';
			}
			echo '				</select>
							</td>
							<td>'.$this->l('Status:').'</td>
							<td>
								<select name="filterstatus" id="filterstatus">
									<option value="2" selected>'.$this->l('All').'</option>
									<option value="1">'.$this->l('Active').'</option>
									<option value="0">'.$this->l('Inactive').'</option>
								</select>
							</td>
						</tr>
					</table><br>';
			echo '	<table class="table" id="tableproduct">
					<thead>
						<tr>
							<th>'.$this->l('ID').'</th>
							<th>'.$this->l('IMAGE').'</th>
							<th>'.$this->l('NAME').'</th>
							<th>'.$this->l('MANUFACTURER').'</th>
							<th>'.$this->l('DATE').' </th>
							<th>'.$this->l('PRICE').'</th>
							<th>'.$this->l('STOCK').'</th>
							<th>'.$this->l('ACTIVE').'</th>
							<th>'.$this->l('ORDER').'</th>
						</tr>
					</thead>
					<tbody>';
			$prodscat = $this->prod_cat(Tools::getValue('categoria'));
			$imagen = '';
			foreach ($prodscat as $prodcat)
			{
				$producto = $this->prod_info($prodcat['id_product'],$this->id_lang);
				$images = Image::getImages((int)($cookie->id_lang), $producto['id_product']);
				
				if (substr_count(_PS_VERSION_, '1.4') > 0) {
					$imageObj = new Image($images[0]['id_image']);
					$imagen = '<img src="'._THEME_PROD_DIR_.$imageObj->getExistingImgPath().'-small.jpg" />';
				}
				if ((substr_count(_PS_VERSION_, '1.5') > 0) or (substr_count(_PS_VERSION_, '1.6') > 0)) {
					if (file_exists(_PS_TMP_IMG_DIR_.'product_'.$producto['id_product'].'.jpg'))
						$imagen = '<img src="../img/tmp/product_'.$producto['id_product'].'.jpg?time="'.time().'>';
					if (file_exists(_PS_TMP_IMG_DIR_.'product_mini_'.$producto['id_product'].'_'.$this->context->shop->id.'.jpg'))
						$imagen = '<img src="../img/tmp/product_mini_'.$producto['id_product'].'_'.$this->context->shop->id.'.jpg?time="'.time().'>';
					if (file_exists(_PS_TMP_IMG_DIR_.'product_mini_'.$producto['id_product'].'.jpg'))
						$imagen = '<img src="../img/tmp/product_mini_'.$producto['id_product'].'.jpg?time="'.time().'>';
						// stock
						$producto['quantity'] = Db::getInstance()->getValue('SELECT quantity FROM '._DB_PREFIX_.'stock_available WHERE id_product = '.$producto['id_product']);
				}
				echo '	<tr id="'.$producto['id_product'].'">
							<td>'.$producto['id_product'].'</td>
							<td style="text-align:center;">'.$imagen.'</td>
							<td><span id="name'.$producto['id_product'].'">'.$producto['name'].'</span></td>
							<td><span id="name'.$producto['id_product'].'"><input type="hidden" name="manufacturer'.$producto['id_product'].'" id="manufacturer'.$producto['id_product'].'" value="'.$producto['id_manufacturer'].'">'.$this->getManuf($producto['id_manufacturer']).'</span></td>
							<td>'.$this->fecha($producto['date_upd']).'</td>
							<td style="text-align:right;">'.number_format($producto['price'],2,',','.').'</td>
							<td style="text-align:right;">'.$producto['quantity'].'</td>
							<td style="text-align:center;"><input type="hidden" name="status'.$producto['id_product'].'" id="status'.$producto['id_product'].'" value="'.$this->prod_active($producto['id_product']).'">'.$this->img_prod_active($this->prod_active($producto['id_product'])).'</td>
							<td style="text-align:right;"><input type="text" name="prod'.$producto['id_product'].'" value="'.$prodcat['position'].'"></td>
						</tr>';
			}
			echo '	</tbody>
					</table><br>
					<input type="hidden" name="categoria" value="'.Tools::getValue('categoria').'">
					<input type="hidden" name="updateorder" value="1">
					<table class="table">
						<tr>
							<th colspan="7">'.$this->l('Select filter mode').'</th>
						</tr>
						<tr>
							<td style="height:50px;"><input type="submit" name="updateorderm" value="'.$this->l('Manually').'" class="button"></td>
							<td><input type="submit" name="updateorderpa" value="'.$this->l('Price Ascending').'" class="button"></td>
							<td><input type="submit" name="updateorderpd" value="'.$this->l('Price Descending').'" class="button"></td>
							<td><input type="submit" name="updateordersa" value="'.$this->l('Stock Ascending').'" class="button"></td>
							<td><input type="submit" name="updateordersd" value="'.$this->l('Stock Descending').'" class="button"></td>
							<td><input type="submit" name="updateorderfa" value="'.$this->l('Date Ascending').'" class="button"></td>
							<td><input type="submit" name="updateorderfd" value="'.$this->l('Date Descending').'" class="button"></td>
						</tr>
					</table>
					</form>';
			// add jquery smart filter - filtername - filterstatus
			echo '
			<script type="text/javascript">
			function smartfilter()
			{
				var fstatus = $("#filterstatus").val();
				var fname = $("#filtername").val();
				var fmanufacturer = $("#filtermanufacturer").val();
				var filas = $("#tableproduct").find("tbody>tr");
				var numlines = filas.length;
				for (i=0;i<numlines;i++)
				{
					$("#"+filas[i].id).css("display","");
					if (fstatus == 1)
						if ($("#status"+filas[i].id).val() == 0)
							$("#"+filas[i].id).css("display","none");
					if (fstatus == 0)
						if ($("#status"+filas[i].id).val() == 1)
							$("#"+filas[i].id).css("display","none");
							
					var fpname = $("#name"+filas[i].id).html();
					if (fpname.indexOf(fname) == -1)
						$("#"+filas[i].id).css("display","none");
						
					if (fmanufacturer > 0)
						if ($("#manufacturer"+filas[i].id).val() != fmanufacturer)
							$("#"+filas[i].id).css("display","none");
				}
			}
			$(document).ready(function(){
				$("#filterstatus").change(smartfilter);
				$("#filtername").keyup(smartfilter);
				$("#filtermanufacturer").change(smartfilter);
			
			});
			</script>
			';
		}
	}
}
