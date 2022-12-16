<!-- haeader Mid Start -->
<div class="haeader-mid-area bg-gren d-none border-bm-1 d-lg-block">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-3 col-lg-3 col-md-4 col-5">
					<div class="logo-area  d-mt-30">
						<a href="<?php echo base_url() ?>"><img src="<?php echo base_url() ?>public/images/logo.webp" alt="Logo"></a>
					</div>
				</div>
				<div class="col-xl-5 col-lg-5">
					<div class="search-box-wrapper full_width">
						<div class="search-box-inner-wrap">
							<form class="search-box-inner" action="search" method="get" role="form">
								<div class="search-field-wrap">
									<input type="text" class="search-field"  name="search" placeholder="Hôm nay bạn muốn mua gì...">
									<div class="search-btn">
										<button><i class="icon-search"></i></button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4">
					<div class="right-blok-box text-white d-flex">
						<div class="box-cart-wrap">
							<div class="shopping-cart-wrap account_box">
								<?php
								if ($this->session->userdata('sessionKhachHang')) {
									$name = $this->session->userdata('sessionKhachHang_name');
									echo "<a class='d-block d-lg-none' href='thong-tin-khach-hang'><i class='bx bx-user-circle' ></i></a>";
									echo "<a class='d-none d-lg-block' href='thong-tin-khach-hang'><i class='bx bxs-user-circle'></i> <span class='cart-total-amunt'>Tài khoản của tôi</span></a>";
								} else {
									echo "<a class='d-block d-lg-none' href='thong-tin-khach-hang'><i class='bx bx-user-circle' ></i></a>";
									echo "<a class='d-none d-lg-block' href='thong-tin-khach-hang'><span class='cart-total-amunt'>Đăng nhập/Đăng ký</span></a>";
								}
								?>
								<ul class="mini-cart">
									<li class="mini-cart-btns">
										<div class="cart-btns">
											<?php
											if ($this->session->userdata('sessionKhachHang')) {
												$name = $this->session->userdata('sessionKhachHang_name');
												echo "<a class='login-b' href='thong-tin-khach-hang'><i class='bx bxs-user-circle'></i> Quản lý tài khoản</a>";
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
						<div class="box-cart-wrap">

							<div class="shopping-cart-wrap">
								<!-- ================================== -->
								<a class="d-block d-lg-none" href="gio-hang"><span class="cart-total">
										<?php
										if ($this->session->userdata('cart')) {
											$val = $this->session->userdata('cart');
											echo count($val);
										} else {
											echo 0;
										}
										?></span>
									<i class='bx bxs-shopping-bag'></i>
								</a>
								<!-- ================================== -->
								<a class="d-none d-lg-block" href="gio-hang"> <i class='bx bxs-shopping-bag'></i><span class="cart-total">
										<?php
										if ($this->session->userdata('cart')) {
											$val = $this->session->userdata('cart');
											echo count($val);
										} else {
											echo 0;
										}
										?></span> <span class="cart-total-amunt">Giỏ hàng</span></a>
								<ul class="mini-cart">
									<!-- =================================== -->
									<?php if ($this->session->userdata('cart')) :
										$cart = $this->session->userdata('cart');
									?>
										<!-- =================================== -->
										<div class="list_item_cart">
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
													</div>
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
										<!--  -->
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
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- haeader Mid End -->