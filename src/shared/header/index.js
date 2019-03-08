$(document).ready(function () {
	var menuIsToggled = false;
	if ($(window).width() >= 1200) {
		$(".ldp-header").addClass("fadeInDown")
	}
	let menuLength = $(".header-container").find("li").length
	for (let i = 0; i < menuLength; i++) {
		$($(".header-container li")[i]).css({
			"transition-delay": "0." + i + 1 + "s",
		})
	}
	$(".main-nav-toggle").on('click', function () {
		$('body').toggleClass('over-hidden')
		if ($(".header-container li.transformActive").length > 0) {
			$(".header-container li.transformActive").each(function () {
				$(this).attr("style", "")
			})
		} else {
			for (let i = 0; i < menuLength; i++) {
				$($(".header-container li")[i]).css({
					"transition-delay": "0." + i + 1 + "s",
				})
			}
		}
		$('.header-container').toggleClass('active')
		$(".main-nav-toggle").toggleClass('active')
		$(".header-container li").each(function () {
			$(this).toggleClass('transformActive')
		})
	})
});