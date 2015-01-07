{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @version  Release: $Revision: 6594 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<br/>
    <div class="panel" style="" >
<div id="m-kurierzy-panel" class="panel form-horizontal row">

<fieldset>
<!--     <legend><h3><img src="{$module_dir}/img/mkurierzy.png"/></h3></legend> -->
    <h3>M-Kurierzy</h3>

    <div id="error-info" class="my-box" ></div>
    <div id="sec-1" ><div id="ifrm-box" style="display: none;"></div></div>
    <div class="clear" style="margin-bottom: 10px;"></div>

    <div style="padding: 0 15px 15px; text-align: right;"><a class="myadmin iframe" style="display: block; font-weight: bold;" href="{$currentUrl}/mkurierzy/kurierzy_ustawienia/" title="M-Kurierzy - Konfiguracja">[ Konfiguracja ]</a></div>
    
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
    <label for="register-[[CODE]]">Akcja: </label> <a id="register-[[CODE]]" class="button btn btn-default iframe myadmin register-[[CODE]]" style="text-align: center;" href="{$currentUrl}/mkurierzy/[[REGISTER]]/oids={$orderId}/period=50/" title="Dalej">Rejestruj paczkę</a>
    <a class="myadmin iframe manager-[[CODE]] button btn btn-default" style="display: none; " href="{$currentUrl}/mkurierzy/[[MANAGER]]/" title="Menedżer Paczek: [[NAME]]">Otrzórz Menedżera Paczek: [[NAME]]</a>
  
    </div>
   </div>
</div>

   
<script type="text/javascript">
{literal}

      $(document).ready(function(){

	  $(this).mkurierzy({
			myadminBaseUrl: '{/literal}{$currentUrl}{literal}',
			myadminApiKey: '{/literal}{$APIKEY}{literal}',
			accordionId: '#shpAccordion',
			} );
	  
	  $("#shipping").each(function(){
	    $(this).append($("#m-kurierzy-panel"));
	  });
	  
	  });


{/literal}
</script>



