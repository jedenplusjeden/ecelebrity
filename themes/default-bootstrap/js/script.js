$(document).ready(function(){

    var $bigImg = $('#bigpic');
    var $bigImgWrapper = $('#image-block');

    if(typeof(id_product) != "undefined") {
        var key = 'product_' + id_product;

        var readedCookie = readCookie(key);

        if (readedCookie != null) {
            $('#add_to_cart').find('.like').addClass('liked');
        }
    }

    $('#externalContactForm').on('submit', function(){
       console.log('externalContactForm');
    });

    $('#add_to_cart').find('.like').on('click', function(){
        if (readedCookie == null) {
            createCookie(key, "true", 365);
            $('#add_to_cart').find('.like').addClass('liked');
            ga('send', 'event', 'Kliknięcie', 'Polubienie');
        }
        return false;
    });

	$('#login-nav li a').on('click', function(){
		var href = $(this).attr('href');
		if ( ! $(this).hasClass('open') ) {
            $('#login-nav li a').removeClass('open');
            $('.toggleClass').removeClass('open');
            $(this).addClass('open');
            $(href).addClass('open');
        }
        else {
            $('#login-nav li a').removeClass('open');
            $('.toggleClass').removeClass('open');
        }

		return false;
	});
	$('#homeslider').bxSlider({
		controls: false,
		auto: true
	});

    $('#block_top_menu').find('.cat-title').on('click', function(){
        $('#block_top_menu').toggleClass('opened');
        return false;
    });

    if ($("#newsletter_block_left").find('.form-ok').length > 0 || $("#newsletter_block_left").find('.form-error').length > 0) {
        $.magnificPopup.open({
            items: {
                src: $('#newsletter-ok-popup').html($('#newsletter-input').val())
            },
            type: 'inline',
            closeBtnInside: true
        }, 0);
    }

    if ($('#carrier-accept').length > 0) {
        $('#cgv').prop("checked", true);
        $('button.standard-checkout').on('click', function(){
            if ( ! $('#cgv').is(':checked')) {
                $('#carrier-accept').addClass('not-checked');
                return false;
            }
        });
    }

    $('.list-product-additional-info').each(function(){
        var text = $(this).text().trim();
        $(this).html("<p>" + text.substring(0,20) + "</p>");
    });

    $("#term-sidebar ol a").click(function() {
        var src = $(this).attr('href');
        $('html, body').animate({
            scrollTop: $(src).offset().top - 50
        }, 500);
        return false;
    });

    $("#block_top_menu .menu-content > li > a, .category_footer .tree > li > a").each(function(){
        if ($(this).parent().find('ul').length > 0) {
            $(this).attr("href", "#");
            $(this).on('click', false);
        }
    });


    $('#newsletter-input').on('focus', function(){
        $(this).attr('data-val', $(this).val());
        $(this).val('');
    });

    $('#newsletter-input').on('focusout', function(){
        if ($(this).val() == '') {
            $(this).val($(this).attr('data-val'));
        }
    });

    $('.breadcrumb .current a:first-child').attr("href", "#");
    $('.breadcrumb .current a:first-child').on('click', false);

    $('#thumbs_list a').on('click', function(){
        var imgSrc = $(this).attr('href');
        if ( $bigImg.attr('src') != imgSrc ) {
            $('#view_full_size .span_link').attr('data-number', $(this).parents('li').index());
            $bigImg.attr('src', imgSrc);
        }
        return false;
    });

    cssFix();
    attributesAdvanced();
    stickyFooter();
    $(window).load(function(){
        cssFix();
        stickyFooter();
    });

    $(window).resize(function(){
        stickyFooter();
    });

    $('select').wrap( "<div class='select-wrapper'></div>" );

    $('input[type="checkbox"]').each(function(){
        var id = $(this).attr('id');
        if ( this.checked ) {
            $('label[for="' + id + '"]').addClass('checked');
        }
    });

    $('.delivery_options_address .delivery_option').on('click', function(){
       $(this).find('.delivery_option_radio').prop('checked', true);
    });

    $('input[type="checkbox"]').on('change', function(){
        var id = $(this).attr('id');
        if ( this.checked ) {
            $('label[for="' + id + '"]').addClass('checked');
        }
        else {
            $('label[for="' + id + '"]').removeClass('checked');
        }
    });

    $('.addresses #addressesAreEquals').on('change', function(){
        if ( this.checked ) {
            $('.addresses #id_address_invoice').val($(".addresses #id_address_delivery option:selected").val());
            $('.addresses #address_invoice_form').hide();
        }
        else {
            $('.addresses #address_invoice_form').show();
        }
    });

    function selectFirstAvaiableColor($that) {
        if ( typeof(combinationImages) == "undefined" || combinationImages === null ) {
            return false;
        }
        $('#attributes .attribute_list.attribute_list_thumb li').removeClass('selected');
        $that.addClass('selected');
        $that.parents('.attribute_list').find('input').prop('checked', false);
        var $input = $that.find('input');
        $input.prop('checked', true);
        var value = $input.val();
        var $thumbs = $('#thumbs_list_frame');
        $thumbs.find('li').show();
        findCombination();
        $.each(combinations, function(key, val){
            if ( $.inArray(parseInt(value), val.attributes) >= 0) {
                if ( combinationImages[key] != undefined ) {
                    var imagesID = new Array();
                    for ( var i = 0; i < combinationImages[key].length; i+=1 ) {
                        imagesID.push(combinationImages[key][i].id_image);
                    }
                    var bigChanged = false;
                    $thumbs.find('li').each(function(){
                        var attrID = $(this).attr('id');
                        var IDparts = attrID.split('_');
                        var IDpart = IDparts[1];
                        if ( $.inArray(IDpart, imagesID) < 0) {
                            $(this).hide();
                        }
                        else {
                            if ( ! bigChanged ) {
                                bigChanged = true;
                                var imgSrc = $(this).find('a').attr('href');
                                if ( $bigImg.attr('src') != imgSrc ) {
                                    $bigImg.attr('src', imgSrc);
                                }
                            }
                        }
                    });
                }
            }
        });
        return false;
    }

    $(document).on('click', '#attributes .attribute_list.attribute_list_thumb li', function(){
        checkForSizes($(this));
        if ( typeof(combinationImages) == "undefined" || combinationImages === null ) {
            return false;
        }
        $('#attributes .attribute_list.attribute_list_thumb li').removeClass('selected');
        $(this).addClass('selected');
        $(this).parents('.attribute_list').find('input').prop('checked', false);
        var $input = $(this).find('input');
        $input.prop('checked', true);
        var value = $input.val();
        var $thumbs = $('#thumbs_list_frame');
        $thumbs.find('li').show();
        findCombination();
        $.each(combinations, function(key, val){
            if ( $.inArray(parseInt(value), val.attributes) >= 0) {
                if ( combinationImages[key] != undefined ) {
                    var imagesID = new Array();
                    for ( var i = 0; i < combinationImages[key].length; i+=1 ) {
                        imagesID.push(combinationImages[key][i].id_image);
                    }
                    var bigChanged = false;
                    $thumbs.find('li').each(function(){
                        var attrID = $(this).attr('id');
                        var IDparts = attrID.split('_');
                        var IDpart = IDparts[1];
                        if ( $.inArray(IDpart, imagesID) < 0) {
                            $(this).hide();
                        }
                        else {
                            if ( ! bigChanged ) {
                                bigChanged = true;
                                var imgSrc = $(this).find('a').attr('href');
                                if ( $bigImg.attr('src') != imgSrc ) {
                                    $bigImg.attr('src', imgSrc);
                                }
                            }
                        }
                    });
                }
            }
        });
        return false;
    });

    function cssFix() {
//        var bigImgH = $bigImgWrapper.outerHeight();
//        var $div1 = $('.pb-center-column');
//        var $div2 = $('.pb-right-column');
//
//        var height = bigImgH - $div1.outerHeight();
//
//        $div2.css({
//            'height': height
//        });
    }

    $('#view_full_size .span_link').on('click', function(){
//        $.magnificPopup.open({
//            items: {
//                src: $('#bigpic').attr('src')
//            },
//            type: 'image',
//            gallery:{
//                enabled:true
//            }
//        }, 0);
        console.log('click');
        var number = parseInt($(this).attr('data-number'));
        $('#thumbs_list_frame').magnificPopup({
            delegate: 'a', // the selector for gallery item
            type: 'image',
            gallery: {
                enabled:true
            },
            callbacks: {
                resize: function() {
                    setTimeout(moveMagniArrows, 10);
                },
                change: function() {
                    setTimeout(moveMagniArrows, 10);
                },
                imageLoadComplete: function() {
                    moveMagniArrows();
                }
            }
        }).magnificPopup('open', number);
        return false;
    });

    function moveMagniArrows() {
        var winW = $(window).width();
        var conW = $('.mfp-content').width();
        var diff = winW - conW;
        $('.mfp-arrow-left').css({
            'left': (diff / 2 - 100)
        });
        $('.mfp-arrow-right').css({
            'right': (diff / 2 - 100)
        });
    }

    $('#attributes').find('.attribute_fieldset:eq(0)').prepend('<span class="tabela-rozmiarow">TABELA ROZMIARÓW</span>');

    $(document).on('click', '.tabela-rozmiarow', function(){
        $.magnificPopup.open({
            items: {
                src: $('#tabela-rozmiarow img').attr('src')
            },
            type: 'image'
        }, 0);
        return false;
    });

    setTimeout(function(){
        if ($('#attributes').find('.attribute_list:eq(0)').find('li:not(.not-available):first span').length > 0) {
            $('#attributes').find('.attribute_list:eq(0)').find('li:not(.not-available):first span').trigger('click');
        }
        else {
            findSizeCombination();
        }
//        $('#attributes .attribute_list.attribute_list_thumb li:first-child').trigger('click');
    }, 10);
    setTimeout(function(){
//        $('#attributes').find('.attribute_list:eq(0)').find('li:first-child span').trigger('click');
//        $('#attributes .attribute_list.attribute_list_thumb li.plus-show:eq(0)').trigger('click');
    }, 20);
    $('#attributes .attribute_list input').each(function(){
        var thisVal = $(this).val();
        var available = false;
        $.each(combinations, function(key, val){
            if ( (val.attributes[0] == thisVal || val.attributes[1] == thisVal || val.attributes[2] == thisVal) && val.quantity > 0) {
                available = true;
                return false;
            }
            else {
                available = false;
            }
        });
        if ( ! available) {
            $(this).parent('li').addClass('not-available');
        }
    });
    $(document).on('click', '#attributes .attribute_list span', function(){
        checkForColors($(this));
        var name = $(this).siblings('input').attr('name');
        var siblings = 'input[name="' + name + '"]';

        $(siblings).siblings('span').removeClass('selected');

        $(this).addClass('selected');

        $(this).parents('.attribute_list').find('input').prop('checked', false);

        $(this).siblings('input').prop('checked', true);
//        findCombination();
        findSizeCombination();
        return false;
    });

    function findSizeCombination() {
        if (typeof combinations === 'undefined' || $('#attributes .attribute_list input[type="radio"]').length <= 0) {
            return;
        }
        var chosenSize = parseInt($('#attributes input[type=radio]:checked').val());

        var isCombinationFound = false;
        $.each(combinations, function(key, val){
//            console.log(chosenSize);
//            console.log(val.attributes);
            combinationMatchForm = false;
            var clicked = false;
            if ( (val.attributes[0] == chosenSize || val.attributes[1] == chosenSize || val.attributes[2] == chosenSize) && val.quantity > 0) {
                combinationMatchForm = true;
            }
            else {
                combinationMatchForm = false;
            }

            var clicked = false;
            if (val.attributes[0] == chosenSize || val.attributes[1] == chosenSize || val.attributes[2] == chosenSize) {
                clicked = true;
            }
            else {
                clicked = false;
            }

            if (clicked) {
                $('#product_reference .editable').text(val.reference);
            }
//            console.log("196: " + combinationMatchForm + " " + key);
            if (combinationMatchForm)
            {
                $('#idCombination').val(key);
                $('#our_price_display').text(Math.round((val.price * ((100 + taxRate) / 100) + productPrice) * 100) / 100 + ' zł');
//                console.log(val);

                $('.box-cart-bottom .content_prices, #add_to_cart button').css('visibility', 'visible');
                isCombinationFound = true;
                return false;
            }
            else {
                $('#idCombination').val('');
                $('.box-cart-bottom .content_prices, #add_to_cart button').css('visibility', 'hidden');
            }
        });
    }

    $('#add_to_cart button').on('click', function(){
        ga('send', 'event', 'Kliknięcie', 'Dodaj do koszyka');
        console.log('send');
        if(($('#idCombination').val() == '' || $('#idCombination').val() == undefined) && $('#attributes .attribute_list input[type="radio"]').length > 0) {
            return false;
        }
//        return false;
    });

    if ($(window).width() <= 768) {
        $('#layered_block_left').find('.title_block span').text('Rozwiń filtry');
    }

    $('#layered_block_left').on('click', function(){
        $(this).toggleClass('opened');
        if ($(this).hasClass('opened')) {
            $(this).find('.title_block span').text('Zastosuj filtry');
        }
        else {
            $(this).find('.title_block span').text('Rozwiń filtry');
        }
    });

    $('#button_order_cart_close').on('click', function(){
        $.magnificPopup.close();
        return false;
    });

    function checkForColors($clicked) {
        var choice = [];
        var $clicked_input = $clicked.siblings('input');
        var $selected_attr = parseInt($clicked_input.val());

        $('#attributes .attribute_list.attribute_list_thumb li').each(function(){
            choice = [];
            choice.push($selected_attr);
            choice.push(parseInt($(this).find('input').val()));
            if (checkIfCombinationExists(choice)) {
//                $(this).show();
                $(this).removeClass('plus-opacity');
                $(this).addClass('plus-show');
            }
            else {
//                $(this).hide();
                $(this).addClass('plus-opacity');
                $(this).removeClass('plus-show');
            }
        });
//        $('#attributes .attribute_list.attribute_list_thumb li').removeClass('plus-nml');
//        $('#attributes .attribute_list.attribute_list_thumb').find('li.plus-show:eq(0)').addClass('plus-nml');
//        $('#attributes .attribute_list.attribute_list_thumb').find('li.plus-show:eq(0)').trigger('click');
//        selectFirstAvaiableColor($('#attributes .attribute_list.attribute_list_thumb').find('li.plus-show:eq(0)'));
//        $('#attributes .attribute_list.attribute_list_thumb li').removeClass('selected');
        $('#attributes').find('.attribute_list:eq(0)').find('li').removeClass('plus-opacity');

    }

    function checkForSizes($clicked) {
        var choice = [];
        var $clicked_input = $clicked.find('input');
        var $selected_attr = parseInt($clicked_input.val());

        $('#attributes').find('.attribute_list:eq(0)').find('li').each(function(){
            choice = [];
            choice.push($selected_attr);
            choice.push(parseInt($(this).find('input').val()));
            if (checkIfCombinationExists(choice)) {
//                $(this).show();
                $(this).removeClass('plus-opacity');
                $(this).addClass('plus-show');
            }
            else {
//                $(this).hide();
                $(this).addClass('plus-opacity');
                $(this).removeClass('plus-show');
            }
        });
//        $('#attributes').find('.attribute_list:eq(0)').find('li').removeClass('plus-nml');
//        $('#attributes').find('.attribute_list:eq(0)').find('li.plus-show:eq(0)').addClass('plus-nml');
//        $('#attributes').find('.attribute_list:eq(0)').find('li.plus-show:eq(0) span').trigger('click');
//        $('#attributes').find('.attribute_list:eq(0)').find('li').removeClass('selected');
    }

    function checkIfCombinationExists(choice) {
        var isCombinationFound = false;
        $.each(combinations, function(key, val){
            var combinationMatchForm = true;
            var ite = 0;
//            console.log("choice: ");
//            console.log(choice);
//            console.log("attributes: ");
//            console.log(val.attributes);
            $.each(val.attributes, function(keyy, value)
            {

                if ( $.inArray(value, choice) < 0 && ite != 0 )
                    combinationMatchForm = false;
                ite = ite + 1;
            });

            if (combinationMatchForm)
            {
                isCombinationFound = true;
                return false;
            }
        });
        return isCombinationFound;
    }

    function findCombination() {
        var choice = [];
        var radio_inputs = parseInt($('#attributes .checked > input[type=radio]').length);
        if (radio_inputs)
            radio_inputs = '#attributes .checked > input[type=radio]';
        else
            radio_inputs = '#attributes input[type=radio]:checked';

        $('#attributes select, #attributes input[type=hidden], ' + radio_inputs).each(function(){
            choice.push(parseInt($(this).val()));
        });

        if (typeof combinations == 'undefined' || !combinations)
            combinations = [];


        var isCombinationFound = false;
        $.each(combinations, function(key, val){
//            console.log(choice);
//            console.log(val.attributes);
            combinationMatchForm = true;
            if ( val.attributes.length - 1 == choice.length ) {
                var ite = 0;
                $.each(val.attributes, function(keyy, value)
                {
//                    console.log("187: " + value);

                    if ( $.inArray(value, choice) < 0 && ite != 0 )
                        combinationMatchForm = false;
                    ite = ite + 1;
                });
            }
            else {
                combinationMatchForm = false;
            }
//            console.log("196: " + combinationMatchForm + " " + key);
            if (combinationMatchForm)
            {
                $('#idCombination').val(key);
                $('#our_price_display').text(Math.round((val.price * ((100 + taxRate) / 100) + productPrice) * 100) / 100 + ' zł');
                $('.box-cart-bottom .content_prices, #add_to_cart button').css('visibility', 'visible');
                isCombinationFound = true;
                return false;
            }
            else {
                $('#idCombination').val('');
                $('.box-cart-bottom .content_prices, #add_to_cart button').css('visibility', 'hidden');
            }
        });
//        console.log(isCombinationFound);
    }

    function attributesAdvanced() {
//        if ( typeof(combinationImages) == "undefined" || combinationImages === null ) {
//            return false;
//        }
//        $('#attributes > .attribute_fieldset:last-child .attribute_list li').each(function(){
//           var $input = $(this).find('input');
//           var value = $input.val();
//            $.each(combinations, function(key, val){
//                if ( $.inArray(parseInt(value), val.attributes) >= 0) {
//                    if ( combinationImages[key] != undefined ) {
//                        if ( combinationImages[key].length > 0 ) {
//                            var img = '#thumbnail_' + combinationImages[key][0].id_image;
//                            if ( ! $input.parents('.attribute_list').hasClass('attribute_list_thumb') ) {
//                                $input.parents('.attribute_list').addClass('attribute_list_thumb');
//                            }
//                            if ( $input.parent('li').find('img').length <= 0 ) {
//                                $input.parent('li').append('<img src="'+ $(img).find('img').attr('src') +'" />');
//                            }
//                        }
//                    }
//                }
//            });
//        });
    }

    $(window).load(function(){
        $('#content').addClass('loaded');
    });
    setTimeout(function(){
        $('#content').addClass('loaded');
    }, 1000);

    function stickyFooter() {
        var fHeight = $("#allFooterWrapper").outerHeight();
        var wHeight = $(window).height();
        var cHeight = $('#login-nav').outerHeight() + $('#header').outerHeight() + $('#content').outerHeight();
        var diff = wHeight - cHeight;
        if (diff > fHeight) {
            $("#allFooterWrapper").addClass('sticky-footer');
        }
        else {
            $("#allFooterWrapper").removeClass('sticky-footer');
        }
    }
});

