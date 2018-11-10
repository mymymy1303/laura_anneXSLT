$(document).ready(function () {
	$('.product-categories-toggle-button').on('click', (e) => {
		$(e.currentTarget.parentElement.parentElement).toggleClass('product-filter-categories-active')
	})

	$('.productPriceRange').slider({})
	const minPriceText = $('.priceMinRange')
	const maxPriceText = $('.priceMaxRange')
	$('.productPriceRange').on('slide', function (e) {
		let valueArr = e.currentTarget.defaultValue.split(',')
		minPriceText.text(`${valueArr[0]} đ `)
		maxPriceText.text(`${valueArr[1]} đ`)
	})

	$('.product-filter-toggle-button').on('click', function () {
		$('.product-filter-attribute-wrapper').toggleClass('product-filter-attribute-wrapper-active')
		$('.product-filter-toggle-button-vertical-line').toggleClass('product-filter-toggle-button-vertical-line-active')
	})

	$('.nth-product-2-sidemenu-togglebutton').on('click', function () {
		$('.nth-product-filter-sidemenu').toggleClass('nth-product-filter-sidemenu-active')
		$('.product-filter-sidemenu-backdrop').toggleClass('product-filter-sidemenu-backdrop-active')
	})

	$('.product-filter-sidemenu-backdrop').on('click', function () {
		$('.nth-product-filter-sidemenu').toggleClass('nth-product-filter-sidemenu-active')
		$('.product-filter-sidemenu-backdrop').toggleClass('product-filter-sidemenu-backdrop-active')
	})

	$('.product-filter-sidemenu-close-button').on('click', function () {
		$('.nth-product-filter-sidemenu').toggleClass('nth-product-filter-sidemenu-active')
		$('.product-filter-sidemenu-backdrop').toggleClass('product-filter-sidemenu-backdrop-active')
	})
});
