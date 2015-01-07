<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 15:29:00
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/products/helpers/tree/tree_toolbar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9090438754524b2c94b6d1-93190443%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a317500e0c6bfed1fcae75b5ddf7b4252a036009' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/products/helpers/tree/tree_toolbar.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9090438754524b2c94b6d1-93190443',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'actions' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54524b2c9774c3_84408005',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54524b2c9774c3_84408005')) {function content_54524b2c9774c3_84408005($_smarty_tpl) {?>
<div class="tree-actions pull-right">
	<?php if (isset($_smarty_tpl->tpl_vars['actions']->value)) {?>
	<?php  $_smarty_tpl->tpl_vars['action'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['action']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['actions']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['action']->key => $_smarty_tpl->tpl_vars['action']->value) {
$_smarty_tpl->tpl_vars['action']->_loop = true;
?>
		<?php echo $_smarty_tpl->tpl_vars['action']->value->render();?>

	<?php } ?>
	<?php }?>
</div><?php }} ?>
