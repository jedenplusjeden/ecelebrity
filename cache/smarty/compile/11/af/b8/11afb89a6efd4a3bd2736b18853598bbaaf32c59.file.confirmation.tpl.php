<?php /* Smarty version Smarty-3.1.19, created on 2014-12-12 17:03:37
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/cashondelivery/views/templates/hook/confirmation.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1055109077548b11d9451242-39292098%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11afb89a6efd4a3bd2736b18853598bbaaf32c59' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/cashondelivery/views/templates/hook/confirmation.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1055109077548b11d9451242-39292098',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'shop_name' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_548b11d9484e77_93105858',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_548b11d9484e77_93105858')) {function content_548b11d9484e77_93105858($_smarty_tpl) {?>
<div class="box">
    <p><?php echo smartyTranslate(array('s'=>'Your order on','mod'=>'cashondelivery'),$_smarty_tpl);?>
 <span class="bold"><?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>
</span> <?php echo smartyTranslate(array('s'=>'is complete.','mod'=>'cashondelivery'),$_smarty_tpl);?>

        <br />
        <?php echo smartyTranslate(array('s'=>'You have chosen the cash on delivery method.','mod'=>'cashondelivery'),$_smarty_tpl);?>

        <br /><span class="bold"><?php echo smartyTranslate(array('s'=>'Your order will be sent very soon.','mod'=>'cashondelivery'),$_smarty_tpl);?>
</span>
        <br /><?php echo smartyTranslate(array('s'=>'For any questions or for further information, please contact our','mod'=>'cashondelivery'),$_smarty_tpl);?>
 <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('contact-form',true), ENT_QUOTES, 'UTF-8', true);?>
"><?php echo smartyTranslate(array('s'=>'customer support','mod'=>'cashondelivery'),$_smarty_tpl);?>
</a>.
    </p>
</div><?php }} ?>
