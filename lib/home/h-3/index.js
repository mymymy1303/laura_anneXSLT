$(function () {
	if ($('.canhcam-home-3 .owl-carousel').length) {
		$('.canhcam-home-3 .owl-carousel').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: true,
			center: false,
			// padding: 10,
			margin: 15,
			navText: ['<span class="lnr lnr-chevron-left"></span>', '<span class="lnr lnr-chevron-right"></span>'],
			nav: true,
			dots: false,
			autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: false,
			callbacks: true,
			responsive: {
				480: {
					items: 2
				},
				720: {
					items: 3
				},
				992: {
					items: 4
				}

			}
		});
	}

});