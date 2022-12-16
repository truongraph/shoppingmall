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
								<h4> Đăng ký tài khoảnn </h4>
								<p class="secon-title-login">Hãy tạo tài khoản để nhận nhiều ưu đãi từ cửa hàng</p>
								<div class="error" id="username_error"><?php echo form_error('username') ?></div>
								<div class="error" id="password_error"><?php echo form_error('password') ?></div>
								<div class="error" id="re_password_error"><?php echo form_error('re_password') ?></div>
								<div class="error" id="name_error"><?php echo form_error('name') ?></div>
								<div class="error" id="email_error"><?php echo form_error('email') ?></div>
								<div class="error" id="name_error"><?php echo form_error('phone') ?></div>
								<div class="login-register-form">
									<?php
									if (isset($success))
										echo '<h4 style="color: #02a102;font-size: 13px;text-align: center;background: #ecffec;padding: 15px;line-height: 17px;margin-bottom: 15px;">' . $success . '</h4>';
									?>
									<form accept-charset="UTF-8" action="" id="customer_login" method="post">
										<div class="login-input-box">
											<div class="col_full">
												<label for="first_name">Tên đăng nhập:<span class="require_symbol">*</span></label>
												<input type="text" id="first_name" name="username" value="" class="form-control" placeholder="Tên đăng nhập">

											</div>
											<div class="col_full">
												<label for="register-form-password">Mật khẩu:<span class="require_symbol">*</span></label>
												<input type="password" id="register-form-password" name="password" placeholder="Mật khẩu" class="form-control">

											</div>

											<div class="col_full">
												<label for="register-form-repassword">Nhập lại mật khẩu:<span class="require_symbol">* </span></label>
												<input type="password" id="register-form-repassword" name="re_password" value="" class="form-control" placeholder="Nhập lại mật khẩu">

											</div>
											<div class="col_full">
												<label for="first_name">Họ tên:<span class="require_symbol">*</span></label>
												<input type="text" id="first_name" name="name" placeholder="Họ tên" class="form-control">

											</div>
											<div class="col_full">
												<label for="register-form-email">Email:<span class="require_symbol">*</span></label>
												<input type="text" id="register-form-email" name="email" class="form-control" placeholder="Nhập email">
												
											</div>
											<div class="col_full">
												<label for="first_name">Số điện thoại:<span class="require_symbol">*</span></label>
												<input type="text" id="first_name" name="phone" placeholder="Số điện thoại" class="form-control">

											</div>
										</div>
										<div class="button-box">
											<div class="button-box">
												<button class="button login-btn" id="register-form-submit" name="register-form-submit" type="submit"><span>Đăng ký tài khoản</span></button>
												<ul style="margin-top: 20px;">
													<li class="right" style="font-size: 13px;padding-left:3px">Bạn đã có tài khoản trên cửa hàng?. <a href="<?php echo base_url() ?>dang-nhap" style="font-size: 13px; color: red;font-weight:600">Đăng nhập tại đây</a></li>
												</ul>
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