
var currentPosition = 0
var startPoint = $(".home-3").offset().top - $(window).height() - 120
var endPoint = $(".home-3").offset().top + 120

var Parallax1_StartPoint = $(".home-3").offset().top - $(window).height()
var Parallax1_EndPoint = $(".home-4").offset().top

$(document).ready(function () {
	$(".home-1 .background img").addClass("zoomIn")
	let percent = Math.round(($(window).scrollTop() - startPoint) / ($(window).height() + 240) * 10000) / 100
	$(".drone").css({
		"bottom": (percent) + "%",
	})
	$(".home-3").css({
		"background-position": "0 -100%",
	})
})



$(window).scroll(function () {
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

	// Parallax 1
	if ($(window).scrollTop() > currentPosition) {
		if ($(window).scrollTop() >= Parallax1_StartPoint && $(window).scrollTop() <= Parallax1_EndPoint) {
			let percent = Math.abs(Math.round(($(window).scrollTop() - Parallax1_StartPoint) / ($(window).height()) * 10000) / 100)
			$(".home-3").css({
				"background-position": "0 " + (0 - percent - 30) + "%",
			})
		}
		currentPosition = $(window).scrollTop()
	}
	// Scroll down
	else {
		if ($(window).scrollTop() >= Parallax1_StartPoint && $(window).scrollTop() <= Parallax1_EndPoint) {
			let percent = Math.abs(Math.round(($(window).scrollTop() - Parallax1_StartPoint) / ($(window).height()) * 10000) / 100)
			$(".home-3").css({
				"background-position": "0 " + (percent - 30) + "%",
			})
		}
		currentPosition = $(window).scrollTop()
	}
})


//
