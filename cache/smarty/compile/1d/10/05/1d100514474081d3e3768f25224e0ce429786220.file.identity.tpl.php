<?php /* Smarty version Smarty-3.1.19, created on 2014-12-11 19:02:03
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/identity.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13171213635489dc1b46ece7-69212049%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1d100514474081d3e3768f25224e0ce429786220' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/themes/default-bootstrap/identity.tpl',
      1 => 1413196972,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13171213635489dc1b46ece7-69212049',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'navigationPipe' => 0,
    'confirmation' => 0,
    'pwd_changed' => 0,
    'email' => 0,
    'newsletter' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5489dc1b4db200_93345229',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5489dc1b4db200_93345229')) {function content_5489dc1b4db200_93345229($_smarty_tpl) {?>

<?php $_smarty_tpl->_capture_stack[0][] = array('path', null, null); ob_start(); ?>
    <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
">
        <?php echo smartyTranslate(array('s'=>'My account'),$_smarty_tpl);?>

    </a>
    <span class="navigation-pipe">
        <?php echo $_smarty_tpl->tpl_vars['navigationPipe']->value;?>

    </span>
    <span class="navigation_page">
        <?php echo smartyTranslate(array('s'=>'Your personal information'),$_smarty_tpl);?>

    </span>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<div class="box clearfix">
    <ul class="step clearfix" id="order_step">
        <li class="step_done first">
            Twoje konto
        </li>
        <li class="step_current second">
            Dane osobiste
        </li>
    </ul>
    
    <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./errors.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    
    <?php if (isset($_smarty_tpl->tpl_vars['confirmation']->value)&&$_smarty_tpl->tpl_vars['confirmation']->value) {?>
        <p class="alert alert-success">
            <?php echo smartyTranslate(array('s'=>'Your personal information has been successfully updated.'),$_smarty_tpl);?>

            <?php if (isset($_smarty_tpl->tpl_vars['pwd_changed']->value)) {?><br /><?php echo smartyTranslate(array('s'=>'Your password has been sent to your email:'),$_smarty_tpl);?>
 <?php echo $_smarty_tpl->tpl_vars['email']->value;?>
<?php }?>
        </p>
    <?php } else { ?>
        <p class="info-title block_title">
            <?php echo smartyTranslate(array('s'=>'Please be sure to update your personal information if it has changed.'),$_smarty_tpl);?>

        </p>
        <form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('identity',true), ENT_QUOTES, 'UTF-8', true);?>
" method="post" class="std col_50_centered col_float">
            <fieldset>
                <div class="required form-group">
                    <label for="firstname" class="required">
                        <?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
 
                    </label>
                    <input class="is_required validate form-control" data-validate="isName" type="text" id="firstname" name="firstname" value="<?php echo $_POST['firstname'];?>
" />
                </div>
                <div class="required form-group">
                    <label for="lastname" class="required">
                        <?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
 
                    </label>
                    <input class="is_required validate form-control" data-validate="isName" type="text" name="lastname" id="lastname" value="<?php echo $_POST['lastname'];?>
" />
                </div>
                <div class="required form-group">
                    <label for="email" class="required">
                        <?php echo smartyTranslate(array('s'=>'E-mail address'),$_smarty_tpl);?>
 
                    </label>
                    <input class="is_required validate form-control" data-validate="isEmail" type="email" name="email" id="email" value="<?php echo $_POST['email'];?>
" />
                </div>

                <div class="required form-group">
                    <label for="old_passwd" class="required">
                        <?php echo smartyTranslate(array('s'=>'Current Password'),$_smarty_tpl);?>
 
                    </label>
                    <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="old_passwd" id="old_passwd" />
                </div>
                <div class="password form-group">
                    <label for="passwd">
                        <?php echo smartyTranslate(array('s'=>'New Password'),$_smarty_tpl);?>

                    </label>
                    <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="passwd" id="passwd" />
                </div>
                <div class="password form-group">
                    <label for="confirmation">
                        <?php echo smartyTranslate(array('s'=>'Confirmation'),$_smarty_tpl);?>

                    </label>
                    <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="confirmation" id="confirmation" />
                </div>
                <?php if ($_smarty_tpl->tpl_vars['newsletter']->value) {?>
                    <div class="checkbox">
                        <label for="newsletter">
                            <input type="checkbox" id="newsletter" name="newsletter" value="1" <?php if (isset($_POST['newsletter'])&&$_POST['newsletter']==1) {?> checked="checked"<?php }?>/>
                            <?php echo smartyTranslate(array('s'=>'Sign up for our newsletter!'),$_smarty_tpl);?>

                        </label>
                    </div>
                    <div class="checkbox">
                        <label for="optin">
                            <input type="checkbox" name="optin" id="optin" value="1" <?php if (isset($_POST['optin'])&&$_POST['optin']==1) {?> checked="checked"<?php }?>/>
                            Wyrażam zgodę na przetwarzanie danych do celów marketingowych.
                        </label>
                    </div>
                <?php }?>
                <p class="required required-label">
                    <sup>*</sup><?php echo smartyTranslate(array('s'=>'Required field'),$_smarty_tpl);?>

                </p>
                <div class="form-group clearfix">
                    <button type="submit" name="submitIdentity" class="btn btn-default button button-medium" style="margin-top: 20px; float: right;">
                        <span><?php echo smartyTranslate(array('s'=>'Save'),$_smarty_tpl);?>
<i class="icon-chevron-right right"></i></span>
                    </button>
                </div>
            </fieldset>
        </form> <!-- .std -->
    <?php }?>
</div>
<?php }} ?>
