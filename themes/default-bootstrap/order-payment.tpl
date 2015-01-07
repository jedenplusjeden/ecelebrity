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
{if !$opc}
	{addJsDef currencySign=$currencySign|html_entity_decode:2:"UTF-8"}
	{addJsDef currencyRate=$currencyRate|floatval}
	{addJsDef currencyFormat=$currencyFormat|intval}
	{addJsDef currencyBlank=$currencyBlank|intval}
	{addJsDefL name=txtProduct}{l s='product' js=1}{/addJsDefL}
	{addJsDefL name=txtProducts}{l s='products' js=1}{/addJsDefL}

{else}
{/if}

{if !$opc}
	{assign var='current_step' value='payment'}
	{include file="$tpl_dir./order-steps.tpl"}
	{include file="$tpl_dir./errors.tpl"}
{else}
	<div id="opc_payment_methods" class="opc-main-block">
		<div id="opc_payment_methods-overlay" class="opc-overlay" style="display: none;"></div>
{/if}
		<div class="paiement_block">
			<div id="HOOK_TOP_PAYMENT">{$HOOK_TOP_PAYMENT}</div>
				{if $HOOK_PAYMENT}
					{if !$opc}
						<div id="order-detail-content" class="table_block table-responsive">
                            <div id="HOOK_PAYMENT">
                                <h1 class="page-heading">{l s='Please choose your payment method'}</h1>
                                {$HOOK_PAYMENT}
                            </div>

						</div> <!-- end order-detail-content -->
					{/if}
				{else}
					<p class="alert alert-warning">{l s='No payment modules have been installed.'}</p>
				{/if}
				{if !$opc}
					<p class="cart_navigation clearfix">
						<a href="{$link->getPageLink('order', true, NULL, "step=2")|escape:'html':'UTF-8'}" title="{l s='Previous'}" class="button-exclusive btn btn-default">
							<i class="icon-chevron-left"></i>
							{l s='Continue shopping'}
						</a>
					</p>
				{else}
					</div> <!-- end opc_payment_methods -->
				{/if}
			</div> <!-- end HOOK_TOP_PAYMENT -->
            <div id="payments_brands">

            </div>