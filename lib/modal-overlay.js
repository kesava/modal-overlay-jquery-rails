var ModalOverlay = {

    DimmerOpacity: 0.75,

    update: function(html) {
        jQuery('#modal-overlay').html(html);
    },

    show: function() {
        if (! jQuery('.modal-overlay').is(":visible")) {
            jQuery('.modal-overlay-dimmer').fadeIn('slow');
            jQuery('.modal-overlay').fadeIn('slow');

		}
    },

    hide: function() {
        if (jQuery('.modal-overlay').is(":visible")) {
            jQuery('.modal-overlay-dimmer').fadeOut('slow');
			jQuery('.modal-overlay').fadeOut('slow');
        }
    },

	fetch: function(desturl) {
		jQuery('#modal-overlay').load(desturl);	
		ModalOverlay.show();
	}
    
}