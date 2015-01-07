<?php /* Smarty version Smarty-3.1.19, created on 2014-11-19 15:46:42
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/bankwire/views/templates/hook/payment_return.tpl" */ ?>
<?php /*%%SmartyHeaderCode:988334755546cad52151740-41786025%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '970fb89d24be6024b03236fefd69cd3bbd66c0dc' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/bankwire/views/templates/hook/payment_return.tpl',
      1 => 1413209181,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '988334755546cad52151740-41786025',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'status' => 0,
    'total_to_pay' => 0,
    'bankwireOwner' => 0,
    'bankwireDetails' => 0,
    'bankwireAddress' => 0,
    'reference' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_546cad521a2198_81771546',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_546cad521a2198_81771546')) {function content_546cad521a2198_81771546($_smarty_tpl) {?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='ok') {?>
	<div class="box">
		<p class="cheque-indent">
			<strong class="dark">Dziękujemy za złożenie zamówienia.</strong><br /><br />
		</p>
		Prosimy o dokonanie przelewu na poniższe dane:
		<br />- <?php echo smartyTranslate(array('s'=>'Amount','mod'=>'bankwire'),$_smarty_tpl);?>
 <span class="price"> <strong><?php echo $_smarty_tpl->tpl_vars['total_to_pay']->value;?>
</strong></span>
		<br />- dla <strong><?php if ($_smarty_tpl->tpl_vars['bankwireOwner']->value) {?><?php echo $_smarty_tpl->tpl_vars['bankwireOwner']->value;?>
<?php } else { ?>___________<?php }?></strong>
		<br />- na konto nr <strong><?php if ($_smarty_tpl->tpl_vars['bankwireDetails']->value) {?><?php echo $_smarty_tpl->tpl_vars['bankwireDetails']->value;?>
<?php } else { ?>___________<?php }?></strong>
		<br />- w banku <strong><?php if ($_smarty_tpl->tpl_vars['bankwireAddress']->value) {?><?php echo $_smarty_tpl->tpl_vars['bankwireAddress']->value;?>
<?php } else { ?>___________<?php }?></strong>
		<?php if (!isset($_smarty_tpl->tpl_vars['reference']->value)) {?>
			<br />- W tytule przelewu podaj nr zamówienia: $id_order
		<?php } else { ?>
			<br />- <?php echo smartyTranslate(array('s'=>'W tytule przelewu podaj nr zamówienia: %s','sprintf'=>$_smarty_tpl->tpl_vars['reference']->value,'mod'=>'bankwire'),$_smarty_tpl);?>

		<?php }?>		<br /><br />Informacje o płatności zostały przesłane również na Twój adres email.
		<br /> <strong>Twoje zamówienie zostanie wysłane zaraz po zaksięgowaniu się wpłaty na naszym koncie.</strong>
		<br />W razie pytań lub wątpliwości skontaktuj się z nami.
	</div>
<?php } else { ?>
	<p class="alert alert-warning">
		<?php echo smartyTranslate(array('s'=>'We noticed a problem with your order. If you think this is an error, feel free to contact our','mod'=>'bankwire'),$_smarty_tpl);?>
 
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('contact',true), ENT_QUOTES, 'UTF-8', true);?>
"><?php echo smartyTranslate(array('s'=>'expert customer support team. ','mod'=>'bankwire'),$_smarty_tpl);?>
</a>.
	</p>
<?php }?>
<?php }} ?>
