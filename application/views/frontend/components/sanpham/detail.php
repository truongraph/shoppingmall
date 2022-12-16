<?php if ($row['name']) :
	null
?>

	<!-- breadcrumb-area start -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- breadcrumb-list start -->
					<ul class="breadcrumb-list">
						<li class="breadcrumb-item"><a href="">Trang chủ</a></li>
						<li class="breadcrumb-item"><a href="<?php echo base_url() ?>/san-pham/<?php $link = $this->Mcategory->category_link($row['catid']);
																								echo $link; ?>" title=""><?php $name = $this->Mcategory->category_name($row['catid']);
																															echo $name; ?></a></li>
						<li class="breadcrumb-item active"><?php echo $row['name'] ?></li>
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
			<form action="" method="post" id="ProductDetailsForm">
				<div class="row single-product-area product-details-inner">
					<div class="col-lg-5 col-md-6">
						<?php $this->load->view('frontend/modules/jcarousel'); ?>
					</div>
					<div class="col-lg-7 col-md-6">
						<div class="product-details-view-content">
							<div class="product-info">
								<h3><?php echo $row['name'] ?> </h3>

								<ul class="stock-cont">
									<li class="product-sku">Mã sản phẩm: <span><?php echo $row['sku'] ?></span></li>
									<li class="product-sku">Danh mục: <span><?php $name = $this->Mcategory->category_name($row['catid']);
																			echo $name; ?></span></li>
									<li class="product-sku">Tình trạng: <span><?php if ($row['number'] - $row['number_buy'] == 0 || $row['status'] == 0) echo 'Hết hàng';
																				else echo 'Còn hàng' ?></span></li>
								</ul>
								<div class="price-box">
									<?php if ($row['price_sale'] > 0 && $row['sale'] > 0) : ?>
										<span class="old-price"><?php echo number_format($row['price']) ?> đ</span>
									<?php endif; ?>
									<span class="new-price"><?php echo number_format($row['price_sale']) ?> đ</span>

								</div>
								<p class="short_desc"><?php echo $row['sortDesc'] ?></p>
								<div class="single-add-to-cart">
									<form action="#" class="cart-quantity">
										<?php
										if ($row['number'] - $row['number_buy'] == 0 || $row['status'] == 0) {
											echo '<p style="color:red;font-weight:700;font-size:17px">Sản phẩm ngừng kinh doanh</p>';
										} else {
											echo '
												<button class="add-now" title="Mua ngay" type="button" aria-label="Mua ngay" onclick="onQuickAddCart(' . $row['id'] . ')">Mua ngay <span>Giao tận nơi hoặc nhận tại cửa hàng</span></button>
												<div class="actions-qty__button d-flex">
									<button class="add-to-cart" title="Thêm vào giỏ" type="button" aria-label="Thêm vào giỏ" onclick="onAddCart(' . $row['id'] . ')">Thêm vào giỏ</button>
									<button class="support-user" title="Hỗ trợ trả góp" type="button" aria-label="Hỗ trợ trả góp">Hỗ trợ trả góp <span>Duyệt hồ sơ trong 5 phút</span></button>
								</div>';
										}
										?>
									</form>
								</div>

							</div>
						</div>
						<div class="product-description-area section-pt">
							<div class="row">
								<div class="col-lg-12">
									<div class="product-details-tab">
										<ul role="tablist" class="nav">
											<li class="active" role="presentation">
												<a data-bs-toggle="tab" role="tab" href="#description" class="active">Mô tả sản phẩm</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="product_details_tab_content tab-content">
										<!-- Start Single Content -->
										<div class="product_tab_content tab-pane active" id="description" role="tabpanel">
											<div class="product_description_wrap  mt-30">
												<div class="product_desc mb-30">
													<?php echo $row['detail'] ?>
												</div>

											</div>
										</div>
										<!-- End Single Content -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</form>
			<div class="related-product-area section-pt">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title">
							<h3> Sản phẩm liên quan</h3>
						</div>
					</div>
				</div>
				<?php
				$list_spcungloai = $this->Mproduct->product_cungloai($row['catid'], $row['id'], 5); ?>
				<?php
				if (count($list_spcungloai) > 0) : ?>
					<div class="row">
						<?php foreach ($list_spcungloai as $row) : ?>
							<div class="product-col col-6 col-lg-item-5">
								<!-- Single Product Start -->
								<div class="single-product-wrap mt-10">
									<div class="product-image">
										<a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
											<img src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
										</a>
										<?php if ($row['sale'] > 0) : ?>
											<span class="onsale">-<?php echo $row['sale'] ?>%</span>
										<?php endif; ?>

									</div>

									<div class="product-content">
										<h6 class="product-name"><a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
												<?php echo $row['name'] ?></a>
										</h6>
										<div class="price-box">
											<?php if ($row['sale'] > 0) : ?>
												<p class="new-price">
													<?php echo (number_format($row['price_sale'])); ?> đ
												</p>
												<p class="old-price">
													<?php echo (number_format($row['price'])); ?> đ
												</p>
											<?php else : ?>
												<p class="new-price">
													<?php echo (number_format($row['price'])); ?> đ
												</p>
											<?php endif; ?>
										</div>

									</div>
								</div>
								<!-- Single Product End -->
							</div>
						<?php endforeach; ?>
					</div>
				<?php endif; ?>
			</div>
		</div>

	</div>
<?php else : ?>
	<!-- main-content-wrap start -->
	<div class="main-content-wrap section-ptb wishlist-page" style="height: 100vh;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="search-error-wrapper">
						<h1>404</h1>
						<h2>Không tìm thấy trang</h2>
						<p class="home-link">Nếu bạn nhập URL trực tiếp, hãy đảm bảo rằng chính tả là chính xác.<br>
							Trang bạn đang tìm kiếm có thể đã bị xóa, chuyển đi, thay đổi link hoặc chưa bao giờ tồn tại.</p>
						<a onclick="window.location.href='trang-chu'" class="home-bacck-button">Trở về trang chủ</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- main-content-wrap end -->
<?php endif; ?>
<!-- main-content-wrap end -->
<script>
	function onAddCart(id) {

		var strurl = "<?php echo base_url(); ?>" + '/sanpham/addcart';

		jQuery.ajax({
			url: strurl,
			type: 'POST',
			dataType: 'json',
			data: {
				id: id
			},
			success: function(data) {
				setTimeout(function() {
					toastr.success(
						'Bạn đã thêm 1 sản phẩm vào giỏ hàng');
					document.location.reload(true);
				}, 500);
			}
		});
	}
</script>
<script>
	function onQuickAddCart(id) {

		var strurl = "<?php echo base_url(); ?>" + '/sanpham/addcart';

		jQuery.ajax({
			url: strurl,
			type: 'POST',
			dataType: 'json',
			data: {
				id: id
			},
			success: function(data) {
				setTimeout(function() {
					toastr.success(
						'Bạn đã thêm 1 sản phẩm vào giỏ hàng');
					window.location.href = 'info-order';
				}, 500);
			}
		});
	}
</script>