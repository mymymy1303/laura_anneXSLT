$(document).ready(function () {
	$('.nth-allocation-2 .owl-carousel.owl-theme').owlCarousel({
		loop: false,
		margin: 0,
		dots: false,
		nav: true,
		navText: ["<i class='lnr lnr-chevron-left'></i>","<i class='lnr lnr-chevron-right'></i>"],
		responsive: {
			0: {
				items: 1,
			},
			576: {
				items: 2,
			},
			768: {
				items: 3,
			},
			992: {
				items: 4,
			},
			1200: {
				items: 5,
			},
		}
	})
});
