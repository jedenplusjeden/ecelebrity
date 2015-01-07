<?php /* Smarty version Smarty-3.1.19, created on 2014-11-02 23:02:16
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/megamo/tpl/mkurierzy.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7905866045456a9e820b3c8-55283171%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3a1cdce5f2c7b65ea3b07656f0ce257d83680f38' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/megamo/tpl/mkurierzy.tpl',
      1 => 1411047165,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7905866045456a9e820b3c8-55283171',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_dir' => 0,
    'currentUrl' => 0,
    'orderId' => 0,
    'APIKEY' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5456a9e821dcb4_83727675',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5456a9e821dcb4_83727675')) {function content_5456a9e821dcb4_83727675($_smarty_tpl) {?>
<br/>
    <div class="panel" style="" >
<div id="m-kurierzy-panel" class="panel form-horizontal row">

<fieldset>
<!--     <legend><h3><img src="<?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
/img/mkurierzy.png"/></h3></legend> -->
    <h3>M-Kurierzy</h3>

    <div id="error-info" class="my-box" ></div>
    <div id="sec-1" ><div id="ifrm-box" style="display: none;"></div></div>
    <div class="clear" style="margin-bottom: 10px;"></div>

    <div style="padding: 0 15px 15px; text-align: right;"><a class="myadmin iframe" style="display: block; font-weight: bold;" href="<?php echo $_smarty_tpl->tpl_vars['currentUrl']->value;?>
/mkurierzy/kurierzy_ustawienia/" title="M-Kurierzy - Konfiguracja">[ Konfiguracja ]</a></div>
    
    <div id="mkurierzy">
      <div id="shpAccordion"></div>
    </div>
</fieldset>
</div>
</div>

<div id="parcel-details-tpl" style="display: none;" >
  <div class="well">
    <h4 >
      <a href="#" style="font-weight: bold;" class="formContent-tab" shippercode="[[CODE]]">[[NAME]]</a>
    </h4>
    <div id="formContent-[[CODE]]" class="formContent-box">
    <label for="profileSelect-[[CODE]]">Profil: </label> <select id="profileSelect-[[CODE]]" shippercode="[[CODE]]" class="m-profile-select"></select>
    <br><br>
    <label for="register-[[CODE]]">Akcja: </label> <a id="register-[[CODE]]" class="button btn btn-default iframe myadmin register-[[CODE]]" style="text-align: center;" href="<?php echo $_smarty_tpl->tpl_vars['currentUrl']->value;?>
/mkurierzy/[[REGISTER]]/oids=<?php echo $_smarty_tpl->tpl_vars['orderId']->value;?>
/period=50/" title="Dalej">Rejestruj paczkę</a>
    <a class="myadmin iframe manager-[[CODE]] button btn btn-default" style="display: none; " href="<?php echo $_smarty_tpl->tpl_vars['currentUrl']->value;?>
/mkurierzy/[[MANAGER]]/" title="Menedżer Paczek: [[NAME]]">Otrzórz Menedżera Paczek: [[NAME]]</a>
  
    </div>
   </div>
</div>

   
<script type="text/javascript">


      $(document).ready(function(){

	  $(this).mkurierzy({
			myadminBaseUrl: '<?php echo $_smarty_tpl->tpl_vars['currentUrl']->value;?>
',
			myadminApiKey: '<?php echo $_smarty_tpl->tpl_vars['APIKEY']->value;?>
',
			accordionId: '#shpAccordion',
			} );
	  
	  $("#shipping").each(function(){
	    $(this).append($("#m-kurierzy-panel"));
	  });
	  
	  });



</script>



<?php }} ?>
