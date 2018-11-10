$(document).ready(function () {
	$('.nth-header-1 #demoResAllInOneMenu').kResponsiveMenu({
		animationSpeed: 'slow', // slow, fast, 200
		resizeWidth: 'lg', // 'xs', 'sm', 'md', 'lg', 'xl', 480,
		menuType: 'horizontal', // horizontal, vertical
		menuPush: 'right', // right, left
		menuPushPosition: 'fixed', // absolute
		menuPushWidth: '300px', // px, %, rem
		menuBackDrop: true, // px, %, rem
	})

	$('.nth-toggle-subnav').on('click', () => {
		$('.nth-subnav-collapse').toggleClass('nth-subnav-active')
		$('.nth-toggle-subnav').toggleClass('nth-toggle-subnav-active')
	})

	try {
		const megamenuElement = document.getElementById('megamenu-link');

		megamenuElement.addEventListener('mouseenter', () => {
			TweenMax.to('#megamenu', .2, {
				opacity: 1,
				left: '50%'
			})
		})
		megamenuElement.addEventListener('mouseleave', () => {
			TweenMax.to('#megamenu', .2, {
				opacity: 0,
				left: '-100vw'
			})
		})
	} catch (error) {

	}

	$('main').css('padding-top', $('header').outerHeight())
});

window.onresize = () => {
	$('main').css('padding-top', $('header').outerHeight())
}
