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
{capture name=path}<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">{l s='My account'}</a><span class="navigation-pipe">{$navigationPipe}</span><span class="navigation_page">{l s='My addresses'}</span>{/capture}
<ul class="step clearfix" id="order_step">
    <li class="step_done first">
        Twoje konto
    </li>
    <li class="step_current second">
        Twoje adresy
    </li>
</ul>
<p>{l s='Please configure your default billing and delivery addresses when placing an order. You may also add additional addresses, which can be useful for sending gifts or receiving an order at your office.'}</p>
{if isset($multipleAddresses) && $multipleAddresses}
<div class="addresses">
	<p class="p-indent">{l s='Be sure to update your personal information if it has changed.'}</p>
    <div class="clearfix main-page-indent" style="margin-bottom: 20px;margin-top: 12px;">
        <a href="{$link->getPageLink('address', true)|escape:'html':'UTF-8'}" title="{l s='Add an address'}" class="btn btn-default button button-medium"><span>{l s='Add a new address'}<i class="icon-chevron-right right"></i></span></a>
    </div>
	{assign var="adrs_style" value=$addresses_style}
	<div class="bloc_adresses row">
        <div class="adresses-info-wrapper clearfix">
            {foreach from=$addresses key=k item=address}
                <div class="address-info">
                    <div class="address-info-title">{$address.alias|escape:'html':'UTF-8'}</div>
                    <p>{$address.firstname|escape:'html':'UTF-8'}</p>
                    <p>{$address.lastname|escape:'html':'UTF-8'}</p>
                    <p>{$address.city|escape:'html':'UTF-8'}, {$address.address1|escape:'html':'UTF-8'} {$address.postcode|escape:'html':'UTF-8'}</p>
                    <p>{$address.country|escape:'html':'UTF-8'}</p>
                    <p>{$address.phone_mobile|escape:'html':'UTF-8'}</p>
                    <p>{$address.phone|escape:'html':'UTF-8'}</p>
                    <div style="margin-top: 20px;">
                        <a class="button" href="/address?id_address={$address.id_address|escape:'html':'UTF-8'}">Uaktualnij</a>
                        <a class="button" href="/address?id_address={$address.id_address|escape:'html':'UTF-8'}&delete=">Usuń</a>
                    </div>
                </div>
            {/foreach}
        </div>
	</div>
</div>
{else}
	<p class="alert alert-warning">{l s='No addresses are available.'}&nbsp;<a href="{$link->getPageLink('address', true)|escape:'html':'UTF-8'}">{l s='Add a new address'}</a></p>
{/if}
