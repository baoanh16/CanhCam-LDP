

$(document).ready(function () {
	// Define variables
	var currentPosition = 0
	var startPoint = $(".f_1").offset().top - $(window).height() - 120
	var endPoint = $(".f_1").offset().top + 120
	// write function

	$(".home-1 .background img").addClass("zoomIn")
	let percent = Math.round(($(window).scrollTop() - startPoint) / ($(window).height() + 240) * 10000) / 100
	$(".drone").css({
		"bottom": (percent) + "%",
	})
	$(".f_1").css({
		"background-position": "0 -100%",
	})

	if ($(window).width() > 992) {
		$('.home-3').each(function () {
			$(this).css({
				"min-height": $(window).height()
			})
		})
	} else {
		$('.home-3').each(function () {
			$(this).attr('style', "")
		})
	}
	var scrollHeight, ProgressPercent;
	function setSlider(cb) {
		let ldpSlider = new Swiper('.home-5 .swiper-container', {
			slidesPerView: 3,
			loop: true,
			speed: 1350,
			autoplay: {
				disableOnInteraction: false,
				delay: 4500,
			},
			navigation: {
				nextEl: '.home-5 .swiper-container .swiper-button-next',
				prevEl: '.home-5 .swiper-container .swiper-button-prev',
			},
			breakpoints: {
				992: {
					slidesPerView: 2,

				},
				576: {
					slidesPerView: 1,

				}
			}
		})
		cb()
	}
	function ProgressBar() {
		setTimeout(() => {
			scrollHeight = $(document).height() - $(window).height()
			ProgressPercent = Math.round($(window).scrollTop() / scrollHeight * 100)
			$('#progress-bar').css({
				"width": ProgressPercent + "%",
				"opacity": 1
			})
		}, 500);
	}
	setSlider(ProgressBar)



	$(window).resize(function () {
		if ($(window).width() > 992) {
			$('.home-3').each(function () {
				$(this).css({
					"min-height": $(window).height()
				})
			})
		} else {
			$('.home-3').each(function () {
				$(this).attr('style', "")
			})
		}
	})

	$(window).scroll(function () {
		// Progress Bar
		let ProgressPercent = Math.round($(window).scrollTop() / scrollHeight * 100)
		$('#progress-bar').css({
			"width": ProgressPercent + "%"
		})

		// Scroll up
		if ($(window).scrollTop() > currentPosition) {
			if ($(window).scrollTop() >= startPoint && $(window).scrollTop() <= endPoint) {
				let percent = Math.round(($(window).scrollTop() - startPoint) / ($(window).height() + 240) * 10000) / 100
				$(".drone").css({
					"bottom": (percent) + "%",
				})
			}
			currentPosition = $(window).scrollTop()
		}
		// Scroll down
		else {
			if ($(window).scrollTop() >= startPoint && $(window).scrollTop() <= endPoint) {
				let percent = Math.abs(Math.round(($(window).scrollTop() - endPoint) / ($(window).height() + 240) * 10000) / 100)
				$(".drone").css({
					"bottom": (100 - percent) + "%",
				})
			}
			currentPosition = $(window).scrollTop()
		}
	})

	// Initialize Parallax

	$('.home-5.f_1').parallax({
		imageSrc: "/img/bg_wood1.jpg",
		speed: .1
	})
	if ($(window).width() > 992) {
		$('.home-3.f_1').parallax({
			imageSrc: "/img/bg_brand01.jpg",
			speed: .2
		})
		$('.home-3.f_2').parallax({
			imageSrc: "/img/bg_brand02.jpg",
			speed: .2
		})
		$('.home-3.f_3').parallax({
			imageSrc: "/img/bg_brand03.jpg",
			speed: .2
		})
		$('.home-3.f_4').parallax({
			imageSrc: "/img/bg_brand04.jpg",
			speed: .2
		})
		$('.home-2.f_2').parallax({
			imageSrc: "/img/bg_wood2.jpg",
			speed: .2
		})
	} else {
		$('.parallax-mirror').remove()
	}
})