function showOrder(mode, var_content, file)
{
    $.get(
        file,
        ((mode === 1) ? {'id_order': var_content, 'ajax': true} : {'id_order_return': var_content, 'ajax': true}),
        function(data)
        {
            $('#block-order-detail').fadeOut('slow', function()
            {
                $(this).html(data);
//                $('.footab').footable();
                /* if return is allowed*/
                if ($('#order-detail-content .order_cb').length > 0)
                {
                    //return slip : check or uncheck every checkboxes
                    $('#order-detail-content th input[type=checkbox]').click(function()
                    {
                        $('#order-detail-content td input[type=checkbox]').each(function()
                        {
                            this.checked = $('#order-detail-content th input[type=checkbox]').is(':checked');
                            updateOrderLineDisplay(this);
                        });
                    });
                    //return slip : enable or disable 'global' quantity editing
                    $('#order-detail-content td input[type=checkbox]').click(function()
                    {
                        updateOrderLineDisplay(this);
                    });
                    //return slip : limit quantities
                    $('#order-detail-content td .order_qte_input').keyup(function()
                    {
                        var maxQuantity = parseInt($(this).parent().find('.order_qte_span').text());
                        var quantity = parseInt($(this).val());
                        if (isNaN($(this).val()) && $(this).val() !== '')
                        {
                            $(this).val(maxQuantity);
                        }
                        else
                        {
                            if (quantity > maxQuantity)
                                $(this).val(maxQuantity);
                            else if (quantity < 1)
                                $(this).val(1);
                        }
                    });
                    // The button to increment the product return value
                    $(document).on('click', '.return_quantity_down', function(e){
                        e.preventDefault();
                        var $input = $(this).parent().parent().find('input');
                        var count = parseInt($input.val()) - 1;
                        count = count < 1 ? 1 : count;
                        $input.val(count);
                        $input.change();
                    });
                    // The button to decrement the product return value
                    $(document).on('click', '.return_quantity_up', function(e){
                        e.preventDefault();
                        var maxQuantity = parseInt($(this).parent().parent().find('.order_qte_span').text());
                        var $input = $(this).parent().parent().find('input');
                        var count = parseInt($input.val()) + 1;
                        count = count > maxQuantity ? maxQuantity : count;
                        $input.val(count);
                        $input.change();
                    });
                }
                //catch the submit event of sendOrderMessage form
                $('form#sendOrderMessage').submit(function(){
                    return sendOrderMessage();
                });
                $(this).fadeIn('slow', function() {
//                    $.scrollTo(this, 1200);
                });
            });
        });
}

