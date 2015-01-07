<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 15:15:05
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/blockcart/crossselling.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1277732838545247e99de595-88169774%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f914215d6a638dc93c6babde661eae7a3a71f962' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/blockcart/crossselling.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1277732838545247e99de595-88169774',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'orderProducts' => 0,
    'orderProduct' => 0,
    'restricted_country_mode' => 0,
    'PS_CATALOG_MODE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_545247e9a6e650_27400945',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545247e9a6e650_27400945')) {function content_545247e9a6e650_27400945($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['orderProducts']->value)&&count($_smarty_tpl->tpl_vars['orderProducts']->value)>0) {?>
	<div class="crossseling-content">
		<h2><?php echo smartyTranslate(array('s'=>'Customers who bought this product also bought:','mod'=>'blockcart'),$_smarty_tpl);?>
</h2>
		<div id="blockcart_list">
			<ul id="blockcart_caroucel">
				<?php  $_smarty_tpl->tpl_vars['orderProduct'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['orderProduct']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['orderProducts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['orderProduct']->key => $_smarty_tpl->tpl_vars['orderProduct']->value) {
$_smarty_tpl->tpl_vars['orderProduct']->_loop = true;
?>
					<li>
						<div class="product-image-container">
							<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['name']);?>
" class="lnk_img">
								<img class="img-responsive" src="<?php echo $_smarty_tpl->tpl_vars['orderProduct']->value['image'];?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['name']);?>
" />
							</a>
						</div>
						<p class="product-name">
							<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['name']);?>
">
								<?php echo htmlspecialchars($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate($_smarty_tpl->tpl_vars['orderProduct']->value['name'],15,'...'), ENT_QUOTES, 'UTF-8', true);?>

							</a>
						</p>
						<?php if ($_smarty_tpl->tpl_vars['orderProduct']->value['show_price']==1&&!isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value) {?>
							<span class="price_display">
								<span class="price"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['orderProduct']->value['displayed_price']),$_smarty_tpl);?>
</span>
							</span>
						<?php }?>
					</li>
				<?php } ?>
			</ul>
		</div>
	</div>
<?php }?><?php }} ?>
