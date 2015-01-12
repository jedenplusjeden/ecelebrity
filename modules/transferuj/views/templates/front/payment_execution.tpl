
{capture name=path}{l s='Płać z Transferuj.pl' mod='transferuj'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}
<h2>{l s='Podsumowanie zamówienia' mod='transferuj'}</h2>
{assign var='current_step' value='payment'}

<img src="{$this_path}logo.png" alt="{l s='Płać z Transferuj.pl' mod='transferuj'}" style="margin-bottom: 5px" />

<p><br/>
{l s='Poniżej znajduje się podsumowanie Twojego zamówienia.' mod='transferuj'}
	
</p>
<p style="margin-top:20px;">
	{l s='Całkowita kwota do zapłaty: ' mod='transferuj'}
		<b><span class="price">{convertPriceWithCurrency price=$kwota currency=$currency}</span></b>
</p>
<p>
<form action="{$link->getModuleLink('transferuj', 'validation', [], true)}" method="post" id="transferujForm" name="transferujForm">
<input type="hidden" name="confirm" value={$seckey} />
<input type="hidden" name="id" value="{$sid}" />
<input type="hidden" name="kwota" value="{$kwota}" />
<input type="hidden" name="email" value="{$mail}" />
<input type="hidden" name="nazwisko" value="{$nazwisko}" />
<input type="hidden" name="imie" value="{$imie}" />
<input type="hidden" name="adres" value="{$adres}" />
<input type="hidden" name="miasto" value="{$miasto}" />
<input type="hidden" name="kraj" value="{$kraj}" />
<input type="hidden" name="kod" value="{$kod}" />
<input type="hidden" name="jezyk" value="{$jezyk}" />
<input type="hidden" name="cart" value="{$crc}" />
<input type="hidden" name="telefon" value="{$telefon}" />
<input type="hidden" name="pow_url" value="{$goBackUrl}" />
<input type="hidden" name="pow_url_blad" value="{$goBackUrlError}" />
<input type="hidden" name="wyn_url" value="{$notify}" />
{$chan}
{$reg}
</p>
<p>
	<b>{l s='Potwierdź zamówienie klikając \'Potwierdzam zamówienie\'' mod='transferuj'}.</b>
</p>
<p class="cart_navigation">
	<a href="{$link->getPageLink('order.php', true)}?step=3" class="button_large">{l s='Inne metody płatności' mod='transferuj'}</a>
	<a href="#" class="exclusive_large" onclick="$('#transferujForm').submit();return false;" value="{l s='I confirm my order' mod='transferuj'}">{l s='I confirm my order' mod='transferuj'}</a>
</p>
</form>
