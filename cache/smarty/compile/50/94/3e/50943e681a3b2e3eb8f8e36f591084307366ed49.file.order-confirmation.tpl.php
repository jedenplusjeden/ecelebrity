<?php /* Smarty version Smarty-3.1.19, created on 2014-11-19 15:46:42
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/order-confirmation.tpl" */ ?>
<?php /*%%SmartyHeaderCode:320299958546cad521b5769-44862334%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '50943e681a3b2e3eb8f8e36f591084307366ed49' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/order-confirmation.tpl',
      1 => 1414591466,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '320299958546cad521b5769-44862334',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HOOK_ORDER_CONFIRMATION' => 0,
    'HOOK_PAYMENT_RETURN' => 0,
    'is_guest' => 0,
    'id_order_formatted' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_546cad521dbf18_97956876',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_546cad521dbf18_97956876')) {function content_546cad521dbf18_97956876($_smarty_tpl) {?>

<?php $_smarty_tpl->_capture_stack[0][] = array('path', null, null); ob_start(); ?><?php echo smartyTranslate(array('s'=>'Order confirmation'),$_smarty_tpl);?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php $_smarty_tpl->tpl_vars['current_step'] = new Smarty_variable('payment', null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./order-steps.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./errors.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<div class="clearfix">
    <div class="default-box">
        <?php echo $_smarty_tpl->tpl_vars['HOOK_ORDER_CONFIRMATION']->value;?>

        <?php echo $_smarty_tpl->tpl_vars['HOOK_PAYMENT_RETURN']->value;?>

        <?php if ($_smarty_tpl->tpl_vars['is_guest']->value) {?>
        <p><?php echo smartyTranslate(array('s'=>'Your order ID is:'),$_smarty_tpl);?>
 <span class="bold"><?php echo $_smarty_tpl->tpl_vars['id_order_formatted']->value;?>
</span> . <?php echo smartyTranslate(array('s'=>'Your order ID has been sent via email.'),$_smarty_tpl);?>
</p>
        <?php } else { ?>
    </div>
</div>
<p class="cart_navigation exclusive" style="margin-top: 20px;">
	<a class="button-exclusive btn btn-default" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('history',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Back to orders'),$_smarty_tpl);?>
"><i class="icon-chevron-left"></i><?php echo smartyTranslate(array('s'=>'Back to orders'),$_smarty_tpl);?>
</a>
</p>
<?php }?>
<!-- Google Code for Adwords - Zlozenie zamowienia Conversion Page -->

<script type="text/javascript">

    /* <![CDATA[ */

    var google_conversion_id = 976438407;

    var google_conversion_language = "en";

    var google_conversion_format = "3";

    var google_conversion_color = "ffffff";

    var google_conversion_label = "dy11CNjFnVcQh4nN0QM";

    var google_remarketing_only = false;

    /* ]]> */

</script>

<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">

</script>

<noscript>

    <div style="display:inline;">

        <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/976438407/?label=dy11CNjFnVcQh4nN0QM&amp;guid=ON&amp;script=0"/>

    </div>

</noscript><?php }} ?>
