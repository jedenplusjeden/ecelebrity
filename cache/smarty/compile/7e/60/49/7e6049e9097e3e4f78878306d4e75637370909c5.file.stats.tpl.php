<?php /* Smarty version Smarty-3.1.19, created on 2014-11-28 12:42:42
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/stats/stats.tpl" */ ?>
<?php /*%%SmartyHeaderCode:63399175754785fb29d60e1-42027060%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7e6049e9097e3e4f78878306d4e75637370909c5' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/Backoffice/themes/default/template/controllers/stats/stats.tpl',
      1 => 1410533587,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '63399175754785fb29d60e1-42027060',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_name' => 0,
    'module_instance' => 0,
    'hook' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54785fb29e79a2_72664716',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54785fb29e79a2_72664716')) {function content_54785fb29e79a2_72664716($_smarty_tpl) {?>

		<div class="panel">
			<?php if ($_smarty_tpl->tpl_vars['module_name']->value) {?>
				<?php if ($_smarty_tpl->tpl_vars['module_instance']->value&&$_smarty_tpl->tpl_vars['module_instance']->value->active) {?>
					<?php echo $_smarty_tpl->tpl_vars['hook']->value;?>

				<?php } else { ?>
					<?php echo smartyTranslate(array('s'=>'Module not found'),$_smarty_tpl);?>

				<?php }?>
			<?php } else { ?>
				<h3 class="space"><?php echo smartyTranslate(array('s'=>'Please select a module from the left column.'),$_smarty_tpl);?>
</h3>
			<?php }?>
		</div>
	</div>
</div><?php }} ?>
