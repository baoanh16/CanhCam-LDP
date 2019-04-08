<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CanhCam.Features.Custom.Default" %>

<%@ Register TagPrefix="Site" Assembly="CanhCam.Features.Custom" Namespace="CanhCam.Web.CustomUI" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
	<title>Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="title" content="Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp">
	<meta name="description"
		content="Hơn 12 Năm Kinh Nghiệm ⚡️ Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp. ✅ Web Bán Hàng Trực Tuyến ⭐ Hiệu Quả Cao ⭐ Chi Phí Thấp ⭐ Giá Ưu Đãi">
	<!-- Open Graph / Facebook-->
	<meta property="og:type" content="website">
	<meta property="og:url" content="https://www.canhcam.vn/thiet-ke-website-ban-hang/">
	<meta property="og:title" content="Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp">
	<meta property="og:description"
		content="Hơn 12 Năm Kinh Nghiệm ⚡️ Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp. ✅ Web Bán Hàng Trực Tuyến ⭐ Hiệu Quả Cao ⭐ Chi Phí Thấp ⭐ Giá Ưu Đãi">
	<meta property="og:image" content="https://www.canhcam.vn/thiet-ke-website-ban-hang/img/mb_bg_banner.jpg">
	<!-- Twitter-->
	<meta property="twitter:card" content="summary_large_image">
	<meta property="twitter:url" content="https://www.canhcam.vn/thiet-ke-website-ban-hang/">
	<meta property="twitter:title" content="Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp">
	<meta property="twitter:description"
		content="Hơn 12 Năm Kinh Nghiệm ⚡️ Dịch Vụ Thiết Kế Website Bán Hàng Online Chuyên Nghiệp. ✅ Web Bán Hàng Trực Tuyến ⭐ Hiệu Quả Cao ⭐ Chi Phí Thấp ⭐ Giá Ưu Đãi">
	<meta property="twitter:image" content="https://www.canhcam.vn/thiet-ke-website-ban-hang/img/mb_bg_banner.jpg">
	<!-- Google Tag Manager-->
	<script>(function (w, d, s, l, i) {
			w[l] = w[l] || []; w[l].push({
				'gtm.start':
					new Date().getTime(), event: 'gtm.js'
			}); var f = d.getElementsByTagName(s)[0],
				j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
					'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-W4X92M');</script><!-- End Google Tag Manager-->
	<link rel="shortcut icon" href="/canhcam/favicon.ico" type="image/x-icon">
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,600,700&amp;amp;subset=vietnamese">
	<link rel="stylesheet" href="./css/global.min.css">
	<link rel="stylesheet" href="./css/index.min.css">
</head>

<body class="index-page">
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W4X92M" height="0" width="0"
			style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
	<header class="ldp-header">
		<div class="container-large header-container">
			<div class="logo">
				<a href="https://canhcam.vn/">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 405.5 94.5"
						style="enable-background: new 0 0 405.5 94.5;" xml:space="preserve">
						<style type="text/css">
							.st0 {
								fill: #FF2C00;
							}
						</style>
						<g>
							<polygon class="st0" points="80.7,29.2 77.5,24.2 96.4,9.9 101.3,18.2 " />
							<path class="st0"
								d="M26.9,84.6C12,84.6,0,72.9,0,58.3c0-14.8,11.6-26.4,26.5-26.4c11.5,0,21.4,6.5,25.4,18H38.3
	   C35.8,45.3,32,43,26.5,43c-8.4,0-14.4,6.4-14.4,15.2s6.3,15.4,14.6,15.4c5,0,8.5-2,11.5-6.6h13.6C47.7,78.2,38.6,84.6,26.9,84.6z" />
							<path class="st0" d="M94.8,33.1v6.7c-4.2-5.5-9.2-7.9-16.5-7.9c-14.9,0-25.6,11.2-25.6,26.5c0,15.2,10.6,26.2,25.4,26.2
	   c7.1,0,11.9-2.3,16.7-7.7v6.5h11.1V33.1H94.8z M79.8,73.5c-8.8,0-14.9-6-14.9-14.8C64.9,49.5,71,43,79.6,43s14.8,6.5,14.8,15.6
	   C94.4,67,89,73.5,79.8,73.5z" />
							<path class="st0" d="M142,83.4V58.8c0-13.5-3.6-15.8-9.6-15.8c-3.8,0-7,1.6-8.9,4.6c-1.5,2.5-2,5.4-2,12.1v23.7h-12.1V33.1h11.2
	   v4.8c4.5-4.3,8.5-6,14.2-6c7,0,12.5,2.5,15.7,7.3c2.7,3.9,3.6,8.3,3.6,17.3v27L142,83.4L142,83.4z" />
							<path class="st0" d="M232.3,84.6c-14.9,0-26.9-11.7-26.9-26.4c0-14.8,11.6-26.4,26.5-26.4c11.5,0,21.4,6.5,25.4,18h-13.6
	   c-2.5-4.6-6.3-6.9-11.7-6.9c-8.4,0-14.4,6.4-14.4,15.2s6.3,15.4,14.6,15.4c5,0,8.5-2,11.5-6.6h13.6C253.1,78.2,244,84.6,232.3,84.6
	   z" />
							<path class="st0" d="M300.2,83.4v-6.5c-4.8,5.5-9.6,7.7-16.7,7.7c-14.7,0-25.4-11-25.4-26.2c0-15.4,10.7-26.5,25.6-26.5
	   c7.3,0,12.3,2.4,16.5,7.9v-6.7h11.1v50.4L300.2,83.4L300.2,83.4z M285,43c-8.6,0-14.7,6.5-14.7,15.7c0,8.8,6.1,14.8,14.9,14.8
	   c9.2,0,14.6-6.5,14.6-14.9C299.8,49.4,293.6,43,285,43z" />
							<path class="st0" d="M378.2,83.4V55.8c0-10.1-3.8-12.8-9.5-12.8c-6.7,0-10.2,3.6-10.2,15.6v24.8h-12.1V55.8
	   c0-9.9-3.5-12.8-9.8-12.8c-7,0-9.8,3.7-9.8,15.6v24.8h-12.1V33.1h11.1v4.7c3.5-4.3,7.2-5.9,13.1-5.9c6.9,0,11.4,2.4,14.8,7.8
	   c4.1-5.5,9.1-7.8,16.2-7.8c13.3,0,20.4,7.4,20.4,22.4v29.1H378.2z" />
							<path class="st0" d="M183.4,31.8c-5.2,0-9.2,1.5-12.8,4.7V17l-12.1,6.4v60.1h12.1V57.9c0-11.1,3.7-14.9,10.6-14.9
	   c7.1,0,9.8,4.2,9.8,14.7v25.7h12.1V55C203.1,38.4,195.5,31.8,183.4,31.8z" />
							<g>
								<path class="st0" d="M394.1,33.5h-1.8v-1.6h5.3v1.6h-1.8v5H394L394.1,33.5L394.1,33.5z" />
								<path class="st0"
									d="M398.2,31.9h1.5l2.1,3l2.2-3h1.5v6.6h-1.7V35l-2,2.7l-2-2.7v3.5h-1.7v-6.6H398.2z" />
							</g>
						</g>
					</svg>
				</a>
			</div>
			<div class="main-nav">
				<ul>
					<li><a href="#target-1">Giới thiệu</a></li>
					<li><a href="#target-2">Đối với người dùng</a></li>
					<li><a href="#target-3">Đối với doanh nghiệp</a></li>
					<li><a href="#target-4">Công nghệ</a></li>
					<li><a href="#target-5">Đối tác</a></li>
					<li><a href="#target-6">Đã thiết kế</a></li>
					<li><a href="#target-7">Liên hệ</a></li>
				</ul>
			</div>
		</div>
	</header>
	<main>
		<div class="progress-bar" id="progress-bar"></div>
		<section class="home-1">
			<div class="background">
				<img src="./img/bg_banner.jpg" alt="">
			</div>
			<div class="background-mobile">
				<img src="./img/mb_bg_banner.jpg" alt="">
			</div>
			<div class="caption">
				<div class="container-large">
					<h1>Chúng tôi là chuyên gia tạo ra website bán hàng Hiệu quả giúp doanh nghiệp gia tăng đơn hàng và
						tỷ lệ khách hàng trung thành</h1>
				</div>
			</div>
		</section>
		<section class="home-2 f_1" id="target-1">
			<div class="container">
				<div class="textbox">
					<h2>CÁNH CAM - WEB DESIGN AGENCY</h2>
					<h3>Với kinh nghiệm 12 năm, Cánh Cam đã xây dựng thành công hơn 100 Website thương mại điện tử đang
						vận hành hiệu quả vượt xa kỳ vọng</h3>
					<p>
						Chúng tôi đồng hành góp phần nâng cao giá trị tăng trưởng cùng những doanh nghiệp:
						<strong>Domino's Pizza, Samsonite, Lug.vn, Techzone, Murad, Vgs Shop, Thế giới nước hoa, Coop
							Mart Online…</strong> bằng những giải pháp tư vấn tổng thể và toàn diện kết hợp cùng những
						công nghệ hiện đại giúp Website của các doanh nghiệp luôn vận hành ổn định và dễ dàng mở rộng.
						Song song đó là việc kết nối linh động với các hệ thống ERP, CRM Shipping, cổng thanh toán trực
						tuyến và cả các phần mềm đặc thù riêng thích hợp cho nhu cầu của từng khách hàng khác nhau.
					</p>
					<p>
						<img src="./img/triangle_down.png" alt="">
					</p>
				</div>
			</div>
			<div class="background">
				<img src="./img/bg_sky.png" alt="">
			</div>
			<div class="drone">
				<img src="./img/bg_rocket.png" alt="">
			</div>
		</section>
		<section class="home-3 f_1" id="target-2">
			<div class="container-large">
				<div class="textbox">
					<h3>GIÚP KHÁCH HÀNG CỦA BẠN</h3>
					<h2>Tương tác dễ dàng - Mua hàng nhanh chóng</h2>
					<ul>
						<li>+ Giao diện ấn tượng với tốc độ load trang tối ưu</li>
						<li>+ 3 Bước mua hàng cực kì đơn giản</li>
						<li>+ Thiết kế thân thiện với mọi thiết bị di động</li>
					</ul>
				</div>
			</div>
			<div class="bg-mobile">
				<img src="./img/mb_bg_brand01.jpg" alt="">
			</div>
		</section>
		<section class="home-3 f_2" id="target-3">
			<div class="container-large">
				<div class="textbox">
					<h3>GIÚP DOANH NGHIỆP BẠN</h3>
					<h2>Tăng trưởng doanh thu - Khẳng định thương hiệu</h2>
					<ul>
						<li>+ Mô hình website bán hàng đa dạng: B2B, B2C,...</li>
						<li>+ Gia tăng tỷ lệ chuyển đổi khách hàng</li>
						<li>+ Nâng cao lòng trung thành thương hiệu của khách hàng</li>
					</ul>
				</div>
			</div>
			<div class="bg-mobile">
				<img src="./img/mb_bg_brand02.jpg" alt="">
			</div>
		</section>
		<section class="home-3 f_3" id="target-4">
			<div class="container-large">
				<div class="textbox">
					<h3>CHÚNG TÔI CÓ GÌ?</h3>
					<h2>Công nghệ hiện đại - Tính năng phong phú</h2>
					<ul>
						<li>+ Tối ưu hóa SEO Onepage</li>
						<li>+ An toàn, bảo mật cao theo tiêu chuẩn OWASP</li>
						<li>+ Quản trị và vận hành đơn giản</li>
						<li>+ Tích hợp các phần mềm nhanh chóng</li>
						<li>+ Dễ dàng chuyển đổi thành Mobile App</li>
					</ul>
				</div>
			</div>
			<div class="bg-mobile">
				<img src="./img/mb_bg_brand03.jpg" alt="">
			</div>
		</section>
		<section class="home-4" id="target-5">
			<div class="container">
				<div class="textbox">
					<h2>CÁNH CAM XÂY DỰNG WEBITE BÁN HÀNG BẰNG CÔNG NGHỆ HIỆN ĐẠI, KHẢ NĂNG TÍCH HỢP CAO GIÚP MỞ RỘNG
						KÊNH BÁN HÀNG ONLINE MỘT CÁCH ĐỐI ĐA</h2>
					<p>
						Cánh Cam Web Design luôn đồng hành cùng nhiều đối tác lớn để có thể hỗ trợ kết nối cùng nhiều
						kênh bán hàng như: Zalo, Lazada, Tiki, Facebook…Bên cạnh đó Website E-commerce linh động với khả
						năng tích hợp đầy đủ các ứng dụng về Giao hàng, thanh toán, tồn kho, chat trực tiếp với khách
						hàng...
					</p>
				</div>
				<div class="row">
					<div class="item">
						<figure>
							<img src="./img/icon_1.png" alt="">
							<figcaption>
								<h4>Kênh bán hàng</h4>
							</figcaption>
						</figure>
					</div>
					<div class="item">
						<figure>
							<img src="./img/icon_2.png" alt="">
							<figcaption>
								<h4>Cổng Thanh Toán</h4>
							</figcaption>
						</figure>
					</div>
					<div class="item">
						<figure>
							<img src="./img/icon_3.png" alt="">
							<figcaption>
								<h4>Kết nối ERP, CRM</h4>
							</figcaption>
						</figure>
					</div>
					<div class="item">
						<figure>
							<img src="./img/icon_4.png" alt="">
							<figcaption>
								<h4>Công nghệ</h4>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
		</section>
		<section class="home-3 f_4">
			<div class="container-large">
				<div class="textbox">
					<h2>Những con số biết nói chứng minh cho hiệu quả thực tế</h2>
					<p>
						Với hơn 1200 đơn hàng online trong 1 tháng, tỷ lệ kênh online chiếm 38%, doanh số 3,5 tỷ mỗi
						tháng và liên tục tăng 14% ở năm tiếp theo là những con số cụ thể chỉ sau một thời gian ngắn vận
						hành của Sonycenter.vn - Website đầu tiên về e-commerce của Sony Việt Nam.
					</p>
					<div class="number data-count">
						<div class="item">
							<h5 data-count="1200" data-unit="+">1200+</h5>
							<span>đơn hàng online/ tháng</span>
						</div>
						<div class="item">
							<h5 data-count="38" data-unit="%">38%</h5>
							<span>tỷ lệ kênh online</span>
						</div>
						<div class="item">
							<h5 data-count="3.5" data-unit="tỷ">3,5 tỷ</h5>
							<span>doanh số mỗi tháng</span>
						</div>
						<div class="item">
							<h5 data-count="14" data-unit="%">14%</h5>
							<span>tăng doanh số năm tiếp theo</span>
						</div>
					</div>
				</div>
			</div>
			<div class="bg-mobile">
				<img src="./img/mb_bg_brand04.jpg" alt="">
			</div>
		</section>
		<section class="home-5 f_1" id="target-6">
			<div class="container-medium">
				<div class="row">
					<div class="col-12">
						<h2>Đã thiết kế</h2>
					</div>
					<div class="col-12">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/vgs-shop#" target="_blank">
										<img src="./img/tip1.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/3-ly-do-vi-sao-nha-hang-pizza-cua-ban-can-mot-website"
										target="_blank">
										<img src="./img/tip2.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/lien-a" target="_blank">
										<img src="./img/tip3.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/sony" target="_blank">
										<img src="./img/tip4.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/kido-foods" target="_blank">
										<img src="./img/tip5.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/toshiba" target="_blank">
										<img src="./img/tip6.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/lo-hoi" target="_blank">
										<img src="./img/tip7.png" alt=""></a>
								</div>
								<div class="swiper-slide">
									<a href="https://www.canhcam.vn/3k-shop" target="_blank">
										<img src="./img/tip8.png" alt=""></a>
								</div>
							</div>
							<div class="swiper-navigation">
								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="home-5 f_2">
			<div class="container">
				<h2>Khách hàng của Cánh Cam</h2>
				<div class="row">
					<div class="item">
						<a href="https://coopmart.vn/" target="_blank">
							<img src="./img/1.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://sonycenter.sony.com.vn/" target="_blank">
							<img src="./img/2.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.vgsshop.vn/" target="_blank">
							<img src="./img/3.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.icenter.com.vn/" target="_blank">
							<img src="./img/4.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.anphuoc.com.vn/" target="_blank">
							<img src="./img/5.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.hongnguyensc.com.vn/" target="_blank">
							<img src="./img/6.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://vanlang.vn/" target="_blank">
							<img src="./img/7.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://techzones.vn/" target="_blank">
							<img src="./img/8.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.phannuhoangcung.com/" target="_blank">
							<img src="./img/9.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.azaudio.vn/" target="_blank">
							<img src="./img/10.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.lug.vn/" target="_blank">
							<img src="./img/11.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.3kshop.vn/" target="_blank">
							<img src="./img/12.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://samsonite-indochine.com/" target="_blank">
							<img src="./img/13.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://houseofluggage.vn/" target="_blank">
							<img src="./img/14.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.muradvietnam.vn" target="_blank">
							<img src="./img/15.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://dominos.vn/" target="_blank">
							<img src="./img/16.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.vietcoco.vn/" target="_blank">
							<img src="./img/17.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.sansbornesaigon.com/vi-VN/Default.aspx" target="_blank">
							<img src="./img/18.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.marketpro.com.vn/" target="_blank">
							<img src="./img/19.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.insulac-emark.com/" target="_blank">
							<img src="./img/20.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.mrvui.vn/" target="_blank">
							<img src="./img/21.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.anbienlock.com.vn/" target="_blank">
							<img src="./img/22.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.futurebook.vn/" target="_blank">
							<img src="./img/23.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.skywatch.vn/" target="_blank">
							<img src="./img/24.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.myky.vn/" target="_blank">
							<img src="./img/25.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.matvang.vn" target="_blank">
							<img src="./img/26.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.phucan.com" target="_blank">
							<img src="./img/27.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="http://www.flpvietnam.com/" target="_blank">
							<img src="./img/28.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://liena.com.vn/" target="_blank">
							<img src="./img/29.jpg" alt=""></a>
					</div>
					<div class="item">
						<a href="https://www.toshiba.com.vn/" target="_blank">
							<img src="./img/30.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</section>
		<section class="home-2 f_2">
			<div class="container">
				<h2>Cảm nhận khách hàng</h2>
				<san class="mdi mdi-quote-close"></san>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="textbox">
								<h3>Nền tảng kỹ thuật của website SonyCenter được xây dựng vững, nên rất ít khi có lỗi,
									đặc biệt về mặt bảo mật, web luôn đáp ứng được chuẩn cao nhất từ tập đoàn Sony đề ra
									khi vận hành website e-commerce. Ngoài ra, đội ngũ Cánh Cam đã đáp ứng tốt những hỗ
									trợ về kỹ thuật &amp; tư vấn vận hành, việc này giúp website ổn định, xử lý sự cố
									được nhanh chóng, đảm bảo sự hài lòng cho khách hàng của chúng tôi.</h3>
								<span>...</span>
								<p><strong>Lý Anh Quân </strong>Sony Center Management - South Sales Dept.</p>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="textbox">
								<h3>“Nền tảng giao diện thương mại điện tử mới đã và đang giúp chúng tôi tiếp cận nhiều
									khách hàng hơn với hơn 50.000 đơn hàng đặt online mỗi năm. Bên cạnh đó, những dịch
									vụ hỗ trợ, nâng cấp website cũng được Cánh Cam xử lý nhanh chóng, đảm bảo quy trình
									mua hàng của khách hàng Domino Pizza luôn hiệu quả.”</h3>
								<span>...</span>
								<p><strong>Trần Minh Phong </strong>Domino Pizza - IT Manager</p>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="textbox">
								<h3>“Tốt - Ổn định- Hiệu quả” là những điều chúng tôi nói về Cánh Cam khi thực hiện
									website của Twin. http://twin.vn/ đã được khách hàng và đối tác của Twin đánh giá
									cao ngay từ ngày vận hành đầu tiên”</h3>
								<span>...</span>
								<p>
									<strong>Nguyễn Hiếu Hậu </strong>Twin - Co-Founder &amp; Business Development
									Director
								</p>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="textbox">
								<h3>“Website Mr.Vui giúp chúng tôi mở rộng phạm vi kinh doanh tốt hơn. Không chỉ hoạt
									động hiệu quả về mặt doanh số, website bán hàng còn giúp tăng khả năng nhận diện
									thương hiệu Mr.Vui một cách đáng kể với khách hàng trên internet.”</h3>
								<span>...</span>
								<p><strong>Phan Thanh Nghi </strong>Mr.Vui - Business Development Director</p>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="textbox">
								<h3>“Doanh thu online đã tăng một cách vượt bậc chỉ sau một thời gian ngắn sử dụng,
									khách hàng có thể tương tác hoàn toàn dễ dàng với những bước mua hàng vô cùng đơn
									giản trên website Ecommerce của Cánh Cam là kết quả thực tế về sự lựa đúng đắn của
									Samsonite.”</h3>
								<span>...</span>
								<p><strong>KHANH NGUYEN, Ms. </strong>Samsonite - Business Development Manager</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="contact" id="target-7">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h2>Liên hệ</h2>
						<h4>CÁNH CAM AGENCY</h4>
						<p><span>156 Nguyễn Văn Thủ, Quận 1, Tp. HCM</span><span>Hotline: 028 6273 0815</span></p>
						<a href="mailto:info@canhcam.vn">info@canhcam.vn</a>
					</div>
					<div class="col-lg-8">
						<form runat="server" action="/thiet-ke-website-ban-hang/">
							<asp:ScriptManager runat="server"></asp:ScriptManager>
							<asp:UpdatePanel runat="server">
								<ContentTemplate>
									<div class="wrap-form">
										<div id="divForm" runat="server" class="form-wrapper row">
											<div class="col-md-6">
												<div class="form-group qtext require">
													<asp:TextBox ID="txtFullname" placeholder="Họ và tên (*)..."
														MaxLength="255" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator ID="reqFullname"
														CssClass="fa fa-exclamation-triangle"
														ErrorMessage="Vui lòng nhập Họ và tên..."
														ValidationGroup="Contact" runat="server" Display="Dynamic"
														ControlToValidate="txtFullname" SetFocusOnError="true">
													</asp:RequiredFieldValidator>
												</div>
												<div class="form-group qtext require">
													<asp:TextBox ID="txtEmail" placeholder="Email (*)..."
														MaxLength="255" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator ID="reqEmail"
														CssClass="fa fa-exclamation-triangle"
														ErrorMessage="Vui lòng nhập Email" ValidationGroup="Contact"
														runat="server" Display="Dynamic" ControlToValidate="txtEmail"
														SetFocusOnError="true"></asp:RequiredFieldValidator>
													<asp:RegularExpressionValidator ID="regexEmail"
														CssClass="fa fa-exclamation-triangle"
														ErrorMessage="Email không hợp lệ" runat="server"
														Display="Dynamic" ValidationGroup="Contact"
														ControlToValidate="txtEmail"
														ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$"
														SetFocusOnError="true"></asp:RegularExpressionValidator>
												</div>
												<div class="form-group qtext require">
													<asp:TextBox ID="txtPhone" placeholder="Số điện thoại (*)..."
														MaxLength="50" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator ID="reqPhone"
														CssClass="fa fa-exclamation-triangle"
														ErrorMessage="Vui lòng nhập Số điện thoại..."
														ValidationGroup="Contact" runat="server" Display="Dynamic"
														ControlToValidate="txtPhone" SetFocusOnError="true">
													</asp:RequiredFieldValidator>
												</div>
												<div class="form-group qtext require">
													<asp:DropDownList ID="ddlKnowUsVia" runat="server">
														<asp:ListItem Value=""
															Text="Bạn biết đến Cánh Cam như thế nào?"></asp:ListItem>
														<asp:ListItem Value="Giới thiệu" Text="Giới thiệu">
														</asp:ListItem>
														<asp:ListItem Value="Google" Text="Google"></asp:ListItem>
														<asp:ListItem Value="Fadebook" Text="Fadebook"></asp:ListItem>
														<asp:ListItem Value="Khác" Text="Khác"></asp:ListItem>
													</asp:DropDownList>
													<asp:RequiredFieldValidator ID="reqKnowUsVia"
														CssClass="fa fa-exclamation-triangle"
														ErrorMessage="Vui lòng chọn..." ValidationGroup="Contact"
														runat="server" Display="Dynamic"
														ControlToValidate="ddlKnowUsVia" SetFocusOnError="true">
													</asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group qparagraph require">
													<asp:TextBox ID="txtContent" placeholder="Nội dung (*)..."
														TextMode="MultiLine" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator ID="reqContent"
														CssClass="fa fa-exclamation-triangle"
														ErrorMessage="Vui lòng nhập Nội dung..."
														ValidationGroup="Contact" runat="server" Display="Dynamic"
														ControlToValidate="txtContent" SetFocusOnError="true">
													</asp:RequiredFieldValidator>
												</div>
												<div class="form-group frm-captcha-input">
													<Site:RecaptchaControl ID="captcha" runat="server" />
												</div>
												<div class="form-group qparagraph require">
													<p>* Vui lòng điền vào tất cả các trường được đánh dấu *</p>
												</div>
												<div class="form-group frm-btnwrap">
													<label class="label"></label>
													<div class="frm-btn">
														<asp:Button CssClass="btn btn-default frm-btn-submit"
															ID="btnSend" runat="server" ValidationGroup="Contact"
															Text="Gửi" />
													</div>
												</div>
												<div class="clear"></div>
											</div>
										</div>
										<div id="divResults" class="alert alert-success" runat="server" visible="false">
											Cám ơn bạn đã gửi yêu cầu, Cánh Cam sẽ phản hồi trong thời gian sớm nhất
										</div>
									</div>
								</ContentTemplate>
							</asp:UpdatePanel>
						</form>
					</div>
				</div>
			</div>
		</section>
		<div class="backtotop">
			<div class="v-align"><span>TOP</span></div>
		</div>
	</main>
	<footer>
		<div class="container-large">
			<div class="row">
				<div class="left">
					<p>COPYRIGHT © 2019 CÁNH CAM.</p>
					<a href="https://www.canhcam.vn/dieu-khoan-su-dung">ĐIỀU KHOẢN SỬ
						DỤNG</a>
				</div>
				<div class="right">
					<a href="https://www.facebook.com/canhcamhere/?ref=br_rs"><span
							class="fab fa-facebook-f"></span></a>
				</div>
			</div>
		</div>
	</footer>
	<script>(function (d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		window.twttr = (function (d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0],
				t = window.twttr || {};
			if (d.getElementById(id)) return t;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://platform.twitter.com/widgets.js";
			fjs.parentNode.insertBefore(js, fjs);
			t._e = [];
			t.ready = function (f) {
				t._e.push(f);
			};
			return t;
		}(document, "script", "twitter-wjs"));</script>
	<script src="./js/global.min.js"></script>
	<script src="./js/index.min.js"></script>
</body>

</html>