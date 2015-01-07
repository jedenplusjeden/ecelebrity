
{if $status == 'ok'}
<p>{l s='Twoje zamówienie w sklepie zostało złożone.' sprintf=$shop_name mod='transferuj'}
	</p>
{else}
	<p class="warning">
		{l s='Wystąpił problem ze złożeniem zamówienia.' mod='transferuj'} 
	</p>
{/if}
