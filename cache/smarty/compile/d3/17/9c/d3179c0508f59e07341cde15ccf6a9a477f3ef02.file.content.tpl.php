<?php /* Smarty version Smarty-3.1.19, created on 2014-11-04 12:37:56
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/cms_content/content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18164575775458ba94b4fe87-73905729%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd3179c0508f59e07341cde15ccf6a9a477f3ef02' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/cms_content/content.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18164575775458ba94b4fe87-73905729',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'cms_breadcrumb' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5458ba94b79c97_19153758',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5458ba94b79c97_19153758')) {function content_5458ba94b79c97_19153758($_smarty_tpl) {?>

<?php if (isset($_smarty_tpl->tpl_vars['cms_breadcrumb']->value)) {?>
	<ul class="breadcrumb cat_bar">
		<?php echo $_smarty_tpl->tpl_vars['cms_breadcrumb']->value;?>

	</ul>
<?php }?>

<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

<?php }} ?>
