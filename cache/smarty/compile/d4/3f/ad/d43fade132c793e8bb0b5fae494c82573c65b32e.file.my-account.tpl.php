<?php /* Smarty version Smarty-3.1.19, created on 2014-10-31 10:55:40
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/my-account.tpl" */ ?>
<?php /*%%SmartyHeaderCode:179556450754535c9c101214-38616510%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd43fade132c793e8bb0b5fae494c82573c65b32e' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/my-account.tpl',
      1 => 1412852609,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '179556450754535c9c101214-38616510',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'base_dir' => 0,
    'account_created' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54535c9c131134_79653899',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54535c9c131134_79653899')) {function content_54535c9c131134_79653899($_smarty_tpl) {?>

<?php $_smarty_tpl->_capture_stack[0][] = array('path', null, null); ob_start(); ?><?php echo smartyTranslate(array('s'=>'My account'),$_smarty_tpl);?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<ul class="step clearfix" id="order_step">
    <li class="step_done first">
        Twoje konto
    </li>
    <li class="logout-url"><a href="<?php echo $_smarty_tpl->tpl_vars['base_dir']->value;?>
index.php?mylogout">Wyloguj się</a></li>
</ul>
<?php if (isset($_smarty_tpl->tpl_vars['account_created']->value)) {?>
	<p class="alert alert-success">
		<?php echo smartyTranslate(array('s'=>'Your account has been created.'),$_smarty_tpl);?>

	</p>
<?php }?>
<div class="row addresses-lists">
	<div class="col-xs-12 col-sm-6 col-lg-4">
		<ul class="myaccount-link-list clearfix">

            <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('identity',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Information'),$_smarty_tpl);?>
">Informacje osobiste</a></li>
            <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('order-slip',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Credit slips'),$_smarty_tpl);?>
">Twoje rachunki</a></li>
            <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('addresses',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Addresses'),$_smarty_tpl);?>
">Twoje adresy</a></li>
            <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('history',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Orders'),$_smarty_tpl);?>
">Historia zamówień</a></li>
        </ul>
	</div>
</div><?php }} ?>
