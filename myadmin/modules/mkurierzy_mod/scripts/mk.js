$(function() {
$( ".parcel-limit-info, .parcel-content, .button" ).tooltip({
      show: null,
      hide: {
			when: { event: 'click' },
			effect: { type: 'slide' }
		},
      position: {
        my: "left top",
        at: "left bottom"
      },
      content: function () {
          return $(this).prop('title');
      },
      open: function( event, ui ) {
        ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
      },
    });
});