function updateOrderLineDisplay(domCheckbox)
{
    var lineQuantitySpan = $(domCheckbox).parent().parent().find('.order_qte_span');
    var lineQuantityInput = $(domCheckbox).parent().parent().find('.order_qte_input');
    var lineQuantityButtons = $(domCheckbox).parent().parent().find('.return_quantity_up, .return_quantity_down');
    if($(domCheckbox).is(':checked'))
    {
        lineQuantitySpan.hide();
        lineQuantityInput.show();
        lineQuantityButtons.show();
    }
    else
    {
        lineQuantityInput.hide();
        lineQuantityButtons.hide();
        lineQuantityInput.val(lineQuantitySpan.text());
        lineQuantitySpan.show();
    }
}

//send a message in relation to the order with ajax
function sendOrderMessage()
{
    paramString = "ajax=true";
    $('#sendOrderMessage').find('input, textarea, select').each(function(){
        paramString += '&' + $(this).attr('name') + '=' + encodeURIComponent($(this).val());
    });

    $.ajax({
        type: "POST",
        headers: { "cache-control": "no-cache" },
        url: $('#sendOrderMessage').attr("action") + '?rand=' + new Date().getTime(),
        data: paramString,
        beforeSend: function(){
            $(".button[name=submitMessage]").prop("disabled", "disabled");
        },
        success: function(msg){
            $('#block-order-detail').fadeOut('slow', function() {
                $(this).html(msg);
                //catch the submit event of sendOrderMessage form
                $('#sendOrderMessage').submit(function(){
                    return sendOrderMessage();
                });
                $(this).fadeIn('slow');
                $(".button[name=submitMessage]").prop("disabled", false);
            });
        },
        error: function(){
            $(".button[name=submitMessage]").prop("disabled", false);
        }
    });
    return false;
}
function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    }
    else var expires = "";
    document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}
function eraseCookie(name) {
    createCookie(name,"",-1);
}