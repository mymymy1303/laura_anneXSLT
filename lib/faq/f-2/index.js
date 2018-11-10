$(document).ready(function () {
	$('.nth-faq-2 .card-header').each((i, e) => {
		e.className += ' collapsed'
	})
	try {

		$(".collapse").on('shown.bs.collapse', (e) => {
			console.log(e)
			let collapse_icon = e.currentTarget.previousSibling.previousSibling.childNodes[3]
			console.log(collapse_icon)
			collapse_icon.classList.remove('lnr-plus-circle')
			collapse_icon.classList.add('lnr-circle-minus')
		});
		$(".collapse").on('hide.bs.collapse', (e) => {
			let collapse_icon = e.currentTarget.previousSibling.previousSibling.childNodes[3]
			collapse_icon.classList.remove('lnr-circle-minus')
			collapse_icon.classList.add('lnr-plus-circle')
		});
	} catch (error) {

	}
});
