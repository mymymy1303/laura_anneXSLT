$(document).ready(function(){
    /*************************************************************************************************************/
    /* BEGIN FILTER
    /*************************************************************************************************************/

    /********Price filter ********/
    minprice = 0;
    maxprice = 10000000;
    initSlider();
    function initSlider() {
        if ($('#slider-range').length > 0) {
            minValue = 0;
            maxValue = 10000000;
            if ($('.pricemin').text().length)
                minValue = parseInt($('.pricemin').text());
            if ($('.pricemax').text().length)
                maxValue = parseInt($('.pricemax').text());

            var options =
            {
                range: true,
                step: 500000,
                min: 0,
                max: 10000000,
                values: [minValue, maxValue],
                slide: function (event, ui) {
                    $(".price-range .min-input").html(addCommas(ui.values[0]));
                    $(".price-range .max-input").html(addCommas(ui.values[1]));
                },
                change: function (event, ui) {
                    if (minprice == ui.values[0] && maxprice == ui.values[1]) {
                        // do nothing
                    } else {
                        minprice = ui.values[0];
                        maxprice = ui.values[1];
                        priceChange();
                    }
                }
            };

            $("#slider-range").slider(options);
            // $(".price-range .min-input").html(addCommas($("#slider-range").slider("values", 0)));
            // $(".price-range .max-input").html(addCommas($("#slider-range").slider("values", 1)));
			
			$('#slider-range').on('slide', function (e) {
				var valueArr = e.currentTarget.dataset.value.split(',');
				$(".price-range .min-input").html(addCommas(valueArr[0]));
				$(".price-range .max-input").html(addCommas(valueArr[1]));
					if (minprice == valueArr[0] && maxprice == valueArr[1]) {
                        // do nothing
                    } else {
                        minprice = valueArr[0];
                        maxprice = valueArr[1];
                        priceChange();
                    }
			});
			$(".price-range .min-input").html(addCommas(minValue));
			$(".price-range .max-input").html(addCommas(maxValue));
        }
    }
		

    function addCommas(nStr) {
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + '.' + '$2');
        }
        return x1 + x2;
    }

    function priceChange() {
        pageurl = $('.urlwithoutprice').attr('href');
        $.ajax({ url: pageurl, data: { isajax: true, price: minprice + '-' + maxprice }, success: function (data) {
            $('.ajaxresponse').html($(data).find('.ajaxresponse').html());
            $('.ajaxfilterresponse').html($(data).find('.ajaxfilterresponse').html());
            $('.ajaxbrandresponse').html($(data).find('.ajaxbrandresponse').html());
            $('.productpager').remove();
            $(data).find('.productpager').insertAfter($('.ajaxresponse'));

            pageurl = $(data).find('.urlwithprice').attr('href');
            //to change the browser URL to 'pageurl'
            if (pageurl != window.location) {
                window.history.pushState({ path: pageurl }, '', pageurl);
            }
        }
        });

    }
    /********End Price filter ********/
	
	
	/****************/
    /* Ajax process */
    /****************/
    $("body").on("change", '.ajaxsort', function() {
        ProcessAjax($(this).val());
    });

    $("body").on("click", 'a.ajaxlink', function(e) {
        e.preventDefault();
        /*  
        if uncomment the above line, html5 nonsupported browers won't change the url but will display the ajax content;
        if commented, html5 nonsupported browers will reload the page to the specified link. 
        */

        ProcessAjax($(this).attr('href'));
		
        //window.scrollTo(0, 0);
        if ($(this).parent().hasClass('reset_wrap'))
            initSlider();

        return false;
    });

    function ProcessAjax(pageurl) {
        //to get the ajax content and display in div with id 'content'
        $.ajax({
            url: pageurl,
            data: { isajax: true },
            success: function(data) {
                console.log($(data).find('.ajaxproductresponse').html())
                $('.ajaxfilterresponse').html($(data).closest('.ajaxfilterresponse').html());
                $('.ajaxproductresponse').html($(data).find('.ajaxproductresponse').html());
                // $('.ajaxfilterresponse').html($(data).find('.ajaxfilterresponse').html());
                // $('.ajaxbrandresponse').html($(data).find('.ajaxbrandresponse').html());
                $('.productpager').remove();
                $(data).find('.productpager').insertAfter($('.ajaxresponse'));				
            }
        });

        //to change the browser URL to 'pageurl'
        if (pageurl != window.location) {
            window.history.pushState({ path: pageurl }, '', pageurl);
        }
    }

    $("body").on("click", "a.ajaxpagerlink", function(e) {
        e.preventDefault();
        /*  
        if uncomment the above line, html5 nonsupported browers won't change the url but will display the ajax content;
        if commented, html5 nonsupported browers will reload the page to the specified link. 
        */

        //get the link location that was clicked
        obj = $(this);
        pageurl = $(this).attr('href');

        //to get the ajax content and display in div with id 'content'
        $.ajax({
            url: pageurl,
            data: { isajax: true },
            success: function(data) {
                $('.ajaxresponse .ajaxresponsewrap').append($(data).find('.ajaxresponsewrap').html());
                obj.remove();
            }
        });

        //to change the browser URL to 'pageurl'
        if (pageurl != window.location) {
            window.history.pushState({ path: pageurl }, '', pageurl);
        }
        //window.scrollTo(0, 0);

        return false;
    });

    /* the below code is to override back button to get the ajax content without reload*/
    $(window).bind('popstate', function() {
        $.ajax({
            url: location.pathname,
            data: { isajax: true },
            success: function(data) {
                $('.ajaxresponse').html($(data).filter('.ajaxresponse').html());
                $('.ajaxfilterresponse').html($(data).find('.ajaxfilterresponse').html());
                $('.ajaxbrandresponse').html($(data).find('.ajaxbrandresponse').html());
            }
        });
    });

});