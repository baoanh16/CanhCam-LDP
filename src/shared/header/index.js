$(document).ready(function () {
	var menuIsToggled = false;


	$(".ldp-header").addClass("fadeInDown")


	// let menuLength = $(".header-container").find("li").length
	// for (let i = 0; i < menuLength; i++) {
	// 	$($(".header-container li")[i]).css({
	// 		"transition-delay": "0." + i + 1 + "s",
	// 	})
	// }
	// $(".main-nav-toggle").on('click', function () {
	// 	$('body').toggleClass('over-hidden')
	// 	if ($(".header-container li.transformActive").length > 0) {
	// 		$(".header-container li.transformActive").each(function () {
	// 			$(this).attr("style", "")
	// 		})
	// 	} else {
	// 		for (let i = 0; i < menuLength; i++) {
	// 			$($(".header-container li")[i]).css({
	// 				"transition-delay": "0." + i + 1 + "s",
	// 			})
	// 		}
	// 	}
	// 	$('.header-container').toggleClass('active')
	// 	$(".main-nav-toggle").toggleClass('active')
	// 	$(".header-container li").each(function () {
	// 		$(this).toggleClass('transformActive')
	// 	})
	// })
	$('.backtotop').on('click', function () {
		$('html, body').animate({
			scrollTop: 0
		}, 1200)
	})
	$('.backtotop').css({
		"bottom": $('footer').height()
	})
	var a = $(window).scrollTop() + $(window).height() + 100
	if (a >= $(document).height()) {
		$('.backtotop').fadeIn()
	} else {
		$('.backtotop').fadeOut()
	}
	$(window).on('scroll', function () {
		var a = $(window).scrollTop() + $(window).height() + 100
		if (a >= $(document).height()) {
			$('.backtotop').fadeIn()
		} else {
			$('.backtotop').fadeOut()
		}
	})
});