const mapSideMenuTo = (windowMedia) => {
	let accordionSideMenuWrapper = document.getElementById('accordionSideMenuWrapper');
	let mapToId = accordionSideMenuWrapper.getAttribute('nth-map-to')
	if (windowMedia.matches) {
		let accordionSideMenu = accordionSideMenuWrapper.innerHTML;
		document.getElementById(mapToId).innerHTML = accordionSideMenu
	} else {
		document.getElementById(mapToId).innerHTML = null
	}
}

try {
	const windowMedia = window.matchMedia("(min-width: 992px)");
	mapSideMenuTo(windowMedia);
	windowMedia.addListener(mapSideMenuTo);

} catch (error) {

}
