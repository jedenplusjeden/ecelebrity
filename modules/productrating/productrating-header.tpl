{if $page_name == 'product'}
<!-- Module Rating -->
	<style type="text/css">
		.unit-rating, .unit-rating li a:hover, .unit-rating li.current-rating {ldelim}
		background-image: url('{$content_dir}modules/productrating/rating/stars/{$star}')
		{rdelim}
		
		.ratingblock {ldelim}
		{if $bgcolor}
		background-color: #{$bgcolor};
		{/if}
		{if $bdcolor}
		border: 1px #{$bdcolor} solid;
		{/if}
		{rdelim}
	</style>
<!-- Module Rating -->
{/if}
