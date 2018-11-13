$(document).ready(function () {
	$('#mapchoosertoggle').on('click', () => {
		$('.nth-allocation-3-sidemenu').toggleClass('nth-allocation-3-sidemenu-active')
		$('.nth-allocation-3-backdrop').toggleClass('nth-allocation-3-backdrop-active')
	})
});
const allocationSidemenuHTML = $('#allocationSidemenuWrapper').html()
const mapSideMenuAllocationTo = (windowMedia) => {
	let allocationSidemenuWrapper = document.getElementById('allocationSidemenuWrapper');
	if (windowMedia.matches) {
		document.getElementById('allocationSidemenu').innerHTML = allocationSidemenuHTML
		allocationSidemenuWrapper.innerHTML = null
		let allocationMapWidth = window.innerWidth - 334
		$('.allocation-map').css('width', allocationMapWidth)
		$('.allocation-map').css('height', '100%')
		console.log(123)
	} else {
		document.getElementById('allocationSidemenu').innerHTML = null
		allocationSidemenuWrapper.innerHTML = allocationSidemenuHTML
		$('.allocation-map').css('width', '100%')
		$('.allocation-map').css('height', '400')
	}
}

try {
	const windowMedia = window.matchMedia("(min-width: 992px)");
	mapSideMenuAllocationTo(windowMedia);
	windowMedia.addListener(mapSideMenuAllocationTo);

} catch (error) {

}
