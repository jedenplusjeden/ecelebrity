<?php /* Smarty version Smarty-3.1.19, created on 2014-11-19 15:20:36
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/addresses.tpl" */ ?>
<?php /*%%SmartyHeaderCode:223433609546ca73437e379-47112914%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '161ebd17255e7cead92914e8113aa01f4a2a2032' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/addresses.tpl',
      1 => 1412766561,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '223433609546ca73437e379-47112914',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'navigationPipe' => 0,
    'multipleAddresses' => 0,
    'addresses_style' => 0,
    'addresses' => 0,
    'address' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_546ca7343f5d99_80411621',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_546ca7343f5d99_80411621')) {function content_546ca7343f5d99_80411621($_smarty_tpl) {?>
<?php $_smarty_tpl->_capture_stack[0][] = array('path', null, null); ob_start(); ?><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
"><?php echo smartyTranslate(array('s'=>'My account'),$_smarty_tpl);?>
</a><span class="navigation-pipe"><?php echo $_smarty_tpl->tpl_vars['navigationPipe']->value;?>
</span><span class="navigation_page"><?php echo smartyTranslate(array('s'=>'My addresses'),$_smarty_tpl);?>
</span><?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<ul class="step clearfix" id="order_step">
    <li class="step_done first">
        Twoje konto
    </li>
    <li class="step_current second">
        Twoje adresy
    </li>
</ul>
<p><?php echo smartyTranslate(array('s'=>'Please configure your default billing and delivery addresses when placing an order. You may also add additional addresses, which can be useful for sending gifts or receiving an order at your office.'),$_smarty_tpl);?>
</p>
<?php if (isset($_smarty_tpl->tpl_vars['multipleAddresses']->value)&&$_smarty_tpl->tpl_vars['multipleAddresses']->value) {?>
<div class="addresses">
	<p class="p-indent"><?php echo smartyTranslate(array('s'=>'Be sure to update your personal information if it has changed.'),$_smarty_tpl);?>
</p>
    <div class="clearfix main-page-indent" style="margin-bottom: 20px;margin-top: 12px;">
        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('address',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Add an address'),$_smarty_tpl);?>
" class="btn btn-default button button-medium"><span><?php echo smartyTranslate(array('s'=>'Add a new address'),$_smarty_tpl);?>
<i class="icon-chevron-right right"></i></span></a>
    </div>
	<?php $_smarty_tpl->tpl_vars["adrs_style"] = new Smarty_variable($_smarty_tpl->tpl_vars['addresses_style']->value, null, 0);?>
	<div class="bloc_adresses row">
        <div class="adresses-info-wrapper clearfix">
            <?php  $_smarty_tpl->tpl_vars['address'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['address']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['addresses']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['address']->key => $_smarty_tpl->tpl_vars['address']->value) {
$_smarty_tpl->tpl_vars['address']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['address']->key;
?>
                <div class="address-info">
                    <div class="address-info-title"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['alias'], ENT_QUOTES, 'UTF-8', true);?>
</div>
                    <p><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['firstname'], ENT_QUOTES, 'UTF-8', true);?>
</p>
                    <p><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['lastname'], ENT_QUOTES, 'UTF-8', true);?>
</p>
                    <p><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['city'], ENT_QUOTES, 'UTF-8', true);?>
, <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['address1'], ENT_QUOTES, 'UTF-8', true);?>
 <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['postcode'], ENT_QUOTES, 'UTF-8', true);?>
</p>
                    <p><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['country'], ENT_QUOTES, 'UTF-8', true);?>
</p>
                    <p><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['phone_mobile'], ENT_QUOTES, 'UTF-8', true);?>
</p>
                    <p><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['phone'], ENT_QUOTES, 'UTF-8', true);?>
</p>
                    <div style="margin-top: 20px;">
                        <a class="button" href="/address?id_address=<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['id_address'], ENT_QUOTES, 'UTF-8', true);?>
">Uaktualnij</a>
                        <a class="button" href="/address?id_address=<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['address']->value['id_address'], ENT_QUOTES, 'UTF-8', true);?>
&delete=">Usuń</a>
                    </div>
                </div>
            <?php } ?>
        </div>
	</div>
</div>
<?php } else { ?>
	<p class="alert alert-warning"><?php echo smartyTranslate(array('s'=>'No addresses are available.'),$_smarty_tpl);?>
&nbsp;<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('address',true), ENT_QUOTES, 'UTF-8', true);?>
"><?php echo smartyTranslate(array('s'=>'Add a new address'),$_smarty_tpl);?>
</a></p>
<?php }?>
<?php }} ?>
