<?php /* Smarty version Smarty-3.1.19, created on 2014-11-02 20:44:47
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/order-payment.tpl" */ ?>
<?php /*%%SmartyHeaderCode:698265883545689af3e5667-29058864%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3e024a75efeaf6481616e46de56c195e3a956c6d' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/order-payment.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '698265883545689af3e5667-29058864',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'opc' => 0,
    'currencySign' => 0,
    'currencyRate' => 0,
    'currencyFormat' => 0,
    'currencyBlank' => 0,
    'HOOK_TOP_PAYMENT' => 0,
    'HOOK_PAYMENT' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545689af4310c0_89396558',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545689af4310c0_89396558')) {function content_545689af4310c0_89396558($_smarty_tpl) {?>
<?php if (!$_smarty_tpl->tpl_vars['opc']->value) {?>
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('currencySign'=>html_entity_decode($_smarty_tpl->tpl_vars['currencySign']->value,2,"UTF-8")),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('currencyRate'=>floatval($_smarty_tpl->tpl_vars['currencyRate']->value)),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('currencyFormat'=>intval($_smarty_tpl->tpl_vars['currencyFormat']->value)),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('currencyBlank'=>intval($_smarty_tpl->tpl_vars['currencyBlank']->value)),$_smarty_tpl);?>

	<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'txtProduct')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'txtProduct'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'product','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'txtProduct'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>

	<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'txtProducts')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'txtProducts'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'products','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'txtProducts'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>


<?php } else { ?>
<?php }?>

<?php if (!$_smarty_tpl->tpl_vars['opc']->value) {?>
	<?php $_smarty_tpl->tpl_vars['current_step'] = new Smarty_variable('payment', null, 0);?>
	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./order-steps.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./errors.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php } else { ?>
	<div id="opc_payment_methods" class="opc-main-block">
		<div id="opc_payment_methods-overlay" class="opc-overlay" style="display: none;"></div>
<?php }?>
		<div class="paiement_block">
			<div id="HOOK_TOP_PAYMENT"><?php echo $_smarty_tpl->tpl_vars['HOOK_TOP_PAYMENT']->value;?>
</div>
				<?php if ($_smarty_tpl->tpl_vars['HOOK_PAYMENT']->value) {?>
					<?php if (!$_smarty_tpl->tpl_vars['opc']->value) {?>
						<div id="order-detail-content" class="table_block table-responsive">
                            <div id="HOOK_PAYMENT">
                                <h1 class="page-heading"><?php echo smartyTranslate(array('s'=>'Please choose your payment method'),$_smarty_tpl);?>
</h1>
                                <?php echo $_smarty_tpl->tpl_vars['HOOK_PAYMENT']->value;?>

                            </div>

						</div> <!-- end order-detail-content -->
					<?php }?>
				<?php } else { ?>
					<p class="alert alert-warning"><?php echo smartyTranslate(array('s'=>'No payment modules have been installed.'),$_smarty_tpl);?>
</p>
				<?php }?>
				<?php if (!$_smarty_tpl->tpl_vars['opc']->value) {?>
					<p class="cart_navigation clearfix">
						<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('order',true,null,"step=2"), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Previous'),$_smarty_tpl);?>
" class="button-exclusive btn btn-default">
							<i class="icon-chevron-left"></i>
							<?php echo smartyTranslate(array('s'=>'Continue shopping'),$_smarty_tpl);?>

						</a>
					</p>
				<?php } else { ?>
					</div> <!-- end opc_payment_methods -->
				<?php }?>
			</div> <!-- end HOOK_TOP_PAYMENT -->
            <div id="payments_brands">

            </div><?php }} ?>
