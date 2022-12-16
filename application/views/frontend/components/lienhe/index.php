<?php echo form_open(base_url() . "lien-he"); ?>
<!-- breadcrumb-area start -->
<div class="breadcrumb-area">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- breadcrumb-list start -->
				<ul class="breadcrumb-list">
					<li class="breadcrumb-item"><a href="">Trang chủ</a></li>
					<li class="breadcrumb-item active">Liên hệ chúng tôi</li>
				</ul>
				<!-- breadcrumb-list end -->
			</div>
		</div>
	</div>
</div>
<!-- breadcrumb-area end -->
<!-- main-content-wrap start -->
<div class="main-content-wrap shop-page section-ptb">
	<div class="container">
		<div class="blog-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h4 class="title-blog">Liên hệ chúng tôi</h4>
				</div>
				<div class="col-lg-6">
				<div class="errorlist">
						<?php
						echo validation_errors();

						?>
					</div>
					<form accept-charset="UTF-8" action="<?php echo base_url() ?>lien-he" id="contact" method="post">

						<div class="form-comment">
							<div class="row" >
								<div class="col-md-6 col-12" style="margin-bottom: 15px;">
									<div class="form-group" >
										<label for="name"><p> Họ tên <span class="required">*</span></p></label>
										<input id="name" name="fullname" type="text" value="" class="form-control">
									</div>
								</div>
								<div class="col-md-6 col-12" style="margin-bottom: 15px;">
									<div class="form-group" >
										<label for="email"><p> Email <span class="required">*</span></p></label>
										<input id="email" name="email" class="form-control" type="email" value="">
									</div>
								</div>
								<div class="col-md-6 col-12" style="margin-bottom: 15px;">
									<div class="form-group" >
										<label for="phone"><p> Số điện thoại <span class="required">*</span></p></label>
										<input type="number" id="phone" class="form-control" name="phone">
									</div>
								</div>
								<div class="col-md-6 col-12" style="margin-bottom: 15px;">
								<div class="form-group" >
								<label for="message"><p> Tiêu đề thư<span class="required">*</span></p></label>
								<input id="message" name="title" class="form-control">
							</div>
								</div>
							</div>
						
							<div class="form-group" style="margin-bottom: 15px;">
								<label for="message"><p> Nội dung <span class="required">*</span></p></label>
								<textarea id="message" name="content" class="form-control custom-control" rows="5"></textarea>
							</div>
							<button type="submit" class="continue-btn">Gửi liên hệ</button>

						</div>
					</form>
				</div>
				<div class="col-lg-6">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.14003056735!2d106.67761601524109!3d10.80058536169965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528d77aea3b1d%3A0x9146d5cdf75abe16!2zSGFuZ2NoaW5oaGlldS52biB8IENodXnDqm4gTGFwdG9wIENoxqFpIEdhbWUsIExhcHRvcCBHYW1pbmcgfCBDaMOtbmggSMOjbmcgLSBHacOhIFPhu5Fj!5e0!3m2!1svi!2s!4v1668604526117!5m2!1svi!2s" width="100%" height="370" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main-content-wrap end -->
