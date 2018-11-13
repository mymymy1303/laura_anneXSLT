$(document).ready(function () {
	$('.nth-allocation-3-closebutton').on('click', () => {
		$('.nth-allocation-3-sidemenu').toggleClass('nth-allocation-3-sidemenu-active')
		$('.nth-allocation-3-backdrop').toggleClass('nth-allocation-3-backdrop-active')
	})
	$('.nth-allocation-3-backdrop').on('click', () => {
		$('.nth-allocation-3-sidemenu').toggleClass('nth-allocation-3-sidemenu-active')
		$('.nth-allocation-3-backdrop').toggleClass('nth-allocation-3-backdrop-active')
	})
	// $('.nth-allocation-3-mapchooser li').on('click', (e) => {
	// 	$('.nth-allocation-3-sidemenu').toggleClass('nth-allocation-3-sidemenu-active')
	// 	$('.nth-allocation-3-backdrop').toggleClass('nth-allocation-3-backdrop-active')
	// })
});