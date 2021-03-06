{*
* 2007-2014 PrestaShop
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
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{capture name=path}
    {if !isset($email_create)}{l s='Authentication'}{else}
        <a href="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Authentication'}">{l s='Authentication'}</a>
        <span class="navigation-pipe">{$navigationPipe}</span>{l s='Create your account'}
    {/if}
{/capture}
<h1 class="page-heading">{if !isset($email_create)}{l s='Authentication'}{else}{l s='Create an account'}{/if}</h1>
{if isset($back) && preg_match("/^http/", $back)}{assign var='current_step' value='login'}{include file="$tpl_dir./order-steps.tpl"}{/if}

<ul class="step clearfix" id="order_step">
    <li class="step_done first">
        Rejestracja
    </li>
</ul>

{include file="$tpl_dir./errors.tpl"}
{assign var='stateExist' value=false}
{assign var="postCodeExist" value=false}
{assign var="dniExist" value=false}
{if !isset($email_create)}
    <!--{if isset($authentification_error)}
	<div class="alert alert-danger">
		{if {$authentification_error|@count} == 1}
			<p>{l s='There\'s at least one error'} :</p>
			{else}
			<p>{l s='There are %s errors' sprintf=[$account_error|@count]} :</p>
		{/if}
		<ol>
			{foreach from=$authentification_error item=v}
				<li>{$v}</li>
			{/foreach}
		</ol>
	</div>
	{/if}-->
    <div class="row reg-log-row">
        <div class="col-xs-12 col-sm-6">
            <form action="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" method="post" id="create-account_form" class="box">
                <h3 class="page-subheading">Nie masz konta? Zarejestruj się!</h3>
                <div class="form_content clearfix">
                    <p>Twój dostęp do sklepu Celebrity zaczyna się tutaj: zarejestruj swoje konto, śledź zamówienia i kupuj bezpiecznie za pomocą kilku kliknięć.</p>
                    <div class="alert alert-danger" id="create_account_error" style="display:none"></div>
                    <div class="form-group">
                        <label for="email_create">{l s='Email address'}</label>
                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="{if isset($smarty.post.email_create)}{$smarty.post.email_create|stripslashes}{/if}" />
                    </div>
                    <div class="submit">
                        {if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'html':'UTF-8'}" />{/if}
                        <button class="btn btn-default button button-medium exclusive" type="submit" id="SubmitCreate" name="SubmitCreate">
							<span>
								<i class="icon-user left"></i>
                                {l s='Create an account'}
							</span>
                        </button>
                        <input type="hidden" class="hidden" name="SubmitCreate" value="{l s='Create an account'}" />
                    </div>
                </div>
            </form>
        </div>
        <div class="col-xs-12 col-sm-6">
            <form action="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" method="post" id="login_form" class="box">
                <h3 class="page-subheading">Logowanie</h3>
                <div class="form_content clearfix">
                    <div class="form-group">
                        <label for="email">{l s='Email address'}</label>
                        <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}" />
                    </div>
                    <div class="form-group">
                        <label for="passwd">{l s='Password'}</label>
                        <span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value="{if isset($smarty.post.passwd)}{$smarty.post.passwd|stripslashes}{/if}" /></span>
                    </div>
                    <p class="lost_password form-group"><a href="{$link->getPageLink('password')|escape:'html':'UTF-8'}" title="{l s='Recover your forgotten password'}" rel="nofollow">{l s='Forgot your password?'}</a></p>
                    <p class="submit">
                        {if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'html':'UTF-8'}" />{/if}
                        <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
							<span>
								<i class="icon-lock left"></i>
                                {l s='Sign in'}
							</span>
                        </button>
                    </p>
                </div>
            </form>
        </div>
    </div>
    {if isset($inOrderProcess) && $inOrderProcess && $PS_GUEST_CHECKOUT_ENABLED}
        <form action="{$link->getPageLink('authentication', true, NULL, "back=$back")|escape:'html':'UTF-8'}" method="post" id="new_account_form" class="std clearfix">
        <div class="box">
        <div id="opc_account_form" style="display: block; ">
        <div class="clearfix">
        <h3 class="page-subheading-pop">Zakup bez rejestracji</h3>
        <div class="guest-checkout-col">
            <div class="required form-group">
                <label for="firstname">{l s='First name'} <sup>*</sup></label>
                <input type="text" class="is_required validate form-control" data-validate="isName" id="firstname" name="firstname" onblur="$('#customer_firstname').val($(this).val());" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{/if}" />
                <input type="hidden" id="customer_firstname" name="customer_firstname" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{/if}" />
            </div>
            <div class="required form-group">
                <label for="lastname">{l s='Last name'} <sup>*</sup></label>
                <input type="text" class="is_required validate form-control" data-validate="isName" id="lastname" name="lastname" onblur="$('#customer_lastname').val($(this).val());" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{/if}" />
                <input type="hidden" id="customer_lastname" name="customer_lastname" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{/if}" />
            </div>
            <div class="required form-group">
                <label for="guest_email">{l s='Email address'} <sup>*</sup></label>
                <input type="text" class="is_required validate form-control" data-validate="isEmail" id="guest_email" name="guest_email" value="{if isset($smarty.post.guest_email)}{$smarty.post.guest_email}{/if}" />
            </div>
            {foreach from=$dlv_all_fields item=field_name}
                {if $field_name eq "company" && $b2b_enable}
                    <div class="form-group">
                        <label for="company">Nazwa firmy</label>
                        <input type="text" class="form-control" id="company" placeholder="Wypełnij, jeśli chcesz otrzymać fakturę VAT" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{/if}" />
                    </div>
                {elseif $field_name eq "vat_number"}
                    <div id="vat_number">
                        <div class="form-group">
                            <label for="vat-number">NIP</label>
                            <input id="vat-number" type="text" class="form-control" placeholder="Wypełnij, jeśli chcesz otrzymać fakturę VAT" name="vat_number" value="{if isset($smarty.post.vat_number)}{$smarty.post.vat_number}{/if}" />
                        </div>
                    </div>
                {/if}
            {/foreach}
            {if isset($newsletter) && $newsletter}
                <div class="checkbox">
                    <label for="newsletter">
                        <input type="checkbox" name="newsletter" id="newsletter" value="1" checked="checked" />
                        {l s='Sign up for our newsletter!'}</label>
                </div>
                <div class="checkbox">
                    <label for="optin">
                        <input type="checkbox" name="optin" id="optin" value="1" checked="checked" />
                        Wyrażam zgodę na przetwarzanie danych do celów marketingowych.</label>
                </div>
            {/if}
        </div>
        <div class="guest-checkout-col">
            <h3 class="page-heading bottom-indent top-indent">{l s='Delivery address'}</h3>
            {foreach from=$dlv_all_fields item=field_name}
                {if $field_name eq "dni"}
                    {assign var='dniExist' value=true}
                    <div class="required dni form-group">
                        <label for="dni">{l s='Identification number'} <sup>*</sup></label>
                        <input type="text" name="dni" id="dni" value="{if isset($smarty.post.dni)}{$smarty.post.dni}{/if}" />
                        <span class="form_info">{l s='DNI / NIF / NIE'}</span>
                    </div>
                {elseif $field_name eq "address1"}
                    <div class="required form-group">
                        <label for="address1">{l s='Address'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="address1" id="address1" value="{if isset($smarty.post.address1)}{$smarty.post.address1}{/if}" />
                    </div>
                {elseif $field_name eq "address2"}
                    <div class="form-group is_customer_param">
                        <label for="address2">{l s='Address (Line 2)'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="address2" id="address2" value="{if isset($smarty.post.address2)}{$smarty.post.address2}{/if}" />
                    </div>
                {elseif $field_name eq "postcode"}
                    {assign var='postCodeExist' value=true}
                    <div class="required postcode form-group">
                        <label for="postcode">{l s='Zip/Postal Code'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="postcode" id="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{/if}" onblur="$('#postcode').val($('#postcode').val().toUpperCase());" />
                    </div>
                {elseif $field_name eq "city"}
                    <div class="required form-group">
                        <label for="city">{l s='City'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="city" id="city" value="{if isset($smarty.post.city)}{$smarty.post.city}{/if}" />
                    </div>
                    <!-- if customer hasn't update his layout address, country has to be verified but it's deprecated -->
                {elseif $field_name eq "Country:name" || $field_name eq "country"}
                    <div class="required select form-group" style="display: none;">
                        <label for="id_country">{l s='Country'} <sup>*</sup></label>
                        <select name="id_country" id="id_country" class="form-control">
                            {foreach from=$countries item=v}
                                <option value="{$v.id_country}"{if (isset($smarty.post.id_country) AND  $smarty.post.id_country == $v.id_country) OR (!isset($smarty.post.id_country) && $sl_country == $v.id_country)} selected="selected"{/if}>{$v.name}</option>
                            {/foreach}
                        </select>
                    </div>
                {elseif $field_name eq "State:name"}

                {/if}
            {/foreach}
            {if $stateExist eq false}

            {/if}
            {if $postCodeExist eq false}
                <div class="required postcode unvisible form-group">
                    <label for="postcode">{l s='Zip/Postal Code'} <sup>*</sup></label>
                    <input type="text" class="form-control" name="postcode" id="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{/if}" onblur="$('#postcode').val($('#postcode').val().toUpperCase());" />
                </div>
            {/if}
            {if $dniExist eq false}

            {/if}
            <div class="{if isset($one_phone_at_least) && $one_phone_at_least}required {/if}form-group">
                <label for="phone_mobile">{l s='Mobile phone'}{if isset($one_phone_at_least) && $one_phone_at_least} <sup>*</sup>{/if}</label>
                <input type="text" class="form-control" name="phone_mobile" id="phone_mobile" value="{if isset($smarty.post.phone_mobile)}{$smarty.post.phone_mobile}{/if}" />
            </div>
            <input type="hidden" name="alias" id="alias" value="{l s='My address'}" />
            <input type="hidden" name="is_new_customer" id="is_new_customer" value="0" />
            <div class="checkbox" style="display:none;">
                <label for="invoice_address">
                    <input type="checkbox" name="invoice_address" id="invoice_address"{if (isset($smarty.post.invoice_address) && $smarty.post.invoice_address) || (isset($guestInformations) && $guestInformations.invoice_address)} checked="checked"{/if} autocomplete="off"/>
                    {l s='Please use another address for invoice'}</label>
            </div>
            <div id="opc_invoice_address"  class="unvisible">
                {assign var=stateExist value=false}
                {assign var=postCodeExist value=false}
                <h3 class="page-subheading top-indent">{l s='Invoice address'}</h3>
                {foreach from=$inv_all_fields item=field_name}
                    {if $field_name eq "company" && $b2b_enable}
                        <div class="form-group">
                            <label for="company_invoice">{l s='Company'}</label>
                            <input type="text" class="text form-control" id="company_invoice" name="company_invoice" value="" />
                        </div>
                    {elseif $field_name eq "vat_number"}
                        <div id="vat_number_block_invoice" class="is_customer_param" style="display:none;">
                            <div class="form-group">
                                <label for="vat_number_invoice">{l s='VAT number'}</label>
                                <input type="text" class="form-control" id="vat_number_invoice" name="vat_number_invoice" value="" />
                            </div>
                        </div>
                    {elseif $field_name eq "dni"}
                        {assign var=dniExist value=true}
                        <div class="required form-group dni_invoice">
                            <label for="dni">{l s='Identification number'} <sup>*</sup></label>
                            <input type="text" class="text form-control" name="dni_invoice" id="dni_invoice" value="{if isset($guestInformations) && $guestInformations.dni_invoice}{$guestInformations.dni_invoice}{/if}" />
                            <span class="form_info">{l s='DNI / NIF / NIE'}</span>
                        </div>
                    {elseif $field_name eq "firstname"}
                        <div class="required form-group">
                            <label for="firstname_invoice">{l s='First name'} <sup>*</sup></label>
                            <input type="text" class="form-control" id="firstname_invoice" name="firstname_invoice" value="{if isset($guestInformations) && $guestInformations.firstname_invoice}{$guestInformations.firstname_invoice}{/if}" />
                        </div>
                    {elseif $field_name eq "lastname"}
                        <div class="required form-group">
                            <label for="lastname_invoice">{l s='Last name'} <sup>*</sup></label>
                            <input type="text" class="form-control" id="lastname_invoice" name="lastname_invoice" value="{if isset($guestInformations) && $guestInformations.lastname_invoice}{$guestInformations.lastname_invoice}{/if}" />
                        </div>
                    {elseif $field_name eq "address1"}
                        <div class="required form-group">
                            <label for="address1_invoice">{l s='Address'} <sup>*</sup></label>
                            <input type="text" class="form-control" name="address1_invoice" id="address1_invoice" value="{if isset($guestInformations) && $guestInformations.address1_invoice}{$guestInformations.address1_invoice}{/if}" />
                        </div>
                    {elseif $field_name eq "address2"}
                        <div class="form-group is_customer_param">
                            <label for="address2_invoice">{l s='Address (Line 2)'}</label>
                            <input type="text" class="form-control" name="address2_invoice" id="address2_invoice" value="{if isset($guestInformations) && $guestInformations.address2_invoice}{$guestInformations.address2_invoice}{/if}" />
                        </div>
                    {elseif $field_name eq "postcode"}
                        {$postCodeExist = true}
                        <div class="required postcode_invoice form-group">
                            <label for="postcode_invoice">{l s='Zip/Postal Code'} <sup>*</sup></label>
                            <input type="text" class="form-control" name="postcode_invoice" id="postcode_invoice" value="{if isset($guestInformations) && $guestInformations.postcode_invoice}{$guestInformations.postcode_invoice}{/if}" onkeyup="$('#postcode_invoice').val($('#postcode_invoice').val().toUpperCase());" />
                        </div>
                    {elseif $field_name eq "city"}
                        <div class="required form-group">
                            <label for="city_invoice">{l s='City'} <sup>*</sup></label>
                            <input type="text" class="form-control" name="city_invoice" id="city_invoice" value="{if isset($guestInformations) && $guestInformations.city_invoice}{$guestInformations.city_invoice}{/if}" />
                        </div>
                    {elseif $field_name eq "country" || $field_name eq "Country:name"}
                        <div class="required form-group">
                            <label for="id_country_invoice">{l s='Country'} <sup>*</sup></label>
                            <select name="id_country_invoice" id="id_country_invoice" class="form-control">
                                <option value="">-</option>
                                {foreach from=$countries item=v}
                                    <option value="{$v.id_country}"{if (isset($guestInformations) AND $guestInformations.id_country_invoice == $v.id_country) OR (!isset($guestInformations) && $sl_country == $v.id_country)} selected="selected"{/if}>{$v.name|escape:'html':'UTF-8'}</option>
                                {/foreach}
                            </select>
                        </div>
                    {elseif $field_name eq "state" || $field_name eq 'State:name'}
                        {$stateExist = true}
                        <div class="required id_state_invoice form-group" style="display:none;">
                            <label for="id_state_invoice">{l s='State'} <sup>*</sup></label>
                            <select name="id_state_invoice" id="id_state_invoice" class="form-control">
                                <option value="">-</option>
                            </select>
                        </div>
                    {/if}
                {/foreach}
                {if !$postCodeExist}
                    <div class="required postcode_invoice form-group unvisible">
                        <label for="postcode_invoice">{l s='Zip/Postal Code'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="postcode_invoice" id="postcode_invoice" value="" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
                    </div>
                {/if}
                {if !$stateExist}
                    <div class="required id_state_invoice form-group unvisible">
                        <label for="id_state_invoice">{l s='State'} <sup>*</sup></label>
                        <select name="id_state_invoice" id="id_state_invoice" class="form-control">
                            <option value="">-</option>
                        </select>
                    </div>
                {/if}
                <div class="form-group is_customer_param">
                    <label for="other_invoice">{l s='Additional information'}</label>
                    <textarea class="form-control" name="other_invoice" id="other_invoice" cols="26" rows="3"></textarea>
                </div>
                {if isset($one_phone_at_least) && $one_phone_at_least}
                    <p class="inline-infos required is_customer_param">{l s='You must register at least one phone number.'}</p>
                {/if}
                <div class="form-group is_customer_param">
                    <label for="phone_invoice">{l s='Home phone'}</label>
                    <input type="text" class="form-control" name="phone_invoice" id="phone_invoice" value="{if isset($guestInformations) && $guestInformations.phone_invoice}{$guestInformations.phone_invoice}{/if}" />
                </div>
                <div class="{if isset($one_phone_at_least) && $one_phone_at_least}required {/if}form-group">
                    <label for="phone_mobile_invoice">{l s='Mobile phone'}{if isset($one_phone_at_least) && $one_phone_at_least} <sup>*</sup>{/if}</label>
                    <input type="text" class="form-control" name="phone_mobile_invoice" id="phone_mobile_invoice" value="{if isset($guestInformations) && $guestInformations.phone_mobile_invoice}{$guestInformations.phone_mobile_invoice}{/if}" />
                </div>
                <input type="hidden" name="alias_invoice" id="alias_invoice" value="{l s='My Invoice address'}" />
            </div>
        </div>
        </div>
        </div>
        {$HOOK_CREATE_ACCOUNT_FORM}
        </div>
        <p class="cart_navigation required submit clearfix">
            <span class="required-label"><sup>*</sup> pola wymagane</span>
            <input type="hidden" name="display_guest_checkout" value="1" />
            <button type="submit" class="button btn btn-default button-medium" name="submitGuestAccount" id="submitGuestAccount">
                <span>Dalej</span>
            </button>
        </p>
        </form>
    {/if}
{else}
    <!--{if isset($account_error)}
	<div class="error">
		{if {$account_error|@count} == 1}
			<p>{l s='There\'s at least one error'} :</p>
			{else}
			<p>{l s='There are %s errors' sprintf=[$account_error|@count]} :</p>
		{/if}
		<ol>
			{foreach from=$account_error item=v}
				<li>{$v}</li>
			{/foreach}
		</ol>
	</div>
	{/if}-->
    <div class="clearfix">
    <form action="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" method="post" id="account-creation_form" class="std box col_float col_2">
    {$HOOK_CREATE_ACCOUNT_TOP}
    <div class="account_creation ">
        <h3 class="page-subheading block_title" style="margin-top: 20px;">{l s='Your personal information'}</h3>

        <div class="required form-group">
            <label for="customer_firstname">{l s='First name'} <sup>*</sup></label>
            <input onkeyup="$('#firstname').val(this.value);" type="text" class="is_required validate form-control" data-validate="isName" id="customer_firstname" name="customer_firstname" value="{if isset($smarty.post.customer_firstname)}{$smarty.post.customer_firstname}{/if}" />
        </div>
        <div class="required form-group">
            <label for="customer_lastname">{l s='Last name'} <sup>*</sup></label>
            <input onkeyup="$('#lastname').val(this.value);" type="text" class="is_required validate form-control" data-validate="isName" id="customer_lastname" name="customer_lastname" value="{if isset($smarty.post.customer_lastname)}{$smarty.post.customer_lastname}{/if}" />
        </div>
        <div class="required form-group">
            <label for="email">{l s='Email'} <sup>*</sup></label>
            <input type="text" class="is_required validate form-control" data-validate="isEmail" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}" />
        </div>
        <div class="required password form-group">
            <label for="passwd">{l s='Password'} <sup>*</sup></label>
            <input type="password" class="is_required validate form-control" data-validate="isPasswd" name="passwd" id="passwd" />
        </div>
        {if $newsletter}
            <div class="checkbox">
                <input type="checkbox" name="newsletter" id="newsletter" value="1" checked="checked" />
                <label for="newsletter" style="margin-bottom: 8px;">{l s='Sign up for our newsletter!'}</label>
            </div>
            <div class="checkbox">
                <input type="checkbox"name="optin" id="optin" value="1" checked="checked" />
                <label for="optin">Wyrażam zgodę na przetwarzanie danych do celów marketingowych.</label>
            </div>
        {/if}
    </div>
    {if isset($PS_REGISTRATION_PROCESS_TYPE) && $PS_REGISTRATION_PROCESS_TYPE}
        <div class="account_creation">
            <h3 class="page-subheading">{l s='Your address'}</h3>
            {foreach from=$dlv_all_fields item=field_name}
                {if $field_name eq "company"}
                    {if !$b2b_enable}
                        <p class="form-group">
                            <label for="company">{l s='Company'}</label>
                            <input type="text" class="form-control" id="company" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{/if}" />
                        </p>
                    {/if}
                {elseif $field_name eq "vat_number"}
                    <div id="vat_number" style="display:none;">
                        <p class="form-group">
                            <label for="vat_number">{l s='VAT number'}</label>
                            <input type="text" class="form-control" name="vat_number" value="{if isset($smarty.post.vat_number)}{$smarty.post.vat_number}{/if}" />
                        </p>
                    </div>
                {elseif $field_name eq "firstname"}
                    <p class="required form-group">
                        <label for="firstname">{l s='First name'} <sup>*</sup></label>
                        <input type="text" class="form-control" id="firstname" name="firstname" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{/if}" />
                    </p>
                {elseif $field_name eq "lastname"}
                    <p class="required form-group">
                        <label for="lastname">{l s='Last name'} <sup>*</sup></label>
                        <input type="text" class="form-control" id="lastname" name="lastname" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{/if}" />
                    </p>
                {elseif $field_name eq "address1"}
                    <p class="required form-group">
                        <label for="address1">{l s='Address'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="address1" id="address1" value="{if isset($smarty.post.address1)}{$smarty.post.address1}{/if}" />
                        <span class="inline-infos">{l s='Street address, P.O. Box, Company name, etc.'}</span>
                    </p>
                {elseif $field_name eq "address2"}
                    <p class="form-group is_customer_param">
                        <label for="address2">{l s='Address (Line 2)'}</label>
                        <input type="text" class="form-control" name="address2" id="address2" value="{if isset($smarty.post.address2)}{$smarty.post.address2}{/if}" />
                        <span class="inline-infos">{l s='Apartment, suite, unit, building, floor, etc...'}</span>
                    </p>
                {elseif $field_name eq "postcode"}
                    {assign var='postCodeExist' value=true}
                    <p class="required postcode form-group">
                        <label for="postcode">{l s='Zip/Postal Code'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="postcode" id="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{/if}" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
                    </p>
                {elseif $field_name eq "city"}
                    <p class="required form-group">
                        <label for="city">{l s='City'} <sup>*</sup></label>
                        <input type="text" class="form-control" name="city" id="city" value="{if isset($smarty.post.city)}{$smarty.post.city}{/if}" />
                    </p>
                    <!-- if customer hasn't update his layout address, country has to be verified but it's deprecated -->
                {elseif $field_name eq "Country:name" || $field_name eq "country"}
                    <p class="required select form-group" style="display: none;">
                        <label for="id_country">{l s='Country'} <sup>*</sup></label>
                        <select name="id_country" id="id_country" class="form-control">
                            <option value="">-</option>
                            {foreach from=$countries item=v}
                                <option value="{$v.id_country}"{if (isset($smarty.post.id_country) AND $smarty.post.id_country == $v.id_country) OR (!isset($smarty.post.id_country) && $sl_country == $v.id_country)} selected="selected"{/if}>{$v.name}</option>
                            {/foreach}
                        </select>
                    </p>
                {elseif $field_name eq "State:name" || $field_name eq 'state'}
                    {assign var='stateExist' value=true}
                    <p class="required id_state select form-group">
                        <label for="id_state">{l s='State'} <sup>*</sup></label>
                        <select name="id_state" id="id_state" class="form-control">
                            <option value="">-</option>
                        </select>
                    </p>
                {/if}
            {/foreach}
            {if $postCodeExist eq false}
                <p class="required postcode form-group unvisible">
                    <label for="postcode">{l s='Zip/Postal Code'} <sup>*</sup></label>
                    <input type="text" class="form-control" name="postcode" id="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{/if}" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
                </p>
            {/if}
            {if $stateExist eq false}
                <p class="required id_state select unvisible form-group">
                    <label for="id_state">{l s='State'} <sup>*</sup></label>
                    <select name="id_state" id="id_state" class="form-control">
                        <option value="">-</option>
                    </select>
                </p>
            {/if}
            <p class="textarea form-group">
                <label for="other">{l s='Additional information'}</label>
                <textarea class="form-control" name="other" id="other" cols="26" rows="3">{if isset($smarty.post.other)}{$smarty.post.other}{/if}</textarea>
            </p>
            {if isset($one_phone_at_least) && $one_phone_at_least}
                <p class="inline-infos">{l s='You must register at least one phone number.'}</p>
            {/if}
            <p class="form-group">
                <label for="phone">{l s='Home phone'}</label>
                <input type="text" class="form-control" name="phone" id="phone" value="{if isset($smarty.post.phone)}{$smarty.post.phone}{/if}" />
            </p>
            <p class="{if isset($one_phone_at_least) && $one_phone_at_least}required {/if}form-group">
                <label for="phone_mobile">{l s='Mobile phone'}{if isset($one_phone_at_least) && $one_phone_at_least} <sup>*</sup>{/if}</label>
                <input type="text" class="form-control" name="phone_mobile" id="phone_mobile" value="{if isset($smarty.post.phone_mobile)}{$smarty.post.phone_mobile}{/if}" />
            </p>
            <p class="required form-group" id="address_alias">
                <label for="alias">{l s='Assign an address alias for future reference.'} <sup>*</sup></label>
                <input type="text" class="form-control" name="alias" id="alias" value="{if isset($smarty.post.alias)}{$smarty.post.alias}{else}{l s='My address'}{/if}" />
            </p>
        </div>
        <div class="account_creation dni">
            <h3 class="page-subheading">{l s='Tax identification'}</h3>
            <p class="required form-group">
                <label for="dni">{l s='Identification number'} <sup>*</sup></label>
                <input type="text" class="form-control" name="dni" id="dni" value="{if isset($smarty.post.dni)}{$smarty.post.dni}{/if}" />
                <span class="form_info">{l s='DNI / NIF / NIE'}</span>
            </p>
        </div>
    {/if}
    {$HOOK_CREATE_ACCOUNT_FORM}
    <div class="submit clearfix">
        <p class="required-label required" style="margin-bottom: 20px; margin-top: -5px;"><span><sup>*</sup> pola wymagane</span></p>
        <input type="hidden" name="email_create" value="1" />
        <input type="hidden" name="is_new_customer" value="1" />
        {if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'html':'UTF-8'}" />{/if}
        <button type="submit" name="submitAccount" id="submitAccount" class="btn btn-default button button-medium">
            <span>{l s='Register'}<i class="icon-chevron-right right"></i></span>
        </button>
    </div>
    </form>
    </div>
{/if}
{strip}
    {if isset($smarty.post.id_state) && $smarty.post.id_state}
        {addJsDef idSelectedState=$smarty.post.id_state|intval}
    {else if isset($address->id_state) && $address->id_state}
        {addJsDef idSelectedState=$address->id_state|intval}
    {else}
        {addJsDef idSelectedState=false}
    {/if}
    {if isset($smarty.post.id_country) && $smarty.post.id_country}
        {addJsDef idSelectedCountry=$smarty.post.id_country|intval}
    {else if isset($address->id_country) && $address->id_country}
        {addJsDef idSelectedCountry=$address->id_country|intval}
    {else}
        {addJsDef idSelectedCountry=false}
    {/if}
    {if isset($countries)}
        {addJsDef countries=$countries}
    {/if}
    {if isset($vatnumber_ajax_call) && $vatnumber_ajax_call}
        {addJsDef vatnumber_ajax_call=$vatnumber_ajax_call}
    {/if}
    {if isset($email_create) && $email_create}
        {addJsDef email_create=$email_create|boolval}
    {else}
        {addJsDef email_create=false}
    {/if}
{/strip}