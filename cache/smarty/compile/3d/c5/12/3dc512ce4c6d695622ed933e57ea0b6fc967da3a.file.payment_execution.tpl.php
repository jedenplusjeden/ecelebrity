<?php /* Smarty version Smarty-3.1.19, created on 2014-12-12 15:12:58
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/transferuj/views/templates/front/payment_execution.tpl" */ ?>
<?php /*%%SmartyHeaderCode:206940668548af7eac130f4-14622677%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3dc512ce4c6d695622ed933e57ea0b6fc967da3a' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/modules/transferuj/views/templates/front/payment_execution.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '206940668548af7eac130f4-14622677',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'kwota' => 0,
    'currency' => 0,
    'link' => 0,
    'seckey' => 0,
    'sid' => 0,
    'mail' => 0,
    'nazwisko' => 0,
    'imie' => 0,
    'adres' => 0,
    'miasto' => 0,
    'kraj' => 0,
    'kod' => 0,
    'jezyk' => 0,
    'crc' => 0,
    'telefon' => 0,
    'goBackUrl' => 0,
    'goBackUrlError' => 0,
    'notify' => 0,
    'chan' => 0,
    'reg' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_548af7eac99162_70363335',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_548af7eac99162_70363335')) {function content_548af7eac99162_70363335($_smarty_tpl) {?><ul class="step clearfix" id="order_step">
    <li class="step_done first">
        <a href="http://www.ecelebrity.eu/zamowienie">
            <em>1.</em> Koszyk
        </a>
    </li>
    <li class="step_done step_done_last second">
        <a href="http://www.ecelebrity.eu/zamowienie?step=1&amp;multi-shipping=">
            <em>2.</em> Zaloguj się
        </a>
    </li>
    <li class="step_done third">
        <span><em>3.</em> Adres</span>
    </li>
    <li class="step_done four">
        <span><em>4.</em> Wysyłka</span>
    </li>
    <li id="step_end" class="step_current last">
        <span><em>5.</em> Płatność</span>
    </li>
</ul>
<?php $_smarty_tpl->tpl_vars['current_step'] = new Smarty_variable('payment', null, 0);?>

<div style="width: 50%;">
    <img src="/themes/default-bootstrap/img/transferuj.png" alt="<?php echo smartyTranslate(array('s'=>'Płać z Transferuj.pl','mod'=>'transferuj'),$_smarty_tpl);?>
" style="margin-bottom: 5px" />

    <p style="margin-top:20px; border-bottom: 1px solid #000; padding-bottom: 10px;margin-bottom: 10px;">
        Kwota do zapłaty: <b><span class="price"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPriceWithCurrency'][0][0]->convertPriceWithCurrency(array('price'=>$_smarty_tpl->tpl_vars['kwota']->value,'currency'=>$_smarty_tpl->tpl_vars['currency']->value),$_smarty_tpl);?>
</span></b>
    </p>
    <p>
    <form action="<?php echo $_smarty_tpl->tpl_vars['link']->value->getModuleLink('transferuj','validation',array(),true);?>
" method="post" id="transferujForm" name="transferujForm">
        <input type="hidden" name="confirm" value=<?php echo $_smarty_tpl->tpl_vars['seckey']->value;?>
 />
        <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['sid']->value;?>
" />
        <input type="hidden" name="kwota" value="<?php echo $_smarty_tpl->tpl_vars['kwota']->value;?>
" />
        <input type="hidden" name="email" value="<?php echo $_smarty_tpl->tpl_vars['mail']->value;?>
" />
        <input type="hidden" name="nazwisko" value="<?php echo $_smarty_tpl->tpl_vars['nazwisko']->value;?>
" />
        <input type="hidden" name="imie" value="<?php echo $_smarty_tpl->tpl_vars['imie']->value;?>
" />
        <input type="hidden" name="adres" value="<?php echo $_smarty_tpl->tpl_vars['adres']->value;?>
" />
        <input type="hidden" name="miasto" value="<?php echo $_smarty_tpl->tpl_vars['miasto']->value;?>
" />
        <input type="hidden" name="kraj" value="<?php echo $_smarty_tpl->tpl_vars['kraj']->value;?>
" />
        <input type="hidden" name="kod" value="<?php echo $_smarty_tpl->tpl_vars['kod']->value;?>
" />
        <input type="hidden" name="jezyk" value="<?php echo $_smarty_tpl->tpl_vars['jezyk']->value;?>
" />
        <input type="hidden" name="cart" value="<?php echo $_smarty_tpl->tpl_vars['crc']->value;?>
" />
        <input type="hidden" name="telefon" value="<?php echo $_smarty_tpl->tpl_vars['telefon']->value;?>
" />
        <input type="hidden" name="pow_url" value="<?php echo $_smarty_tpl->tpl_vars['goBackUrl']->value;?>
" />
        <input type="hidden" name="pow_url_blad" value="<?php echo $_smarty_tpl->tpl_vars['goBackUrlError']->value;?>
" />
        <input type="hidden" name="wyn_url" value="<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>
" />
        <?php echo $_smarty_tpl->tpl_vars['chan']->value;?>

        <?php echo $_smarty_tpl->tpl_vars['reg']->value;?>

    </p>
    <div class="transferuj-pay clearfix">
        <p class="cart_navigation">
            <a href="#" class="exclusive_large" onclick="$('#transferujForm').submit();return false;">Potwierdzam</a>
        </p>
        <p> lub </p>
        <p><a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink('order.php',true);?>
?step=3">Zmień metodę płatności</a></p>
    </div>
    </form>
</div>
<?php }} ?>
