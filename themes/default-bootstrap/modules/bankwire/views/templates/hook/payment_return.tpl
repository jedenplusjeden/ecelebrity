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

{if $status == 'ok'}
	<div class="box">
		<p class="cheque-indent">
			<strong class="dark">Dziękujemy za złożenie zamówienia.</strong><br /><br />
		</p>
		Prosimy o dokonanie przelewu na poniższe dane:
		<br />- {l s='Amount' mod='bankwire'} <span class="price"> <strong>{$total_to_pay}</strong></span>
		<br />- dla <strong>{if $bankwireOwner}{$bankwireOwner}{else}___________{/if}</strong>
		<br />- na konto nr <strong>{if $bankwireDetails}{$bankwireDetails}{else}___________{/if}</strong>
		<br />- w banku <strong>{if $bankwireAddress}{$bankwireAddress}{else}___________{/if}</strong>
		{if !isset($reference)}
			<br />- W tytule przelewu podaj nr zamówienia: $id_order
		{else}
			<br />- {l s='W tytule przelewu podaj nr zamówienia: %s' sprintf=$reference mod='bankwire'}
		{/if}		<br /><br />Informacje o płatności zostały przesłane również na Twój adres email.
		<br /> <strong>Twoje zamówienie zostanie wysłane zaraz po zaksięgowaniu się wpłaty na naszym koncie.</strong>
		<br />W razie pytań lub wątpliwości skontaktuj się z nami.
	</div>
{else}
	<p class="alert alert-warning">
		{l s='We noticed a problem with your order. If you think this is an error, feel free to contact our' mod='bankwire'} 
		<a href="{$link->getPageLink('contact', true)|escape:'html':'UTF-8'}">{l s='expert customer support team. ' mod='bankwire'}</a>.
	</p>
{/if}
