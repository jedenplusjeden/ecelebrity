<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 13:45:05
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/helpers/kpi/row.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2080320355545232d183caa3-09690658%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2cb31d311f8b3a428d1fb22bb15fab79593b3d02' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/helpers/kpi/row.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2080320355545232d183caa3-09690658',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'kpis' => 0,
    'kpi' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545232d1843d72_86700452',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545232d1843d72_86700452')) {function content_545232d1843d72_86700452($_smarty_tpl) {?>
<div class="panel kpi-container">
	<div class="row">
		<?php  $_smarty_tpl->tpl_vars['kpi'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['kpi']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['kpis']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['kpi']->key => $_smarty_tpl->tpl_vars['kpi']->value) {
$_smarty_tpl->tpl_vars['kpi']->_loop = true;
?>
		<div class="col-sm-6 col-lg-3">
			<?php echo $_smarty_tpl->tpl_vars['kpi']->value;?>

		</div>			
		<?php } ?>
	</div>
</div><?php }} ?>
