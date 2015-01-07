<?php /* Smarty version Smarty-3.1.19, created on 2014-11-02 20:44:47
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/bankwire/views/templates/hook/payment.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1236622493545689af061fa1-85040967%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5ea107d27e13fea2141322089741a2fac80570e9' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/bankwire/views/templates/hook/payment.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1236622493545689af061fa1-85040967',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545689af0a1530_81351452',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545689af0a1530_81351452')) {function content_545689af0a1530_81351452($_smarty_tpl) {?>
<div class="row">
	<div class="col-xs-12 col-md-6">
        <p class="payment_module">
            <a 
            class="bankwire" 
            href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getModuleLink('bankwire','payment'), ENT_QUOTES, 'UTF-8', true);?>
" 
            title="<?php echo smartyTranslate(array('s'=>'Pay by bank wire','mod'=>'bankwire'),$_smarty_tpl);?>
">
            	<?php echo smartyTranslate(array('s'=>'Pay by bank wire','mod'=>'bankwire'),$_smarty_tpl);?>
 <span><?php echo smartyTranslate(array('s'=>'(order processing will be longer)','mod'=>'bankwire'),$_smarty_tpl);?>
</span>
            </a>
        </p>
    </div>
</div><?php }} ?>
