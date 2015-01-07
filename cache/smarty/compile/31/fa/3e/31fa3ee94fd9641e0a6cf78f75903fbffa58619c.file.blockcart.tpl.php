<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 13:45:57
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/blockcart/blockcart.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1651505181545233052851d5-84948890%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '31fa3ee94fd9641e0a6cf78f75903fbffa58619c' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/blockcart/blockcart.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1651505181545233052851d5-84948890',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'blockcart_top' => 0,
    'PS_CATALOG_MODE' => 0,
    'order_process' => 0,
    'link' => 0,
    'cart_qties' => 0,
    'ajax_allowed' => 0,
    'colapseExpandStatus' => 0,
    'products' => 0,
    'product' => 0,
    'priceDisplay' => 0,
    'active_overlay' => 0,
    'cart' => 0,
    'show_wrapping' => 0,
    'shipping_cost_float' => 0,
    'shipping_cost' => 0,
    'show_tax' => 0,
    'tax_cost' => 0,
    'CUSTOMIZE_TEXTFIELD' => 0,
    'img_dir' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54523305469248_55193875',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54523305469248_55193875')) {function content_54523305469248_55193875($_smarty_tpl) {?><?php if (!is_callable('smarty_function_counter')) include '/var/www/vhosts/ecelebrity.eu/httpdocs/tools/smarty/plugins/function.counter.php';
?>
<!-- MODULE Block cart -->
<?php if (isset($_smarty_tpl->tpl_vars['blockcart_top']->value)&&$_smarty_tpl->tpl_vars['blockcart_top']->value) {?>
<div class="col-sm-4 clearfix<?php if ($_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value) {?> header_user_catalog<?php }?>">
<?php }?>
	<div class="shopping_cart">
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink($_smarty_tpl->tpl_vars['order_process']->value,true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my shopping cart','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow">
			<b><?php echo smartyTranslate(array('s'=>'Cart','mod'=>'blockcart'),$_smarty_tpl);?>
</b>
			<span class="ajax_cart_quantity<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value==0) {?> unvisible<?php }?>"></span>
			<span class="ajax_cart_product_txt<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value!=1) {?> unvisible<?php }?>"><?php echo smartyTranslate(array('s'=>'Product','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
			<span class="ajax_cart_product_txt_s<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value<2) {?> unvisible<?php }?>"><?php echo smartyTranslate(array('s'=>'Products','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
			<span class="ajax_cart_total<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value==0) {?> unvisible<?php }?>">
                <?php echo $_smarty_tpl->tpl_vars['cart_qties']->value;?>
 szt.
			</span>
			<span class="ajax_cart_no_product<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0) {?> unvisible<?php }?>"><?php echo smartyTranslate(array('s'=>'(empty)','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
			<?php if ($_smarty_tpl->tpl_vars['ajax_allowed']->value&&isset($_smarty_tpl->tpl_vars['blockcart_top']->value)&&!$_smarty_tpl->tpl_vars['blockcart_top']->value) {?>
				<span class="block_cart_expand<?php if (!isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)||(isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='expanded')) {?> unvisible<?php }?>">&nbsp;</span>
				<span class="block_cart_collapse<?php if (isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='collapsed') {?> unvisible<?php }?>">&nbsp;</span>
			<?php }?>
		</a>
		<?php if (!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value) {?>
			<div class="cart_block block exclusive">
				<div class="block_content">
					<!-- block list of products -->
					<div id="magni_cart_block" class="cart_block_list<?php if (isset($_smarty_tpl->tpl_vars['blockcart_top']->value)&&!$_smarty_tpl->tpl_vars['blockcart_top']->value) {?><?php if (isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='expanded'||!$_smarty_tpl->tpl_vars['ajax_allowed']->value||!isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)) {?> expanded<?php } else { ?> collapsed unvisible<?php }?><?php }?>">
						<?php if ($_smarty_tpl->tpl_vars['products']->value) {?>
							<dl class="products">
								<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['products']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['product']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['product']->iteration=0;
 $_smarty_tpl->tpl_vars['product']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
 $_smarty_tpl->tpl_vars['product']->iteration++;
 $_smarty_tpl->tpl_vars['product']->index++;
 $_smarty_tpl->tpl_vars['product']->first = $_smarty_tpl->tpl_vars['product']->index === 0;
 $_smarty_tpl->tpl_vars['product']->last = $_smarty_tpl->tpl_vars['product']->iteration === $_smarty_tpl->tpl_vars['product']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['first'] = $_smarty_tpl->tpl_vars['product']->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['last'] = $_smarty_tpl->tpl_vars['product']->last;
?>
									<?php $_smarty_tpl->tpl_vars['productId'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['id_product'], null, 0);?>
									<?php $_smarty_tpl->tpl_vars['productAttributeId'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['id_product_attribute'], null, 0);?>
									<dt data-id="cart_block_product_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php if ($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']) {?><?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
<?php } else { ?>0<?php }?>_<?php if ($_smarty_tpl->tpl_vars['product']->value['id_address_delivery']) {?><?php echo $_smarty_tpl->tpl_vars['product']->value['id_address_delivery'];?>
<?php } else { ?>0<?php }?>" class="<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['first']) {?>first_item<?php } elseif ($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['last']) {?>last_item<?php } else { ?>item<?php }?>">
										<a class="cart-images" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category']), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['id_image'],'cart_default');?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
" /></a>
										<div class="cart-info">
                                            <div class="cart-info-left">
                                                <div class="product-name">
                                                    <span class="quantity-formated"><span class="quantity"><?php echo $_smarty_tpl->tpl_vars['product']->value['cart_quantity'];?>
</span>&nbsp;x&nbsp;</span><a class="cart_block_product_name" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['product']->value,$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category'],null,null,$_smarty_tpl->tpl_vars['product']->value['id_shop'],$_smarty_tpl->tpl_vars['product']->value['id_product_attribute']), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
"><?php echo htmlspecialchars($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate($_smarty_tpl->tpl_vars['product']->value['name'],13,'...'), ENT_QUOTES, 'UTF-8', true);?>
</a>
                                                </div>
                                                <?php if (isset($_smarty_tpl->tpl_vars['product']->value['attributes_small'])) {?>
                                                    <div class="product-atributes">
                                                        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['product']->value,$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category'],null,null,$_smarty_tpl->tpl_vars['product']->value['id_shop'],$_smarty_tpl->tpl_vars['product']->value['id_product_attribute']), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Product detail','mod'=>'blockcart'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['product']->value['attributes_small'];?>
</a>
                                                    </div>
                                                <?php }?>
                                            </div>
											<span class="price">
												<?php if (!isset($_smarty_tpl->tpl_vars['product']->value['is_gift'])||!$_smarty_tpl->tpl_vars['product']->value['is_gift']) {?>
													<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==@constant('PS_TAX_EXC')) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['displayWtPrice'][0][0]->displayWtPrice(array('p'=>((string)$_smarty_tpl->tpl_vars['product']->value['total'])),$_smarty_tpl);?>
<?php } else { ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['displayWtPrice'][0][0]->displayWtPrice(array('p'=>((string)$_smarty_tpl->tpl_vars['product']->value['total_wt'])),$_smarty_tpl);?>
<?php }?>
												<?php } else { ?>
													<?php echo smartyTranslate(array('s'=>'Free!','mod'=>'blockcart'),$_smarty_tpl);?>

												<?php }?>
											</span>
										</div>

									</dt>
									<?php if (isset($_smarty_tpl->tpl_vars['product']->value['attributes_small'])) {?></dd><?php }?>
								<?php } ?>
							</dl>
						<?php }?>
						<p class="cart_block_no_products<?php if ($_smarty_tpl->tpl_vars['products']->value) {?> unvisible<?php }?>">
							<?php echo smartyTranslate(array('s'=>'No products','mod'=>'blockcart'),$_smarty_tpl);?>

						</p>
						<p class="cart-buttons clearfix">
                            <a id="button_order_cart_close" class="btn btn-default button button-small" href="#" rel="nofollow">Kontynuuj zakupy</a>
							<a id="button_order_cart" class="btn btn-default button button-small gotocart" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Check out','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow">Przejdź do realizacji zamówienia</a>
						</p>
					</div>
				</div>
			</div><!-- .cart_block -->
		<?php }?>
	</div>
<?php if (isset($_smarty_tpl->tpl_vars['blockcart_top']->value)&&$_smarty_tpl->tpl_vars['blockcart_top']->value) {?>
</div>
<?php }?>
<?php echo smarty_function_counter(array('name'=>'active_overlay','assign'=>'active_overlay'),$_smarty_tpl);?>

<?php if (!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value&&$_smarty_tpl->tpl_vars['active_overlay']->value==1) {?>
	<div id="layer_cart">
		<div class="clearfix">
			<div class="layer_cart_product col-xs-12 col-md-6">
				<span class="cross" title="<?php echo smartyTranslate(array('s'=>'Close window','mod'=>'blockcart'),$_smarty_tpl);?>
"></span>
				<h2>
					<i class="icon-ok"></i><?php echo smartyTranslate(array('s'=>'Product successfully added to your shopping cart','mod'=>'blockcart'),$_smarty_tpl);?>

				</h2>
				<div class="product-image-container layer_cart_img">
				</div>
				<div class="layer_cart_product_info">
					<span id="layer_cart_product_title" class="product-name"></span>
					<span id="layer_cart_product_attributes"></span>
					<div>
						<strong class="dark"><?php echo smartyTranslate(array('s'=>'Quantity','mod'=>'blockcart'),$_smarty_tpl);?>
</strong>
						<span id="layer_cart_product_quantity"></span>
					</div>
					<div>
						<strong class="dark"><?php echo smartyTranslate(array('s'=>'Total','mod'=>'blockcart'),$_smarty_tpl);?>
</strong>
						<span id="layer_cart_product_price"></span>
					</div>
				</div>
			</div>
			<div class="layer_cart_cart col-xs-12 col-md-6">
				<h2>
					<!-- Plural Case [both cases are needed because page may be updated in Javascript] -->
					<span class="ajax_cart_product_txt_s <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value<2) {?> unvisible<?php }?>">
						<?php echo smartyTranslate(array('s'=>'There are [1]%d[/1] items in your cart.','mod'=>'blockcart','sprintf'=>array($_smarty_tpl->tpl_vars['cart_qties']->value),'tags'=>array('<span class="ajax_cart_quantity">')),$_smarty_tpl);?>

					</span>
					<!-- Singular Case [both cases are needed because page may be updated in Javascript] -->
					<span class="ajax_cart_product_txt <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>1) {?> unvisible<?php }?>">
						<?php echo smartyTranslate(array('s'=>'There is 1 item in your cart.','mod'=>'blockcart'),$_smarty_tpl);?>

					</span>
				</h2>
	
				<div class="layer_cart_row">
					<strong class="dark">
						<?php echo smartyTranslate(array('s'=>'Total products','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1) {?>
							<?php echo smartyTranslate(array('s'=>'(tax excl.)','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php } else { ?>
							<?php echo smartyTranslate(array('s'=>'(tax incl.)','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php }?>
					</strong>
					<span class="ajax_block_products_total">
						<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0) {?>
							<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false,Cart::ONLY_PRODUCTS)),$_smarty_tpl);?>

						<?php }?>
					</span>
				</div>
	
				<?php if ($_smarty_tpl->tpl_vars['show_wrapping']->value) {?>
					<div class="layer_cart_row">
						<strong class="dark">
							<?php echo smartyTranslate(array('s'=>'Wrapping','mod'=>'blockcart'),$_smarty_tpl);?>

							<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1) {?>
								<?php echo smartyTranslate(array('s'=>'(tax excl.)','mod'=>'blockcart'),$_smarty_tpl);?>

							<?php } else { ?>
								<?php echo smartyTranslate(array('s'=>'(tax incl.)','mod'=>'blockcart'),$_smarty_tpl);?>

							<?php }?>
						</strong>
						<span class="price cart_block_wrapping_cost">
							<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1) {?>
								<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false,Cart::ONLY_WRAPPING)),$_smarty_tpl);?>

							<?php } else { ?>
								<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(true,Cart::ONLY_WRAPPING)),$_smarty_tpl);?>

							<?php }?>
						</span>
					</div>
				<?php }?>
				<div class="layer_cart_row">
					<strong class="dark">
						<?php echo smartyTranslate(array('s'=>'Total shipping','mod'=>'blockcart'),$_smarty_tpl);?>
