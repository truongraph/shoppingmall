<!-- Header -->
<header class="header">
	<?php
	$this->load->view('frontend/modules/logo-search');
	?>

	<!-- haeader bottom Start -->
	<div class="haeader-bottom-area bg-gren header-sticky">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-2 d-none d-lg-block">
					<div class="categories-menu-wrap_box">
						<div class="categories_menu">
							<div class="categories_title">
								<h5 class="categori_toggle">Danh mục</h5>
								<i class='bx bx-menu'></i>
							</div>
							<div class="categories_menu_toggle">
								<?php
								$limit = 9;
								$listcat = $this->Mcategory->category_menu(0, $limit);
								$html_menu = '<ul>';
								foreach ($listcat as $menu) {
									$parentid = $menu['id'];
									$submenu = $this->Mcategory->category_menu($parentid);
									$html_menu .= '<li class="menu_item_children categorie_list">';
									$html_menu .= "<a href='san-pham/" . $menu['link'] . " ' title=' " . $menu['name'] . "'><i class='bx bx-disc' ></i> ";
									$html_menu .= $menu['name'];
									if (!empty($submenu)) {
										$html_menu .= '<i class="fa fa-angle-right">';
									}
									$html_menu .= '</i>';
									$html_menu .= "</a>";
									if (count($submenu)) {
										$html_menu .= '<ul class="categories_mega_menu">';
										foreach ($submenu as $menu1) {
											$html_menu .= '<li>';
											$html_menu .= "<a href='san-pham/" . $menu1['link'] . " ' title=' " . $menu1['name'] . " '> " . $menu1['name'] . "</a>";
											$html_menu .= "</li>";
										}
										$html_menu .= "</ul>";
									}
									$html_menu .= "</li>";
								}
								$html_menu .= "</ul>";
								echo $html_menu;
								?>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-10 d-none d-lg-block">

					<div class="main-menu-area white_text">
						<!--  Start Mainmenu Nav-->
						<nav class="main-navigation">
							<ul>
								<li><a href="">Trang chủ</a></li>
								<li><a href="gioi-thieu">Về chúng tôi</a></li>
								<li><a href="san-pham">Sản phẩm</a></li>
								<li><a href="tin-tuc/1">Tin tức nổi bật</a></li>
								<li><a href="lien-he">Liên hệ chúng tôi</a></li>
							</ul>
						</nav>

					</div>
				</div>

				<div class="col-5 col-md-6 d-block d-lg-none">
					<div class="logo"><a href="<?php echo base_url() ?>"><img src="<?php echo base_url() ?>public/images/logo.webp" alt="Logo"></a></div>
				</div>

				<div class="col-lg-3 col-md-6 col-7">
					<div class="right-blok-box text-white d-block d-lg-none d-flex">

						<div class="user-wrap">
							<div class="shopping-cart-wrap">
								<?php
								if ($this->session->userdata('sessionKhachHang')) {
									$name = $this->session->userdata('sessionKhachHang_name');
									echo "<a class='d-block d-lg-none' ><i class='bx bx-user-circle' ></i></a>";
								} else {
									echo "<a class='d-block d-lg-none' ><i class='bx bx-user-circle' ></i></a>";
								}
								?>
								<ul class="mini-cart">
									<li class="mini-cart-btns">
										<div class="cart-btns">
											<?php
											if ($this->session->userdata('sessionKhachHang')) {
												$name = $this->session->userdata('sessionKhachHang_name');
												echo "<a href='thong-tin-khach-hang'><i class='bx bxs-user-circle'></i> Quản lý tài khoản</a>";
												echo "<a href='dang-xuat'><i class='bx bxs-log-in-circle' ></i> Đăng xuất</a>";
											} else {
												echo "<a class='login-b' href='dang-nhap'>Đăng nhập tài khoản</a>";
												echo "<a href='dang-ky'>Tạo tài khoản mới</a>";
											}
											?>
										</div>
									</li>
								</ul>
							</div>
						</div>


						<div class="shopping-cart-wrap">
							<!-- ================================== -->
							<a class="d-block d-lg-none" ><span class="cart-total">
									<?php
									if ($this->session->userdata('cart')) {
										$val = $this->session->userdata('cart');
										echo count($val);
									} else {
										echo 0;
									}
									?></span>
								<i class='bx bx-shopping-bag'></i>
							</a>
							<ul class="mini-cart">
								<!-- =================================== -->
								<?php if ($this->session->userdata('cart')) :
									$cart = $this->session->userdata('cart');
								?>
									<!-- =================================== -->
									<!-- Lặp data sản phẩm trong giỏ -->
									<?php foreach ($cart as $key => $value) :
										$row = $this->Mproduct->product_detail_id($key);
									?>
										<li class="cart-item">
											<div class="cart-image">
												<a title="<?php echo $row['name'] ?>" href="<?php echo $row['alias'] ?>">
													<img src="public/images/products/<?php echo $row['avatar'] ?>" alt="<?php echo $row['name'] ?>">
												</a>
											</div>
											<div class="cart-title">
												<a href="<?php echo $row['alias'] ?>">
													<h4><?php echo $row['name'] ?></h4>
												</a>
												<div class="quanti-price-wrap">
													<span class="quantity"><?php echo $value ?> ×</span>
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

												<?php $total = 0; ?>
												<?php foreach ($cart as $key => $value) :
													$row = $this->Mproduct->product_detail_id($key); ?>
													<?php
													if ($row['price_sale'] > 0)
														$sum = $row['price_sale'] * $value;
													else
														$sum = $row['price'] * $value;
													$total += $sum;
													?>
												<?php endforeach; ?> <a class="remove_from_cart_icon" onclick="onRemoveProduct(<?php echo $row['id']; ?>)"><i class='bx bxs-trash'></i></a>
											</div>
										</li>
									<?php endforeach; ?>
									<!-- Kết thúc lặp data sản phẩm trong giỏ -->
									<!-- =================================== -->
									<!-- Tính tổng số tiền sản phẩm ( Tạo vòng lặp ) -->
									<?php $total = 0; ?>
									<?php foreach ($cart as $key => $value) :
										$row = $this->Mproduct->product_detail_id($key); ?>
										<?php
										if ($row['price_sale'] > 0)
											$sum = $row['price_sale'] * $value;
										else
											$sum = $row['price'] * $value;
										$total += $sum;
										?>
									<?php endforeach; ?>
									<!-- Kết thúc tính tổng số tiền sản phẩm ( Tạo vòng lặp ) -->
									<li class="subtotal-box">
										<div class="subtotal-title">
											<h3>Tổng cộng :</h3><span><?php echo (number_format($total)) . ' đ'; ?></span>
										</div>
									</li>
									<li class="mini-cart-btns">
										<div class="cart-btns">
											<a class="view-info-cart" onclick="window.location.href='gio-hang'">Xem giỏ hàng</a>
											<a class="view-checkout-cart" onclick="window.location.href='info-order'">Tiến hành thanh toán</a>
										</div>
									</li>
								<?php else : ?>
									<div class="empty-cart">
										<i class='bx bx-shopping-bag'></i>
										<br>
										Không tìm thấy sản phẩm nào
									</div>

								<?php endif; ?>
							</ul>
						</div>

						<div class="mobile-menu-btn ">
							<div class="off-canvas-btn">
								<a><i class='bx bx-menu'></i></a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- haeader bottom End -->





</header>
<?php
	$this->load->view('frontend/modules/panel-left');
	?>


<!-- end header -->
<script>
	function onRemoveProduct(id) {
		var strurl = "<?php echo base_url(); ?>" + '/sanpham/remove';
		jQuery.ajax({
			url: strurl,
			type: 'POST',
			dataType: 'json',
			data: {
				id: id
			},
			success: function(data) {
				document.location.reload(true);
			}
		});
	}
</script>