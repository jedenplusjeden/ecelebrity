<?php /* Smarty version Smarty-3.1.19, created on 2014-11-04 10:34:56
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/megamo/tpl/megamo_cfg.tpl" */ ?>
<?php /*%%SmartyHeaderCode:167724069354589dc011f260-53177318%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ee91152b232fbe187e16bd717a6c811e651eba2b' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/megamo/tpl/megamo_cfg.tpl',
      1 => 1411047165,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '167724069354589dc011f260-53177318',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'installed' => 0,
    'form_action' => 0,
    'myadmin_base_url' => 0,
    'maukcje_on' => 0,
    'mkurierzy_on' => 0,
    'mimport_qorder_on' => 0,
    'mimport_allegro_on' => 0,
    'mimport_ebay_on' => 0,
    'mimport_shoper_on' => 0,
    'mimport_istore_on' => 0,
    'mimport_kqs_on' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54589dc01c7877_36344877',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54589dc01c7877_36344877')) {function content_54589dc01c7877_36344877($_smarty_tpl) {?>


<?php if ($_smarty_tpl->tpl_vars['installed']->value==0) {?>

    <div style="margin: 50px; text-align: center;">
      <form action="<?php echo $_smarty_tpl->tpl_vars['form_action']->value;?>
" method="post">
      <input type="hidden" name="install_now" value="1"/>
      <input type="submit" style="font-size: 30px;" class="button" name="submitMegamoInstall" value="<?php echo smartyTranslate(array('s'=>'Install MyAdmin'),$_smarty_tpl);?>
" />
      </form>
    </div>
<?php } else { ?>

<form action="<?php echo $_smarty_tpl->tpl_vars['form_action']->value;?>
" method="post">
         <fieldset>
            <legend><?php echo smartyTranslate(array('s'=>'MyAdmin - konfiguracja'),$_smarty_tpl);?>
</legend>
            <label><?php echo smartyTranslate(array('s'=>'Adres aktywnej instancji MyAdmin: '),$_smarty_tpl);?>
</label>
            <div class="margin-form">
                <input type="text" name="myadmin_base_url" id="myadmin_base_url" value="<?php echo $_smarty_tpl->tpl_vars['myadmin_base_url']->value;?>
" style="width:310px;"  />
                <?php echo smartyTranslate(array('s'=>"(pozostaw puste aby przywrócić domyślną wartość)"),$_smarty_tpl);?>

                <p class="clear"><?php echo smartyTranslate(array('s'=>"np. 'www.mojsklep.pl/myadmin/' lub 'www.mojadomena.pl/sklep/myadmin/'"),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
        </fieldset>  
        
        <p></p>
         <fieldset>
            <legend> <a href="http://www.megamo.pl" target="_blanc"><?php echo smartyTranslate(array('s'=>'www.megamo.pl'),$_smarty_tpl);?>
</a></legend>
            <label style="line-height: 10px;"><?php echo smartyTranslate(array('s'=>'Zamów rozszerzenia dla Prestashop:'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
                <a style="font-weight: bold; font-size: 12px; color: blue;" class="button" href="http://sklep.megamo.pl/kategoria/prestashop" target="_blanc">Zamawiam</a>
            </div>
        </fieldset> 
   <p></p>
        <fieldset>
            <legend><?php echo smartyTranslate(array('s'=>'M-Aukcje - przygotowywanie i wystawianie aukcji Allegro'),$_smarty_tpl);?>
</legend>
            <label><?php echo smartyTranslate(array('s'=>'Aktywuj'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="maukcje_on" id="maukcje_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['maukcje_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="maukcje_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="maukcje_on" id="maukcje_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['maukcje_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="maukcje_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla M-Aukcje'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
        </fieldset>    
            
            <p></p>
        
         <fieldset>
            <legend><?php echo smartyTranslate(array('s'=>'M-Kurierzy - integracja z Pocztą Polską (e-Nadawca) i firmami kurierskimi'),$_smarty_tpl);?>
</legend>
            <label><?php echo smartyTranslate(array('s'=>'Aktywuj'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mkurierzy_on" id="mkurierzy_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mkurierzy_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mkurierzy_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mkurierzy_on" id="mkurierzy_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mkurierzy_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mkurierzy_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla M-Kurierzy'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
        </fieldset>    
        
        <p></p>        
        
        <fieldset>
            <legend><?php echo smartyTranslate(array('s'=>'M-Import - Szybkie zamówienia (telefoniczne)'),$_smarty_tpl);?>
</legend>
            <label><?php echo smartyTranslate(array('s'=>'Szybkie zamówienia'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_qorder_on" id="mimport_qorder_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mimport_qorder_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_qorder_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_qorder_on" id="mimport_qorder_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mimport_qorder_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_qorder_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenie pozwalające na obsługę szybkich zamówień (np. telefonicznych)'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
         </fieldset>  
         <p></p>
         <fieldset>  
	    <legend><?php echo smartyTranslate(array('s'=>'M-Import - import zamówień z innych platform sprzedaży'),$_smarty_tpl);?>
</legend>
            <label><?php echo smartyTranslate(array('s'=>'Z Allegro'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_allegro_on" id="mimport_allegro_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mimport_allegro_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_allegro_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_allegro_on" id="mimport_allegro_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mimport_allegro_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_allegro_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla importu transakcji z Allegro'),$_smarty_tpl);?>
</p>
                <p></p>
            </div> 
            
            <label><?php echo smartyTranslate(array('s'=>'Z eBay'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_ebay_on" id="mimport_ebay_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mimport_ebay_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_ebay_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_ebay_on" id="mimport_ebay_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mimport_ebay_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_ebay_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla importu transakcji z eBay'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
            
            <label><?php echo smartyTranslate(array('s'=>'Ze sklepów Click-Shop/Shoper'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_shoper_on" id="mimport_shoper_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mimport_shoper_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_shoper_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_shoper_on" id="mimport_shoper_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mimport_shoper_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_shoper_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla importu zamówień ze sklepów ClickShop lub Shoper'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
            
            <label><?php echo smartyTranslate(array('s'=>'Ze sklepów iStore'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_istore_on" id="mimport_istore_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mimport_istore_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_istore_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_istore_on" id="mimport_istore_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mimport_istore_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_istore_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla importu zamówień ze sklepów iStore'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
            
            <label><?php echo smartyTranslate(array('s'=>'Ze sklepów KQS.store'),$_smarty_tpl);?>
</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_kqs_on" id="mimport_kqs_on" value="1"  <?php if ($_smarty_tpl->tpl_vars['mimport_kqs_on']->value==1) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_kqs_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_kqs_on" id="mimport_kqs_off" value="0"  <?php if ($_smarty_tpl->tpl_vars['mimport_kqs_on']->value==0) {?>checked="checked"<?php }?> />
		 <label class="t" for="mimport_kqs_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear"><?php echo smartyTranslate(array('s'=>'Aktywuj rozszerzenia dla importu zamówień ze sklepów KQS.store'),$_smarty_tpl);?>
</p>
                <p></p>
            </div>
        </fieldset>    
        
            
            
        <div class="clear">&nbsp;</div>
        <input type="submit" class="button" name="submitMegamoData" value="<?php echo smartyTranslate(array('s'=>'Update'),$_smarty_tpl);?>
" />
    </fieldset>
    </form>
   <?php }?><?php }} ?>
