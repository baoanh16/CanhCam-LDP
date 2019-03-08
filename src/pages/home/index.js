

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
	$('.home-3').each(function () {
		$(this).css({
			"min-height": $(window).height()
		})
	})

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
		$('.home-3').each(function () {
			$(this).css({
				"min-height": $(window).height()
			})
		})
	})

	$(window).scroll(function () {
		// Progress Bar
		let ProgressPercent = Math.round($(window).scrollTop() / scrollHeight * 100)
		console.log(scrollHeight, ProgressPercent)
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
})
