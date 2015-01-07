<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 15:14:51
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/not_found/content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:618145319545247db6ea572-76701550%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eaae925ac411f6c7574f02b5ca9979d2eb6dc36a' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/not_found/content.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '618145319545247db6ea572-76701550',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545247db716766_46976246',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545247db716766_46976246')) {function content_545247db716766_46976246($_smarty_tpl) {?>

<?php if (isset($_smarty_tpl->tpl_vars['controller']->value)&&!empty($_smarty_tpl->tpl_vars['controller']->value)&&$_smarty_tpl->tpl_vars['controller']->value!='adminnotfound') {?>
	<h1><?php echo smartyTranslate(array('s'=>'The controller %s is missing or invalid.','sprintf'=>$_smarty_tpl->tpl_vars['controller']->value),$_smarty_tpl);?>
</h1>
<?php }?>
<a class="btn btn-default" href="javascript:window.history.back();">
	<i class="icon-arrow-left"></i>
	<?php echo smartyTranslate(array('s'=>'Back to the previous page'),$_smarty_tpl);?>

</a>
<a class="btn btn-default" href="index.php">
	<i class="icon-dashboard"></i>
	<?php echo smartyTranslate(array('s'=>'Go to the dashboard'),$_smarty_tpl);?>

</a><?php }} ?>
