<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 15:29:00
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/helpers/list/list_action_duplicate.tpl" */ ?>
<?php /*%%SmartyHeaderCode:111783393854524b2cdc8955-30943985%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '114ec915c799d7bcebc5152d5e9b8d0d749052af' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/helpers/list/list_action_duplicate.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '111783393854524b2cdc8955-30943985',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'action' => 0,
    'confirm' => 0,
    'location_ok' => 0,
    'location_ko' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54524b2cdd8304_65155518',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54524b2cdd8304_65155518')) {function content_54524b2cdd8304_65155518($_smarty_tpl) {?>
<a href="#" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['action']->value, ENT_QUOTES, 'UTF-8', true);?>
" onclick="if (confirm('<?php echo $_smarty_tpl->tpl_vars['confirm']->value;?>
')) document.location = '<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['location_ok']->value, ENT_QUOTES, 'UTF-8', true);?>
'; else document.location = '<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['location_ko']->value, ENT_QUOTES, 'UTF-8', true);?>
'; return false;">
	<i class="icon-copy"></i> <?php echo $_smarty_tpl->tpl_vars['action']->value;?>

</a><?php }} ?>
