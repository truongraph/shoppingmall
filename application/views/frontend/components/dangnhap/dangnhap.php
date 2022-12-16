<!DOCTYPE html>
<html lang="en">

<head>
	<base href="<?php echo base_url(); ?>">
	</base>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>
		<?php
		if (isset($title))
			echo $title;
		else
			echo "Origine - Siêu thị tiện lợi";
		?>
	</title>
	<!-- <link href="public/css/owl.carousel.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="public/FrontEnd/css/styles.css" media="all">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	<!-- CSS
	============================================ -->

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="public/frontend_area/assets/css/vendor/bootstrap.min.css">
	<!-- Icon Font CSS -->
	<link rel="stylesheet" href="public/frontend_area/assets/css/vendor/font-awesome.min.css">
	<link rel="stylesheet" href="public/frontend_area/assets/css/vendor/plaza-font.css">

	<!-- Plugins CSS -->
	<link rel="stylesheet" href="public/frontend_area/assets/css/plugins/slick.css">
	<!-- Link Swiper's CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

	<!--  CSS STYLE -->
	<link href="public/FRONDEND/CSS/style-themes.scss.css" rel="preload stylesheet" as="style" type="text/css">
	<link rel="stylesheet" href="public/frontend_area/assets/css/plugins/animation.css">
	<link rel="stylesheet" href="public/frontend_area/assets/css/plugins/nice-select.css">
	<link rel="stylesheet" href="public/frontend_area/assets/css/plugins/fancy-box.css">
	<link rel="stylesheet" href="public/frontend_area/assets/css/plugins/jqueryui.min.css">

	<!-- Main Style CSS -->
	<link rel="stylesheet" href="public/frontend_area/assets/css/style.css">
	<!-- ======================================================================================================================== -->
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<!-- ✅ load jQuery ✅ -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<!-- ✅ load JS for Select2 ✅ -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" integrity="sha512-2ImtlRlf2VVmiGZsjm9bEyhjGW4dU7B6TNwh/hx/iSByxNENtj3WVE6o/9Lj4TJeVXPi4bnOIMXFIJJAeufa0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<!-- ======================================================================================================================== -->
</head>

<body class="cms-index-index cms-home-page">

	<div class='thetop'></div>
	<!-- TOPBAR -->
	<?php
	$this->load->view('frontend/modules/topbar');
	?>
	<div class="page-area">
		<!--CONTENT-->
		<?php echo form_open('dang-nhap'); ?>

		<!-- main-content-wrap start -->
		<div class="main-content-wrap section-ptb lagin-and-register-page">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-md-12 m-auto">
						<div class="login-register-wrapper">
							<!-- login-register-tab-list start -->
							<!-- login-register-tab-list end -->
							<div class="tab-content">
								<div id="lg1" class="tab-pane active">
									<div class="login-form-container">
										<h4> Đăng nhập tài khoản </h4>
										<p class="secon-title-login">Nếu bạn đã có tài khoản. Hãy đăng nhập ngay</p>
										<div class="error" id="password_error"><?php echo form_error('username') ?></div>
										<div class="error" id="password_error"><?php echo form_error('password') ?></div>
										<?php if (isset($error)) : ?>
											<?php echo "<div class='error' id='password_error'><p>$error</p></div>"; ?>
										<?php endif; ?>
										<div class="login-register-form">
											<form accept-charset="UTF-8" action="frontend/dangnhap/dangnhap.html" id="customer_login" method="post" name="form1" role="form">
												<div class="login-input-box">
													<div class="col_full">
														<label for="login-form-username">Tài khoản:<span class="require_symbol">* </span></label>
														<input type="text" id="login-form-username" name="username" value="" class="form-control">

													</div>
													<div class="col_full">
														<label for="login-form-password">Mật khẩu:<span class="require_symbol">* </span></label>
														<input type="password" id="login-form-password" name="password" value="" class="form-control">

													</div>
												</div>
												<div class="button-box">
													<div class="login-toggle-btn">
														<input type="checkbox">
														<label>Nhớ tài khoản</label>
														<a href="quen-mat-khau">Quên mật khẩu</a>
													</div>
													<div class="button-box">
														<button class="button login-btn" id="login-form-submit" name="login-form-submit" type="submit" value="login"><span>Đăng nhập</span></button>
														<a style="" class="button  reg-btn" href="<?php echo base_url() ?>dang-ky"> Đăng ký tài khoản</a>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- main-content-wrap end -->
		<!--FOOTER-->
		<?php
		$this->load->view('frontend/modules/footer');
		?>
	</div>


	<!-- JS
============================================ -->

	<!-- Modernizer JS -->
	<script src="public/frontend_area/assets/js/vendor/modernizr-3.6.0.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="public/frontend_area/assets/js/vendor/popper.min.js"></script>
	<script src="public/frontend_area/assets/js/vendor/bootstrap.min.js"></script>

	<!-- Plugins JS -->
	<script src="public/frontend_area/assets/js/plugins/slick.min.js"></script>
	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<script src="public/frontend_area/assets/js/plugins/jquery.nice-select.min.js"></script>
	<script src="public/frontend_area/assets/js/plugins/countdown.min.js"></script>
	<script src="public/frontend_area/assets/js/plugins/image-zoom.min.js"></script>
	<script src="public/frontend_area/assets/js/plugins/fancybox.js"></script>
	<script src="public/frontend_area/assets/js/plugins/scrollup.min.js"></script>
	<script src="public/frontend_area/assets/js/plugins/jqueryui.min.js"></script>
	<script src="public/frontend_area/assets/js/plugins/ajax-contact.js"></script>
	<!-- Main JS -->
	<script src="public/frontend_area/assets/js/main.js"></script>

	<!-- JavaScript -->
	<!-- <script src="public/FrontEnd/js/bootstrap.min.js"></script>
    <script src="public/FrontEnd/js/revslider.js"></script>
    <script src="public/FrontEnd/js/main.js"></script>
    <script src="public/FrontEnd/js/owl.carousel.min.js"></script>
    <script src="public/FrontEnd/js/mob-menu.js"></script> -->
	<!-- <script src="public/js/search-quick.js"></script>
    <script src="public/js/app.min.js"></script>
    <script src="public/js/owl.carousel.js"></script>
    <script src="public/js/jquery.jcarousel.js"></script>
    <script src="public/js/jcarousel.connected-carousels.js"></script>
    <script src="public/js/scroll.js"></script>
    <script src="public/js/jquery.flexslider.js"></script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
	<script src="public/js/custom-owl.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script>
		$(window).scroll(function() {
			var sticky = $('#myHeader'),
				scroll = $(window).scrollTop();
		});
		toastr.options = {
			'closeButton': true,
			'debug': false,
			'newestOnTop': false,
			'progressBar': false,
			'positionClass': 'toast-top-right',
			'preventDuplicates': false,
			'showDuration': '1000',
			'hideDuration': '1000',
			'timeOut': '5000',
			'extendedTimeOut': '1000',
			'showEasing': 'swing',
			'hideEasing': 'linear',
			'showMethod': 'fadeIn',
			'hideMethod': 'fadeOut',
		}
	</script>
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			spaceBetween: 30,
			hashNavigation: {
				watchState: true,
			},
			pagination: {
				el: ".swiper-pagination",
				clickable: true,
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
		});
		$('.error').delay(2000).hide(0);
    $('.alert').delay(2000).hide(0);
     
	</script>
</body>

</html>