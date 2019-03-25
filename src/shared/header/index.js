$(document).ready(function () {
	var moveLogo = new MappingListener({
		selector: '.ldp-header .logo',
		desktopWrapper: '.ldp-header .main-nav',
		desktopMethod: 'insertBefore',
		mobileWrapper: '.ldp-header .main-nav-toggle',
		mobileMethod:'insertBefore'
	}).watch(1200)
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
	$('.backtotop').on('click', function () {
		$('html, body').animate({
			scrollTop: 0
		}, 1200)
	})
	$('.backtotop').css({
		"bottom": $('footer').height()
	})
	var a = $(window).scrollTop() + $(window).height()
	if (a === $(document).height()) {
		$('.backtotop').show()
	} else {
		$('.backtotop').hide()
	}
	$(window).on('scroll', function () {
		a = $(window).scrollTop() + $(window).height()
		if (a === $(document).height()) {
			$('.backtotop').show()
		} else {
			$('.backtotop').hide()
		}
	})
});