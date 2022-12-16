
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
								<h4> Quên mật khẩu </h4>
								<p class="secon-title-login">Nhập email đăng ký của bạn để khôi phục</p>
								<div class="error" id="password_error"><?php echo form_error('email')?></div>
								<div class="login-register-form">
								<?php 
								if(isset($success))
									echo '<h4 style="color: #02a102;font-size: 13px;text-align: center;background: #ecffec;padding: 15px;line-height: 17px;margin-bottom: 15px;">'.$success.'</h4>';
								?>
									<form action="" accept-charset="UTF-8" action="" id="reset_password" method="post">
										<div class="login-input-box">
										<div class="col_full">
										<label for="login-form-password">Email :<span class="require_symbol">* </span></label>
										<input type="email" id="login-form-password" name="email" value="" class="form-control">
										
									</div>
										</div>
										<div class="button-box">
											<div class="button-box">
												<button class="button login-btn" id="login-form-submit" name="login-form-submit" type="submit" value="login"><span>Khôi phục mật khẩu</span></button>
												<ul style="margin-top: 20px;">
													<li class="right" style="font-size: 13px;padding-left:3px">Bạn chưa có tài khoản trên cửa hàng?. <a href="<?php echo base_url() ?>dang-ky" style="font-size: 13px; color: red;font-weight:600">Đăng ký tại đây</a></li>
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