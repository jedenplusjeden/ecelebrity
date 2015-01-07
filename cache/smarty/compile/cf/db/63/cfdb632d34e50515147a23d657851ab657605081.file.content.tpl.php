<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 13:45:05
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/modules/content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1805706024545232d1849799-21273016%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cfdb632d34e50515147a23d657851ab657605081' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/modules/content.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1805706024545232d1849799-21273016',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545232d18669b3_90949328',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545232d18669b3_90949328')) {function content_545232d18669b3_90949328($_smarty_tpl) {?>

<?php if (isset($_smarty_tpl->tpl_vars['module_content']->value)) {?>
	<?php echo $_smarty_tpl->tpl_vars['module_content']->value;?>

<?php } else { ?>
	<?php if (!isset($_GET['configure'])) {?>
		<?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<?php if (isset($_GET['select'])&&$_GET['select']=='favorites') {?>
			<?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/favorites.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<?php } else { ?>
			<?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<?php }?>
	<?php }?>
<?php }?>
<?php }} ?>
