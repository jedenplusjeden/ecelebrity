<?php /* Smarty version Smarty-3.1.19, created on 2014-12-03 12:21:28
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/blockcategories/views/blockcategories_admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1879609435547ef238cfcad2-14763095%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6f351d8acbd72f697cc2b0991c0b8adec0a020cd' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/blockcategories/views/blockcategories_admin.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1879609435547ef238cfcad2-14763095',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'helper' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_547ef238d033e9_18436924',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_547ef238d033e9_18436924')) {function content_547ef238d033e9_18436924($_smarty_tpl) {?><div class="form-group">
	<label class="control-label col-lg-3">
		<span class="label-tooltip" data-toggle="tooltip" data-html="true" title="" data-original-title="<?php echo smartyTranslate(array('s'=>'You can upload a maximum of 3 images.','mod'=>'blockcategories'),$_smarty_tpl);?>
">
			<?php echo smartyTranslate(array('s'=>'Thumbnails','mod'=>'blockcategories'),$_smarty_tpl);?>

		</span>
	</label>
	<div class="col-lg-4">
		<?php echo $_smarty_tpl->tpl_vars['helper']->value;?>

	</div>
</div><?php }} ?>
