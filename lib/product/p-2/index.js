
const mapFilterProductTo = (windowMedia) => {
	let productFilterWrapper = document.getElementById('productFilterToMap');
	if (windowMedia.matches) {
		let productFilter = productFilterWrapper.innerHTML;
		document.getElementById('productFilterMapTo').innerHTML = productFilter
	} else {
		document.getElementById('productFilterMapTo').innerHTML = null
	}
}

try {
	const windowMedia = window.matchMedia("(min-width: 992px)");
	mapFilterProductTo(windowMedia);
	windowMedia.addListener(mapFilterProductTo);

} catch (error) {

}
