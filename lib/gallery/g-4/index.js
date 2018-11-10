$(document).ready(function () {
	$(".nth-gallery-4 .gallery .hidden").lightGallery({
		thumbnail: true
	});

	$('.nth-gallery-4 .gallery').each(function () {
		$(this).click(function () {
			$(this).find('.hidden a:first-child').trigger('click')
		})
	});
});