&nbsp;<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1) {?><?php echo smartyTranslate(array('s'=>'(tax excl.)','mod'=>'blockcart'),$_smarty_tpl);?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'(tax incl.)','mod'=>'blockcart'),$_smarty_tpl);?>
<?php }?>
					</strong>
					<span class="ajax_cart_shipping_cost">
						<?php if ($_smarty_tpl->tpl_vars['shipping_cost_float']->value==0) {?>
							<?php echo smartyTranslate(array('s'=>'Free shipping!','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php } else { ?>
							<?php echo $_smarty_tpl->tpl_vars['shipping_cost']->value;?>

						<?php }?>
					</span>
				</div>
				<?php if ($_smarty_tpl->tpl_vars['show_tax']->value&&isset($_smarty_tpl->tpl_vars['tax_cost']->value)) {?>
					<div class="layer_cart_row">
						<strong class="dark"><?php echo smartyTranslate(array('s'=>'Tax','mod'=>'blockcart'),$_smarty_tpl);?>
</strong>
						<span class="price cart_block_tax_cost ajax_cart_tax_cost"><?php echo $_smarty_tpl->tpl_vars['tax_cost']->value;?>
</span>
					</div>
				<?php }?>
				<div class="layer_cart_row">	
					<strong class="dark">
						<?php echo smartyTranslate(array('s'=>'Total','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1) {?>
							<?php echo smartyTranslate(array('s'=>'(tax excl.)','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php } else { ?>
							<?php echo smartyTranslate(array('s'=>'(tax incl.)','mod'=>'blockcart'),$_smarty_tpl);?>

						<?php }?>
					</strong>
					<span class="ajax_block_cart_total">
						<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0) {?>
							<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1) {?>
								<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false)),$_smarty_tpl);?>

							<?php } else { ?>
								<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(true)),$_smarty_tpl);?>

							<?php }?>
						<?php }?>
					</span>
				</div>
				<div class="button-container">	
					<span class="continue btn btn-default button exclusive-medium" title="<?php echo smartyTranslate(array('s'=>'Continue shopping','mod'=>'blockcart'),$_smarty_tpl);?>
