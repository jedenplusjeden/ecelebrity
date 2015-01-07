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
    <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">
        {l s='My account'}
    </a>
    <span class="navigation-pipe">
        {$navigationPipe}
    </span>
    <span class="navigation_page">
        {l s='Your personal information'}
    </span>
{/capture}
<div class="box clearfix">
    <ul class="step clearfix" id="order_step">
        <li class="step_done first">
            Twoje konto
        </li>
        <li class="step_current second">
            Dane osobiste
        </li>
    </ul>
    
    {include file="$tpl_dir./errors.tpl"}
    
    {if isset($confirmation) && $confirmation}
        <p class="alert alert-success">
            {l s='Your personal information has been successfully updated.'}
            {if isset($pwd_changed)}<br />{l s='Your password has been sent to your email:'} {$email}{/if}
        </p>
    {else}
        <p class="info-title block_title">
            {l s='Please be sure to update your personal information if it has changed.'}
        </p>
        <form action="{$link->getPageLink('identity', true)|escape:'html':'UTF-8'}" method="post" class="std col_50_centered col_float">
            <fieldset>
                <div class="required form-group">
                    <label for="firstname" class="required">
                        {l s='First name'} 
                    </label>
                    <input class="is_required validate form-control" data-validate="isName" type="text" id="firstname" name="firstname" value="{$smarty.post.firstname}" />
                </div>
                <div class="required form-group">
                    <label for="lastname" class="required">
                        {l s='Last name'} 
                    </label>
                    <input class="is_required validate form-control" data-validate="isName" type="text" name="lastname" id="lastname" value="{$smarty.post.lastname}" />
                </div>
                <div class="required form-group">
                    <label for="email" class="required">
                        {l s='E-mail address'} 
                    </label>
                    <input class="is_required validate form-control" data-validate="isEmail" type="email" name="email" id="email" value="{$smarty.post.email}" />
                </div>

                <div class="required form-group">
                    <label for="old_passwd" class="required">
                        {l s='Current Password'} 
                    </label>
                    <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="old_passwd" id="old_passwd" />
                </div>
                <div class="password form-group">
                    <label for="passwd">
                        {l s='New Password'}
                    </label>
                    <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="passwd" id="passwd" />
                </div>
                <div class="password form-group">
                    <label for="confirmation">
                        {l s='Confirmation'}
                    </label>
                    <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="confirmation" id="confirmation" />
                </div>
                {if $newsletter}
                    <div class="checkbox">
                        <label for="newsletter">
                            <input type="checkbox" id="newsletter" name="newsletter" value="1" {if isset($smarty.post.newsletter) && $smarty.post.newsletter == 1} checked="checked"{/if}/>
                            {l s='Sign up for our newsletter!'}
                        </label>
                    </div>
                    <div class="checkbox">
                        <label for="optin">
                            <input type="checkbox" name="optin" id="optin" value="1" {if isset($smarty.post.optin) && $smarty.post.optin == 1} checked="checked"{/if}/>
                            Wyrażam zgodę na przetwarzanie danych do celów marketingowych.
                        </label>
                    </div>
                {/if}
                <p class="required required-label">
                    <sup>*</sup>{l s='Required field'}
                </p>
                <div class="form-group clearfix">
                    <button type="submit" name="submitIdentity" class="btn btn-default button button-medium" style="margin-top: 20px; float: right;">
                        <span>{l s='Save'}<i class="icon-chevron-right right"></i></span>
                    </button>
                </div>
            </fieldset>
        </form> <!-- .std -->
    {/if}
</div>
