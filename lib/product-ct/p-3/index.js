function activeTabProductListHeader() {
	let geActive = '.nth-product-ct-2 .tabs-header .tabs-active',
		activePos = $(geActive).position(),
		tabItems = $('.nth-product-ct-2 .tabs-header li'),
		tabCurrentItem = tabItems.filter('.tabs-active'),
		activeTab1 = {
			changePos: function () {
				activePos = $(geActive).position();
			},
			changeTab: function () {
				let getTabId = $(geActive + ' a').attr('tab-pl-id');
				console.log(getTabId)
				$('.nth-product-ct-3 .tab').stop().fadeOut(300, function () {
					$(this).removeClass('tab-active');
				}).hide();
				$('.nth-product-ct-3 .tab[tab-pl-id=' + getTabId + ']').stop().fadeIn(300, function () {
					$(this).addClass('tab-active');
				});
			},
			doButton: function () {
				$('.nth-product-ct-2 .tabs-header a').on('click', function (e) {
					e.preventDefault();
					let tabId = $(this).attr('tab-pl-id');
					$('.nth-product-ct-2 .tabs-header a').stop().parent().removeClass('tabs-active');
					$(this).stop().parent().addClass('tabs-active');
					activeTab1.changePos();
					tabCurrentItem = tabItems.filter('tabs-active');
					$('.nth-product-ct-3 .tab').stop().fadeOut(300, function () {
						$(this).removeClass('tab-active');
					}).hide();
					$('.nth-product-ct-3 .tab[tab-pl-id="' + tabId + '"]').stop().fadeIn(300, function () {
						$(this).addClass('tab-active');
					});
				});
			}
		}
	activeTab1.changePos()
	activeTab1.doButton()
}

$(document).ready(function () {
	activeTabProductListHeader()
	toggleProductCtFullContent()
});

function toggleProductCtFullContent() {
	$('#productCtFullContentToggle').on('click', function() {
		$('.nth-product-ct-fullcontent').toggleClass('nth-product-ct-fullcontent-active')
	})
}