">
						<span>
							<i class="icon-chevron-left left"></i><?php echo smartyTranslate(array('s'=>'Continue shopping','mod'=>'blockcart'),$_smarty_tpl);?>

						</span>
					</span>
					<a class="btn btn-default button button-medium"	href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Proceed to checkout','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow">
						<span>
							<?php echo smartyTranslate(array('s'=>'Proceed to checkout','mod'=>'blockcart'),$_smarty_tpl);?>
<i class="icon-chevron-right right"></i>
						</span>
					</a>	
				</div>
			</div>
		</div>
		<div class="crossseling"></div>
	</div> <!-- #layer_cart -->
	<div class="layer_cart_overlay"></div>
<?php }?>
<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('CUSTOMIZE_TEXTFIELD'=>$_smarty_tpl->tpl_vars['CUSTOMIZE_TEXTFIELD']->value),$_smarty_tpl);?>
<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('img_dir'=>addslashes($_smarty_tpl->tpl_vars['img_dir']->value)),$_smarty_tpl);?>
<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('generated_date'=>intval(time())),$_smarty_tpl);?>
<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('ajax_allowed'=>$_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['boolval'][0][0]->boolval($_smarty_tpl->tpl_vars['ajax_allowed']->value)),$_smarty_tpl);?>
<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'customizationIdMessage')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'customizationIdMessage'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'Customization #','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'customizationIdMessage'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'removingLinkText')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'removingLinkText'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'remove this product from my cart','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'removingLinkText'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'freeShippingTranslation')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'freeShippingTranslation'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'Free shipping!','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'freeShippingTranslation'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'freeProductTranslation')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'freeProductTranslation'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'Free!','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'freeProductTranslation'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
<?php $_smarty_tpl->smarty->_tag_stack[] = array('addJsDefL', array('name'=>'delete_txt')); $_block_repeat=true; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'delete_txt'), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
<?php echo smartyTranslate(array('s'=>'Delete','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo $_smarty_tpl->smarty->registered_plugins['block']['addJsDefL'][0][0]->addJsDefL(array('name'=>'delete_txt'), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>

<!-- /MODULE Block cart --><?php }} ?>
