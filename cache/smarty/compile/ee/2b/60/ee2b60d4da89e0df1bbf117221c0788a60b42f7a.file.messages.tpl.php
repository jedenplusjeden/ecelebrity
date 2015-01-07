<?php /* Smarty version Smarty-3.1.19, created on 2014-11-03 12:01:58
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/themeconfigurator/views/templates/admin/messages.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1680089413545760a6153a17-27239413%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ee2b60d4da89e0df1bbf117221c0788a60b42f7a' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/themeconfigurator/views/templates/admin/messages.tpl',
      1 => 1413213173,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1680089413545760a6153a17-27239413',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'id' => 0,
    'text' => 0,
    'class' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545760a61a5734_76206473',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545760a61a5734_76206473')) {function content_545760a61a5734_76206473($_smarty_tpl) {?>

<div id="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['id']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
-response" <?php if (!isset($_smarty_tpl->tpl_vars['text']->value)) {?>style="display:none;"<?php }?> class="message alert alert-<?php if (isset($_smarty_tpl->tpl_vars['class']->value)&&$_smarty_tpl->tpl_vars['class']->value=='error') {?>danger<?php } else { ?>success<?php }?>">
	<div><?php if (isset($_smarty_tpl->tpl_vars['text']->value)) {?><?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['text']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<?php }?></div>
</div><?php }} ?>
