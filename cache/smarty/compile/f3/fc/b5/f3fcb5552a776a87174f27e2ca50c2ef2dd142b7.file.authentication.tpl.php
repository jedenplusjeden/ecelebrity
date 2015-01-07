<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 15:31:42
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/authentication.tpl" */ ?>
<?php /*%%SmartyHeaderCode:190398533654524bcec665f5-17751213%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f3fcb5552a776a87174f27e2ca50c2ef2dd142b7' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/authentication.tpl',
      1 => 1412948471,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '190398533654524bcec665f5-17751213',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'email_create' => 0,
    'link' => 0,
    'navigationPipe' => 0,
    'back' => 0,
    'authentification_error' => 0,
    'account_error' => 0,
    'v' => 0,
    'inOrderProcess' => 0,
    'PS_GUEST_CHECKOUT_ENABLED' => 0,
    'dlv_all_fields' => 0,
    'field_name' => 0,
    'b2b_enable' => 0,
    'newsletter' => 0,
    'countries' => 0,
    'sl_country' => 0,
    'stateExist' => 0,
    'postCodeExist' => 0,
    'dniExist' => 0,
    'one_phone_at_least' => 0,
    'guestInformations' => 0,
    'inv_all_fields' => 0,
    'HOOK_CREATE_ACCOUNT_FORM' => 0,
    'HOOK_CREATE_ACCOUNT_TOP' => 0,
    'PS_REGISTRATION_PROCESS_TYPE' => 0,
    'address' => 0,
    'vatnumber_ajax_call' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54524bcf1b4c04_23137362',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54524bcf1b4c04_23137362')) {function content_54524bcf1b4c04_23137362($_smarty_tpl) {?>
<?php $_smarty_tpl->_capture_stack[0][] = array('path', null, null); ob_start(); ?>
    <?php if (!isset($_smarty_tpl->tpl_vars['email_create']->value)) {?><?php echo smartyTranslate(array('s'=>'Authentication'),$_smarty_tpl);?>
<?php } else { ?>
        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('authentication',true), ENT_QUOTES, 'UTF-8', true);?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Authentication'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Authentication'),$_smarty_tpl);?>
</a>
        <span class="navigation-pipe"><?php echo $_smarty_tpl->tpl_vars['navigationPipe']->value;?>
</span><?php echo smartyTranslate(array('s'=>'Create your account'),$_smarty_tpl);?>

    <?php }?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<h1 class="page-heading"><?php if (!isset($_smarty_tpl->tpl_vars['email_create']->value)) {?><?php echo smartyTranslate(array('s'=>'Authentication'),$_smarty_tpl);?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'Create an account'),$_smarty_tpl);?>
<?php }?></h1>
<?php if (isset($_smarty_tpl->tpl_vars['back']->value)&&preg_match("/^http/",$_smarty_tpl->tpl_vars['back']->value)) {?><?php $_smarty_tpl->tpl_vars['current_step'] = new Smarty_variable('login', null, 0);?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./order-steps.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }?>

<ul class="step clearfix" id="order_step">
    <li class="step_done first">
        Rejestracja
    </li>
</ul>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./errors.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(false, null, 0);?>
<?php $_smarty_tpl->tpl_vars["postCodeExist"] = new Smarty_variable(false, null, 0);?>
<?php $_smarty_tpl->tpl_vars["dniExist"] = new Smarty_variable(false, null, 0);?>
<?php if (!isset($_smarty_tpl->tpl_vars['email_create']->value)) {?>
    <!--<?php if (isset($_smarty_tpl->tpl_vars['authentification_error']->value)) {?>
	<div class="alert alert-danger">
		<?php ob_start();?><?php echo count($_smarty_tpl->tpl_vars['authentification_error']->value);?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1==1) {?>
			<p><?php echo smartyTranslate(array('s'=>'There\'s at least one error'),$_smarty_tpl);?>
 :</p>
			<?php } else { ?>
			<p><?php echo smartyTranslate(array('s'=>'There are %s errors','sprintf'=>array(count($_smarty_tpl->tpl_vars['account_error']->value))),$_smarty_tpl);?>
 :</p>
		<?php }?>
		<ol>
			<?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['authentification_error']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
				<li><?php echo $_smarty_tpl->tpl_vars['v']->value;?>
</li>
			<?php } ?>
		</ol>
	</div>
	<?php }?>-->
    <div class="row reg-log-row">
        <div class="col-xs-12 col-sm-6">
            <form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('authentication',true), ENT_QUOTES, 'UTF-8', true);?>
" method="post" id="create-account_form" class="box">
                <h3 class="page-subheading">Nie masz konta? Zarejestruj się!</h3>
                <div class="form_content clearfix">
                    <p>Twój dostęp do sklepu Celebrity zaczyna się tutaj: zarejestruj swoje konto, śledź zamówienia i kupuj bezpiecznie za pomocą kilku kliknięć.</p>
                    <div class="alert alert-danger" id="create_account_error" style="display:none"></div>
                    <div class="form-group">
                        <label for="email_create"><?php echo smartyTranslate(array('s'=>'Email address'),$_smarty_tpl);?>
</label>
                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="<?php if (isset($_POST['email_create'])) {?><?php echo stripslashes($_POST['email_create']);?>
<?php }?>" />
                    </div>
                    <div class="submit">
                        <?php if (isset($_smarty_tpl->tpl_vars['back']->value)) {?><input type="hidden" class="hidden" name="back" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['back']->value, ENT_QUOTES, 'UTF-8', true);?>
" /><?php }?>
                        <button class="btn btn-default button button-medium exclusive" type="submit" id="SubmitCreate" name="SubmitCreate">
							<span>
								<i class="icon-user left"></i>
                                <?php echo smartyTranslate(array('s'=>'Create an account'),$_smarty_tpl);?>

							</span>
                        </button>
                        <input type="hidden" class="hidden" name="SubmitCreate" value="<?php echo smartyTranslate(array('s'=>'Create an account'),$_smarty_tpl);?>
" />
                    </div>
                </div>
            </form>
        </div>
        <div class="col-xs-12 col-sm-6">
            <form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('authentication',true), ENT_QUOTES, 'UTF-8', true);?>
" method="post" id="login_form" class="box">
                <h3 class="page-subheading">Logowanie</h3>
                <div class="form_content clearfix">
                    <div class="form-group">
                        <label for="email"><?php echo smartyTranslate(array('s'=>'Email address'),$_smarty_tpl);?>
</label>
                        <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="<?php if (isset($_POST['email'])) {?><?php echo stripslashes($_POST['email']);?>
<?php }?>" />
                    </div>
                    <div class="form-group">
                        <label for="passwd"><?php echo smartyTranslate(array('s'=>'Password'),$_smarty_tpl);?>
</label>
                        <span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value="<?php if (isset($_POST['passwd'])) {?><?php echo stripslashes($_POST['passwd']);?>
<?php }?>" /></span>
                    </div>
                    <p class="lost_password form-group"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('password'), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Recover your forgotten password'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Forgot your password?'),$_smarty_tpl);?>
</a></p>
                    <p class="submit">
                        <?php if (isset($_smarty_tpl->tpl_vars['back']->value)) {?><input type="hidden" class="hidden" name="back" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['back']->value, ENT_QUOTES, 'UTF-8', true);?>
" /><?php }?>
                        <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
							<span>
								<i class="icon-lock left"></i>
                                <?php echo smartyTranslate(array('s'=>'Sign in'),$_smarty_tpl);?>

							</span>
                        </button>
                    </p>
                </div>
            </form>
        </div>
    </div>
    <?php if (isset($_smarty_tpl->tpl_vars['inOrderProcess']->value)&&$_smarty_tpl->tpl_vars['inOrderProcess']->value&&$_smarty_tpl->tpl_vars['PS_GUEST_CHECKOUT_ENABLED']->value) {?>
        <form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('authentication',true,null,"back=".((string)$_smarty_tpl->tpl_vars['back']->value)), ENT_QUOTES, 'UTF-8', true);?>
" method="post" id="new_account_form" class="std clearfix">
        <div class="box">
        <div id="opc_account_form" style="display: block; ">
        <div class="clearfix">
        <h3 class="page-subheading-pop">Zakup bez rejestracji</h3>
        <div class="guest-checkout-col">
            <div class="required form-group">
                <label for="firstname"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
 <sup>*</sup></label>
                <input type="text" class="is_required validate form-control" data-validate="isName" id="firstname" name="firstname" onblur="$('#customer_firstname').val($(this).val());" value="<?php if (isset($_POST['firstname'])) {?><?php echo $_POST['firstname'];?>
<?php }?>" />
                <input type="hidden" id="customer_firstname" name="customer_firstname" value="<?php if (isset($_POST['firstname'])) {?><?php echo $_POST['firstname'];?>
<?php }?>" />
            </div>
            <div class="required form-group">
                <label for="lastname"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
 <sup>*</sup></label>
                <input type="text" class="is_required validate form-control" data-validate="isName" id="lastname" name="lastname" onblur="$('#customer_lastname').val($(this).val());" value="<?php if (isset($_POST['lastname'])) {?><?php echo $_POST['lastname'];?>
<?php }?>" />
                <input type="hidden" id="customer_lastname" name="customer_lastname" value="<?php if (isset($_POST['lastname'])) {?><?php echo $_POST['lastname'];?>
<?php }?>" />
            </div>
            <div class="required form-group">
                <label for="guest_email"><?php echo smartyTranslate(array('s'=>'Email address'),$_smarty_tpl);?>
 <sup>*</sup></label>
                <input type="text" class="is_required validate form-control" data-validate="isEmail" id="guest_email" name="guest_email" value="<?php if (isset($_POST['guest_email'])) {?><?php echo $_POST['guest_email'];?>
<?php }?>" />
            </div>
            <?php  $_smarty_tpl->tpl_vars['field_name'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['field_name']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dlv_all_fields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['field_name']->key => $_smarty_tpl->tpl_vars['field_name']->value) {
$_smarty_tpl->tpl_vars['field_name']->_loop = true;
?>
                <?php if ($_smarty_tpl->tpl_vars['field_name']->value=="company"&&$_smarty_tpl->tpl_vars['b2b_enable']->value) {?>
                    <div class="form-group">
                        <label for="company">Nazwa firmy</label>
                        <input type="text" class="form-control" id="company" placeholder="Wypełnij, jeśli chcesz otrzymać fakturę VAT" name="company" value="<?php if (isset($_POST['company'])) {?><?php echo $_POST['company'];?>
<?php }?>" />
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="vat_number") {?>
                    <div id="vat_number">
                        <div class="form-group">
                            <label for="vat-number">NIP</label>
                            <input id="vat-number" type="text" class="form-control" placeholder="Wypełnij, jeśli chcesz otrzymać fakturę VAT" name="vat_number" value="<?php if (isset($_POST['vat_number'])) {?><?php echo $_POST['vat_number'];?>
<?php }?>" />
                        </div>
                    </div>
                <?php }?>
            <?php } ?>
            <?php if (isset($_smarty_tpl->tpl_vars['newsletter']->value)&&$_smarty_tpl->tpl_vars['newsletter']->value) {?>
                <div class="checkbox">
                    <label for="newsletter">
                        <input type="checkbox" name="newsletter" id="newsletter" value="1" checked="checked" />
                        <?php echo smartyTranslate(array('s'=>'Sign up for our newsletter!'),$_smarty_tpl);?>
</label>
                </div>
                <div class="checkbox">
                    <label for="optin">
                        <input type="checkbox" name="optin" id="optin" value="1" checked="checked" />
                        Wyrażam zgodę na przetwarzanie danych do celów marketingowych.</label>
                </div>
            <?php }?>
        </div>
        <div class="guest-checkout-col">
            <h3 class="page-heading bottom-indent top-indent"><?php echo smartyTranslate(array('s'=>'Delivery address'),$_smarty_tpl);?>
</h3>
            <?php  $_smarty_tpl->tpl_vars['field_name'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['field_name']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dlv_all_fields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['field_name']->key => $_smarty_tpl->tpl_vars['field_name']->value) {
$_smarty_tpl->tpl_vars['field_name']->_loop = true;
?>
                <?php if ($_smarty_tpl->tpl_vars['field_name']->value=="dni") {?>
                    <?php $_smarty_tpl->tpl_vars['dniExist'] = new Smarty_variable(true, null, 0);?>
                    <div class="required dni form-group">
                        <label for="dni"><?php echo smartyTranslate(array('s'=>'Identification number'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" name="dni" id="dni" value="<?php if (isset($_POST['dni'])) {?><?php echo $_POST['dni'];?>
<?php }?>" />
                        <span class="form_info"><?php echo smartyTranslate(array('s'=>'DNI / NIF / NIE'),$_smarty_tpl);?>
</span>
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="address1") {?>
                    <div class="required form-group">
                        <label for="address1"><?php echo smartyTranslate(array('s'=>'Address'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="address1" id="address1" value="<?php if (isset($_POST['address1'])) {?><?php echo $_POST['address1'];?>
<?php }?>" />
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="address2") {?>
                    <div class="form-group is_customer_param">
                        <label for="address2"><?php echo smartyTranslate(array('s'=>'Address (Line 2)'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="address2" id="address2" value="<?php if (isset($_POST['address2'])) {?><?php echo $_POST['address2'];?>
<?php }?>" />
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="postcode") {?>
                    <?php $_smarty_tpl->tpl_vars['postCodeExist'] = new Smarty_variable(true, null, 0);?>
                    <div class="required postcode form-group">
                        <label for="postcode"><?php echo smartyTranslate(array('s'=>'Zip/Postal Code'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="postcode" id="postcode" value="<?php if (isset($_POST['postcode'])) {?><?php echo $_POST['postcode'];?>
<?php }?>" onblur="$('#postcode').val($('#postcode').val().toUpperCase());" />
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="city") {?>
                    <div class="required form-group">
                        <label for="city"><?php echo smartyTranslate(array('s'=>'City'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="city" id="city" value="<?php if (isset($_POST['city'])) {?><?php echo $_POST['city'];?>
<?php }?>" />
                    </div>
                    <!-- if customer hasn't update his layout address, country has to be verified but it's deprecated -->
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="Country:name"||$_smarty_tpl->tpl_vars['field_name']->value=="country") {?>
                    <div class="required select form-group" style="display: none;">
                        <label for="id_country"><?php echo smartyTranslate(array('s'=>'Country'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <select name="id_country" id="id_country" class="form-control">
                            <?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['countries']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
                                <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id_country'];?>
"<?php if ((isset($_POST['id_country'])&&$_POST['id_country']==$_smarty_tpl->tpl_vars['v']->value['id_country'])||(!isset($_POST['id_country'])&&$_smarty_tpl->tpl_vars['sl_country']->value==$_smarty_tpl->tpl_vars['v']->value['id_country'])) {?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</option>
                            <?php } ?>
                        </select>
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="State:name") {?>

                <?php }?>
            <?php } ?>
            <?php if ($_smarty_tpl->tpl_vars['stateExist']->value==false) {?>

            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['postCodeExist']->value==false) {?>
                <div class="required postcode unvisible form-group">
                    <label for="postcode"><?php echo smartyTranslate(array('s'=>'Zip/Postal Code'),$_smarty_tpl);?>
 <sup>*</sup></label>
                    <input type="text" class="form-control" name="postcode" id="postcode" value="<?php if (isset($_POST['postcode'])) {?><?php echo $_POST['postcode'];?>
<?php }?>" onblur="$('#postcode').val($('#postcode').val().toUpperCase());" />
                </div>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['dniExist']->value==false) {?>

            <?php }?>
            <div class="<?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?>required <?php }?>form-group">
                <label for="phone_mobile"><?php echo smartyTranslate(array('s'=>'Mobile phone'),$_smarty_tpl);?>
<?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?> <sup>*</sup><?php }?></label>
                <input type="text" class="form-control" name="phone_mobile" id="phone_mobile" value="<?php if (isset($_POST['phone_mobile'])) {?><?php echo $_POST['phone_mobile'];?>
<?php }?>" />
            </div>
            <input type="hidden" name="alias" id="alias" value="<?php echo smartyTranslate(array('s'=>'My address'),$_smarty_tpl);?>
" />
            <input type="hidden" name="is_new_customer" id="is_new_customer" value="0" />
            <div class="checkbox" style="display:none;">
                <label for="invoice_address">
                    <input type="checkbox" name="invoice_address" id="invoice_address"<?php if ((isset($_POST['invoice_address'])&&$_POST['invoice_address'])||(isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['invoice_address'])) {?> checked="checked"<?php }?> autocomplete="off"/>
                    <?php echo smartyTranslate(array('s'=>'Please use another address for invoice'),$_smarty_tpl);?>
</label>
            </div>
            <div id="opc_invoice_address"  class="unvisible">
                <?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(false, null, 0);?>
                <?php $_smarty_tpl->tpl_vars['postCodeExist'] = new Smarty_variable(false, null, 0);?>
                <h3 class="page-subheading top-indent"><?php echo smartyTranslate(array('s'=>'Invoice address'),$_smarty_tpl);?>
</h3>
                <?php  $_smarty_tpl->tpl_vars['field_name'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['field_name']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['inv_all_fields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['field_name']->key => $_smarty_tpl->tpl_vars['field_name']->value) {
$_smarty_tpl->tpl_vars['field_name']->_loop = true;
?>
                    <?php if ($_smarty_tpl->tpl_vars['field_name']->value=="company"&&$_smarty_tpl->tpl_vars['b2b_enable']->value) {?>
                        <div class="form-group">
                            <label for="company_invoice"><?php echo smartyTranslate(array('s'=>'Company'),$_smarty_tpl);?>
</label>
                            <input type="text" class="text form-control" id="company_invoice" name="company_invoice" value="" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="vat_number") {?>
                        <div id="vat_number_block_invoice" class="is_customer_param" style="display:none;">
                            <div class="form-group">
                                <label for="vat_number_invoice"><?php echo smartyTranslate(array('s'=>'VAT number'),$_smarty_tpl);?>
</label>
                                <input type="text" class="form-control" id="vat_number_invoice" name="vat_number_invoice" value="" />
                            </div>
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="dni") {?>
                        <?php $_smarty_tpl->tpl_vars['dniExist'] = new Smarty_variable(true, null, 0);?>
                        <div class="required form-group dni_invoice">
                            <label for="dni"><?php echo smartyTranslate(array('s'=>'Identification number'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <input type="text" class="text form-control" name="dni_invoice" id="dni_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['dni_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['dni_invoice'];?>
<?php }?>" />
                            <span class="form_info"><?php echo smartyTranslate(array('s'=>'DNI / NIF / NIE'),$_smarty_tpl);?>
</span>
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="firstname") {?>
                        <div class="required form-group">
                            <label for="firstname_invoice"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <input type="text" class="form-control" id="firstname_invoice" name="firstname_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['firstname_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['firstname_invoice'];?>
<?php }?>" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="lastname") {?>
                        <div class="required form-group">
                            <label for="lastname_invoice"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <input type="text" class="form-control" id="lastname_invoice" name="lastname_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['lastname_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['lastname_invoice'];?>
<?php }?>" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="address1") {?>
                        <div class="required form-group">
                            <label for="address1_invoice"><?php echo smartyTranslate(array('s'=>'Address'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <input type="text" class="form-control" name="address1_invoice" id="address1_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['address1_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['address1_invoice'];?>
<?php }?>" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="address2") {?>
                        <div class="form-group is_customer_param">
                            <label for="address2_invoice"><?php echo smartyTranslate(array('s'=>'Address (Line 2)'),$_smarty_tpl);?>
</label>
                            <input type="text" class="form-control" name="address2_invoice" id="address2_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['address2_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['address2_invoice'];?>
<?php }?>" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="postcode") {?>
                        <?php $_smarty_tpl->tpl_vars['postCodeExist'] = new Smarty_variable(true, null, 0);?>
                        <div class="required postcode_invoice form-group">
                            <label for="postcode_invoice"><?php echo smartyTranslate(array('s'=>'Zip/Postal Code'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <input type="text" class="form-control" name="postcode_invoice" id="postcode_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['postcode_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['postcode_invoice'];?>
<?php }?>" onkeyup="$('#postcode_invoice').val($('#postcode_invoice').val().toUpperCase());" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="city") {?>
                        <div class="required form-group">
                            <label for="city_invoice"><?php echo smartyTranslate(array('s'=>'City'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <input type="text" class="form-control" name="city_invoice" id="city_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['city_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['city_invoice'];?>
<?php }?>" />
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="country"||$_smarty_tpl->tpl_vars['field_name']->value=="Country:name") {?>
                        <div class="required form-group">
                            <label for="id_country_invoice"><?php echo smartyTranslate(array('s'=>'Country'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <select name="id_country_invoice" id="id_country_invoice" class="form-control">
                                <option value="">-</option>
                                <?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['countries']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id_country'];?>
"<?php if ((isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['id_country_invoice']==$_smarty_tpl->tpl_vars['v']->value['id_country'])||(!isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['sl_country']->value==$_smarty_tpl->tpl_vars['v']->value['id_country'])) {?> selected="selected"<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['v']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</option>
                                <?php } ?>
                            </select>
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="state"||$_smarty_tpl->tpl_vars['field_name']->value=='State:name') {?>
                        <?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(true, null, 0);?>
                        <div class="required id_state_invoice form-group" style="display:none;">
                            <label for="id_state_invoice"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
 <sup>*</sup></label>
                            <select name="id_state_invoice" id="id_state_invoice" class="form-control">
                                <option value="">-</option>
                            </select>
                        </div>
                    <?php }?>
                <?php } ?>
                <?php if (!$_smarty_tpl->tpl_vars['postCodeExist']->value) {?>
                    <div class="required postcode_invoice form-group unvisible">
                        <label for="postcode_invoice"><?php echo smartyTranslate(array('s'=>'Zip/Postal Code'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="postcode_invoice" id="postcode_invoice" value="" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
                    </div>
                <?php }?>
                <?php if (!$_smarty_tpl->tpl_vars['stateExist']->value) {?>
                    <div class="required id_state_invoice form-group unvisible">
                        <label for="id_state_invoice"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <select name="id_state_invoice" id="id_state_invoice" class="form-control">
                            <option value="">-</option>
                        </select>
                    </div>
                <?php }?>
                <div class="form-group is_customer_param">
                    <label for="other_invoice"><?php echo smartyTranslate(array('s'=>'Additional information'),$_smarty_tpl);?>
</label>
                    <textarea class="form-control" name="other_invoice" id="other_invoice" cols="26" rows="3"></textarea>
                </div>
                <?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?>
                    <p class="inline-infos required is_customer_param"><?php echo smartyTranslate(array('s'=>'You must register at least one phone number.'),$_smarty_tpl);?>
</p>
                <?php }?>
                <div class="form-group is_customer_param">
                    <label for="phone_invoice"><?php echo smartyTranslate(array('s'=>'Home phone'),$_smarty_tpl);?>
</label>
                    <input type="text" class="form-control" name="phone_invoice" id="phone_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['phone_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['phone_invoice'];?>
<?php }?>" />
                </div>
                <div class="<?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?>required <?php }?>form-group">
                    <label for="phone_mobile_invoice"><?php echo smartyTranslate(array('s'=>'Mobile phone'),$_smarty_tpl);?>
<?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?> <sup>*</sup><?php }?></label>
                    <input type="text" class="form-control" name="phone_mobile_invoice" id="phone_mobile_invoice" value="<?php if (isset($_smarty_tpl->tpl_vars['guestInformations']->value)&&$_smarty_tpl->tpl_vars['guestInformations']->value['phone_mobile_invoice']) {?><?php echo $_smarty_tpl->tpl_vars['guestInformations']->value['phone_mobile_invoice'];?>
<?php }?>" />
                </div>
                <input type="hidden" name="alias_invoice" id="alias_invoice" value="<?php echo smartyTranslate(array('s'=>'My Invoice address'),$_smarty_tpl);?>
" />
            </div>
        </div>
        </div>
        </div>
        <?php echo $_smarty_tpl->tpl_vars['HOOK_CREATE_ACCOUNT_FORM']->value;?>

        </div>
        <p class="cart_navigation required submit clearfix">
            <span class="required-label"><sup>*</sup> pola wymagane</span>
            <input type="hidden" name="display_guest_checkout" value="1" />
            <button type="submit" class="button btn btn-default button-medium" name="submitGuestAccount" id="submitGuestAccount">
                <span>Dalej</span>
            </button>
        </p>
        </form>
    <?php }?>
<?php } else { ?>
    <!--<?php if (isset($_smarty_tpl->tpl_vars['account_error']->value)) {?>
	<div class="error">
		<?php ob_start();?><?php echo count($_smarty_tpl->tpl_vars['account_error']->value);?>
<?php $_tmp2=ob_get_clean();?><?php if ($_tmp2==1) {?>
			<p><?php echo smartyTranslate(array('s'=>'There\'s at least one error'),$_smarty_tpl);?>
 :</p>
			<?php } else { ?>
			<p><?php echo smartyTranslate(array('s'=>'There are %s errors','sprintf'=>array(count($_smarty_tpl->tpl_vars['account_error']->value))),$_smarty_tpl);?>
 :</p>
		<?php }?>
		<ol>
			<?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['account_error']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
				<li><?php echo $_smarty_tpl->tpl_vars['v']->value;?>
</li>
			<?php } ?>
		</ol>
	</div>
	<?php }?>-->
    <div class="clearfix">
    <form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('authentication',true), ENT_QUOTES, 'UTF-8', true);?>
" method="post" id="account-creation_form" class="std box col_float col_2">
    <?php echo $_smarty_tpl->tpl_vars['HOOK_CREATE_ACCOUNT_TOP']->value;?>

    <div class="account_creation ">
        <h3 class="page-subheading block_title" style="margin-top: 20px;"><?php echo smartyTranslate(array('s'=>'Your personal information'),$_smarty_tpl);?>
</h3>

        <div class="required form-group">
            <label for="customer_firstname"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
 <sup>*</sup></label>
            <input onkeyup="$('#firstname').val(this.value);" type="text" class="is_required validate form-control" data-validate="isName" id="customer_firstname" name="customer_firstname" value="<?php if (isset($_POST['customer_firstname'])) {?><?php echo $_POST['customer_firstname'];?>
<?php }?>" />
        </div>
        <div class="required form-group">
            <label for="customer_lastname"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
 <sup>*</sup></label>
            <input onkeyup="$('#lastname').val(this.value);" type="text" class="is_required validate form-control" data-validate="isName" id="customer_lastname" name="customer_lastname" value="<?php if (isset($_POST['customer_lastname'])) {?><?php echo $_POST['customer_lastname'];?>
<?php }?>" />
        </div>
        <div class="required form-group">
            <label for="email"><?php echo smartyTranslate(array('s'=>'Email'),$_smarty_tpl);?>
 <sup>*</sup></label>
            <input type="text" class="is_required validate form-control" data-validate="isEmail" id="email" name="email" value="<?php if (isset($_POST['email'])) {?><?php echo $_POST['email'];?>
<?php }?>" />
        </div>
        <div class="required password form-group">
            <label for="passwd"><?php echo smartyTranslate(array('s'=>'Password'),$_smarty_tpl);?>
 <sup>*</sup></label>
            <input type="password" class="is_required validate form-control" data-validate="isPasswd" name="passwd" id="passwd" />
        </div>
        <?php if ($_smarty_tpl->tpl_vars['newsletter']->value) {?>
            <div class="checkbox">
                <input type="checkbox" name="newsletter" id="newsletter" value="1" checked="checked" />
                <label for="newsletter" style="margin-bottom: 8px;"><?php echo smartyTranslate(array('s'=>'Sign up for our newsletter!'),$_smarty_tpl);?>
</label>
            </div>
            <div class="checkbox">
                <input type="checkbox"name="optin" id="optin" value="1" checked="checked" />
                <label for="optin">Wyrażam zgodę na przetwarzanie danych do celów marketingowych.</label>
            </div>
        <?php }?>
    </div>
    <?php if (isset($_smarty_tpl->tpl_vars['PS_REGISTRATION_PROCESS_TYPE']->value)&&$_smarty_tpl->tpl_vars['PS_REGISTRATION_PROCESS_TYPE']->value) {?>
        <div class="account_creation">
            <h3 class="page-subheading"><?php echo smartyTranslate(array('s'=>'Your address'),$_smarty_tpl);?>
</h3>
            <?php  $_smarty_tpl->tpl_vars['field_name'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['field_name']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dlv_all_fields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['field_name']->key => $_smarty_tpl->tpl_vars['field_name']->value) {
$_smarty_tpl->tpl_vars['field_name']->_loop = true;
?>
                <?php if ($_smarty_tpl->tpl_vars['field_name']->value=="company") {?>
                    <?php if (!$_smarty_tpl->tpl_vars['b2b_enable']->value) {?>
                        <p class="form-group">
                            <label for="company"><?php echo smartyTranslate(array('s'=>'Company'),$_smarty_tpl);?>
</label>
                            <input type="text" class="form-control" id="company" name="company" value="<?php if (isset($_POST['company'])) {?><?php echo $_POST['company'];?>
<?php }?>" />
                        </p>
                    <?php }?>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="vat_number") {?>
                    <div id="vat_number" style="display:none;">
                        <p class="form-group">
                            <label for="vat_number"><?php echo smartyTranslate(array('s'=>'VAT number'),$_smarty_tpl);?>
</label>
                            <input type="text" class="form-control" name="vat_number" value="<?php if (isset($_POST['vat_number'])) {?><?php echo $_POST['vat_number'];?>
<?php }?>" />
                        </p>
                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="firstname") {?>
                    <p class="required form-group">
                        <label for="firstname"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" id="firstname" name="firstname" value="<?php if (isset($_POST['firstname'])) {?><?php echo $_POST['firstname'];?>
<?php }?>" />
                    </p>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="lastname") {?>
                    <p class="required form-group">
                        <label for="lastname"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" id="lastname" name="lastname" value="<?php if (isset($_POST['lastname'])) {?><?php echo $_POST['lastname'];?>
<?php }?>" />
                    </p>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="address1") {?>
                    <p class="required form-group">
                        <label for="address1"><?php echo smartyTranslate(array('s'=>'Address'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="address1" id="address1" value="<?php if (isset($_POST['address1'])) {?><?php echo $_POST['address1'];?>
<?php }?>" />
                        <span class="inline-infos"><?php echo smartyTranslate(array('s'=>'Street address, P.O. Box, Company name, etc.'),$_smarty_tpl);?>
</span>
                    </p>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="address2") {?>
                    <p class="form-group is_customer_param">
                        <label for="address2"><?php echo smartyTranslate(array('s'=>'Address (Line 2)'),$_smarty_tpl);?>
</label>
                        <input type="text" class="form-control" name="address2" id="address2" value="<?php if (isset($_POST['address2'])) {?><?php echo $_POST['address2'];?>
<?php }?>" />
                        <span class="inline-infos"><?php echo smartyTranslate(array('s'=>'Apartment, suite, unit, building, floor, etc...'),$_smarty_tpl);?>
</span>
                    </p>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="postcode") {?>
                    <?php $_smarty_tpl->tpl_vars['postCodeExist'] = new Smarty_variable(true, null, 0);?>
                    <p class="required postcode form-group">
                        <label for="postcode"><?php echo smartyTranslate(array('s'=>'Zip/Postal Code'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="postcode" id="postcode" value="<?php if (isset($_POST['postcode'])) {?><?php echo $_POST['postcode'];?>
<?php }?>" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
                    </p>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="city") {?>
                    <p class="required form-group">
                        <label for="city"><?php echo smartyTranslate(array('s'=>'City'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <input type="text" class="form-control" name="city" id="city" value="<?php if (isset($_POST['city'])) {?><?php echo $_POST['city'];?>
<?php }?>" />
                    </p>
                    <!-- if customer hasn't update his layout address, country has to be verified but it's deprecated -->
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="Country:name"||$_smarty_tpl->tpl_vars['field_name']->value=="country") {?>
                    <p class="required select form-group" style="display: none;">
                        <label for="id_country"><?php echo smartyTranslate(array('s'=>'Country'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <select name="id_country" id="id_country" class="form-control">
                            <option value="">-</option>
                            <?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['countries']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
                                <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id_country'];?>
"<?php if ((isset($_POST['id_country'])&&$_POST['id_country']==$_smarty_tpl->tpl_vars['v']->value['id_country'])||(!isset($_POST['id_country'])&&$_smarty_tpl->tpl_vars['sl_country']->value==$_smarty_tpl->tpl_vars['v']->value['id_country'])) {?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</option>
                            <?php } ?>
                        </select>
                    </p>
                <?php } elseif ($_smarty_tpl->tpl_vars['field_name']->value=="State:name"||$_smarty_tpl->tpl_vars['field_name']->value=='state') {?>
                    <?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(true, null, 0);?>
                    <p class="required id_state select form-group">
                        <label for="id_state"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
 <sup>*</sup></label>
                        <select name="id_state" id="id_state" class="form-control">
                            <option value="">-</option>
                        </select>
                    </p>
                <?php }?>
            <?php } ?>
            <?php if ($_smarty_tpl->tpl_vars['postCodeExist']->value==false) {?>
                <p class="required postcode form-group unvisible">
                    <label for="postcode"><?php echo smartyTranslate(array('s'=>'Zip/Postal Code'),$_smarty_tpl);?>
 <sup>*</sup></label>
                    <input type="text" class="form-control" name="postcode" id="postcode" value="<?php if (isset($_POST['postcode'])) {?><?php echo $_POST['postcode'];?>
<?php }?>" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
                </p>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['stateExist']->value==false) {?>
                <p class="required id_state select unvisible form-group">
                    <label for="id_state"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
 <sup>*</sup></label>
                    <select name="id_state" id="id_state" class="form-control">
                        <option value="">-</option>
                    </select>
                </p>
            <?php }?>
            <p class="textarea form-group">
                <label for="other"><?php echo smartyTranslate(array('s'=>'Additional information'),$_smarty_tpl);?>
</label>
                <textarea class="form-control" name="other" id="other" cols="26" rows="3"><?php if (isset($_POST['other'])) {?><?php echo $_POST['other'];?>
<?php }?></textarea>
            </p>
            <?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?>
                <p class="inline-infos"><?php echo smartyTranslate(array('s'=>'You must register at least one phone number.'),$_smarty_tpl);?>
</p>
            <?php }?>
            <p class="form-group">
                <label for="phone"><?php echo smartyTranslate(array('s'=>'Home phone'),$_smarty_tpl);?>
</label>
                <input type="text" class="form-control" name="phone" id="phone" value="<?php if (isset($_POST['phone'])) {?><?php echo $_POST['phone'];?>
<?php }?>" />
            </p>
            <p class="<?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?>required <?php }?>form-group">
                <label for="phone_mobile"><?php echo smartyTranslate(array('s'=>'Mobile phone'),$_smarty_tpl);?>
<?php if (isset($_smarty_tpl->tpl_vars['one_phone_at_least']->value)&&$_smarty_tpl->tpl_vars['one_phone_at_least']->value) {?> <sup>*</sup><?php }?></label>
                <input type="text" class="form-control" name="phone_mobile" id="phone_mobile" value="<?php if (isset($_POST['phone_mobile'])) {?><?php echo $_POST['phone_mobile'];?>
<?php }?>" />
            </p>
            <p class="required form-group" id="address_alias">
                <label for="alias"><?php echo smartyTranslate(array('s'=>'Assign an address alias for future reference.'),$_smarty_tpl);?>
 <sup>*</sup></label>
                <input type="text" class="form-control" name="alias" id="alias" value="<?php if (isset($_POST['alias'])) {?><?php echo $_POST['alias'];?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'My address'),$_smarty_tpl);?>
<?php }?>" />
            </p>
        </div>
        <div class="account_creation dni">
            <h3 class="page-subheading"><?php echo smartyTranslate(array('s'=>'Tax identification'),$_smarty_tpl);?>
</h3>
            <p class="required form-group">
                <label for="dni"><?php echo smartyTranslate(array('s'=>'Identification number'),$_smarty_tpl);?>
 <sup>*</sup></label>
                <input type="text" class="form-control" name="dni" id="dni" value="<?php if (isset($_POST['dni'])) {?><?php echo $_POST['dni'];?>
<?php }?>" />
                <span class="form_info"><?php echo smartyTranslate(array('s'=>'DNI / NIF / NIE'),$_smarty_tpl);?>
</span>
            </p>
        </div>
    <?php }?>
    <?php echo $_smarty_tpl->tpl_vars['HOOK_CREATE_ACCOUNT_FORM']->value;?>

    <div class="submit clearfix">
        <p class="required-label required" style="margin-bottom: 20px; margin-top: -5px;"><span><sup>*</sup> pola wymagane</span></p>
        <input type="hidden" name="email_create" value="1" />
        <input type="hidden" name="is_new_customer" value="1" />
        <?php if (isset($_smarty_tpl->tpl_vars['back']->value)) {?><input type="hidden" class="hidden" name="back" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['back']->value, ENT_QUOTES, 'UTF-8', true);?>
" /><?php }?>
        <button type="submit" name="submitAccount" id="submitAccount" class="btn btn-default button button-medium">
            <span><?php echo smartyTranslate(array('s'=>'Register'),$_smarty_tpl);?>
<i class="icon-chevron-right right"></i></span>
        </button>
    </div>
    </form>
    </div>
<?php }?>
<?php if (isset($_POST['id_state'])&&$_POST['id_state']) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('idSelectedState'=>intval($_POST['id_state'])),$_smarty_tpl);?>
<?php } elseif (isset($_smarty_tpl->tpl_vars['address']->value->id_state)&&$_smarty_tpl->tpl_vars['address']->value->id_state) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('idSelectedState'=>intval($_smarty_tpl->tpl_vars['address']->value->id_state)),$_smarty_tpl);?>
<?php } else { ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('idSelectedState'=>false),$_smarty_tpl);?>
<?php }?><?php if (isset($_POST['id_country'])&&$_POST['id_country']) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('idSelectedCountry'=>intval($_POST['id_country'])),$_smarty_tpl);?>
<?php } elseif (isset($_smarty_tpl->tpl_vars['address']->value->id_country)&&$_smarty_tpl->tpl_vars['address']->value->id_country) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('idSelectedCountry'=>intval($_smarty_tpl->tpl_vars['address']->value->id_country)),$_smarty_tpl);?>
<?php } else { ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('idSelectedCountry'=>false),$_smarty_tpl);?>
<?php }?><?php if (isset($_smarty_tpl->tpl_vars['countries']->value)) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('countries'=>$_smarty_tpl->tpl_vars['countries']->value),$_smarty_tpl);?>
<?php }?><?php if (isset($_smarty_tpl->tpl_vars['vatnumber_ajax_call']->value)&&$_smarty_tpl->tpl_vars['vatnumber_ajax_call']->value) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('vatnumber_ajax_call'=>$_smarty_tpl->tpl_vars['vatnumber_ajax_call']->value),$_smarty_tpl);?>
<?php }?><?php if (isset($_smarty_tpl->tpl_vars['email_create']->value)&&$_smarty_tpl->tpl_vars['email_create']->value) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('email_create'=>$_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['boolval'][0][0]->boolval($_smarty_tpl->tpl_vars['email_create']->value)),$_smarty_tpl);?>
<?php } else { ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['addJsDef'][0][0]->addJsDef(array('email_create'=>false),$_smarty_tpl);?>
<?php }?><?php }} ?>
