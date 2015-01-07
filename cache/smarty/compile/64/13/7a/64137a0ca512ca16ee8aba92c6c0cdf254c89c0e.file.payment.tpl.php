<?php /* Smarty version Smarty-3.1.19, created on 2014-11-02 20:44:47
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/transferuj/views/templates/hook/payment.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1440837410545689af0abe69-11735919%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '64137a0ca512ca16ee8aba92c6c0cdf254c89c0e' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/transferuj/views/templates/hook/payment.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1440837410545689af0abe69-11735919',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'buttonText' => 0,
    'this_path' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545689af0bee08_50558570',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545689af0bee08_50558570')) {function content_545689af0bee08_50558570($_smarty_tpl) {?>
<p class="payment_module">
	<a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getModuleLink('transferuj','payment');?>
" title="<?php echo $_smarty_tpl->tpl_vars['buttonText']->value;?>
">
        <span class="transferuj-text"><?php echo $_smarty_tpl->tpl_vars['buttonText']->value;?>
</span>
        <img src="<?php echo $_smarty_tpl->tpl_vars['this_path']->value;?>
transferuj.jpg" alt="<?php echo $_smarty_tpl->tpl_vars['buttonText']->value;?>
" />
	</a>
</p><?php }} ?>
