 <!-- breadcrumb-area start -->
 <div class="breadcrumb-area">
 	<div class="container">
 		<div class="row">
 			<div class="col-12">
 				<!-- breadcrumb-list start -->
 				<ul class="breadcrumb-list">
 					<li class="breadcrumb-item"><a href="">Trang chủ</a></li>
 					<li class="breadcrumb-item active">Chi tiết đơn hàng</li>
 				</ul>
 				<!-- breadcrumb-list end -->
 			</div>
 		</div>
 	</div>
 </div>
 <!-- breadcrumb-area end -->
 <!-- main-content-wrap start -->
 <div class="main-content-wrap section-ptb my-account-page">
 	<div class="container">
 		<div class="row">
 			<div class="col-12">
 				<div class="account-dashboard">
 					<div class="dashboard-upper-info">
 						<h4>Chi tiết đơn hàng</h4>
 					</div>
 					<div class="row">

 						<div class="col-lg-12">
 							<div class="table-responsive">
 								<table class="table table-responsive table-bordered text-left my-orders-table">
 									<thead>
 										<tr class="first last">
										 	<th class="text-center last">Hình ảnh</th>
 											<th class="text-center last">Tên sản phẩm</th>
											 <th class="text-center last">Mã sản phẩm</th>
 											<th class="text-center last">Giá bán</th>
 											<th class="text-center last">Số lượng</th>
 											<th class="text-center last">Thành tiền</th>
 										</tr>
 									</thead>
 									<tbody>
 										<?php foreach ($row as $value) : ?>
 											<tr>
												<td class="text-center last" width="100px">	<a href="<?php echo $value['alias'] ?>">
													<img src="public/images/products/<?php echo $value['avatar'] ?>" alt="<?php echo $value['name'] ?>">
												</a></td>
 												<td class="text-center last"><a href="<?php echo $value['alias'] ?>"><?php echo $value['name'] ?></a></td>
												 <td class="text-center last" width="150px"><?php echo $value['sku'] ?></td>
 												<td class="text-center last" width="150px"><?php echo number_format($value['priceorder']) ?> đ</td>
 												<td class="text-center last" width="100px"><?php echo $value['count'] ?></td>
 												<td class="text-center last" width="150px"><?php echo number_format($value['priceorder'] * $value['count']) ?> đ</td>
 											</tr>
 										<?php endforeach; ?>
 									</tbody>
 								</table>
 							</div>
 						</div>
 						<div class="col-lg-8">
 							<div class="content-order">
 								<h4>Thông tin giao hàng</h4>
 								<p> <strong>Mã đơn hàng:</strong> <a style="color: #1d6cd9;font-weight: 600;">#<?php echo $info['orderCode'] ?></a></p>
 								<p> <strong>Phương thức thanh toán:</strong> <?php echo $info['payment'] ?></p>
 								<p> <strong>Họ tên khách hàng:</strong> <?php echo $info['fullname'] ?></p>
 								<p> <strong>Số điện thoại:</strong> <?php echo $info['phone'] ?></p>
 								<p> <strong>Thời gian đặt hàng:</strong> <?php echo date("d/m/Y  h:i:s A", strtotime($info['orderdate']));  ?></p>
 								<p> <strong>Địa chỉ giao hàng:</strong> <?php echo $info['address'] ?>, <?php echo $this->Mdistrict->district_name($info['district']); ?>, <?php echo $this->Mprovince->province_name($info['province']); ?></p>
 								<p> <strong>Ghi chú đơn hàng:</strong> <?php echo $info['notes'] ?></p>
 							</div>
 						</div>
 						<div class="col-lg-4">
 							<div class="content-order">
 								<h4>Thông tin thanh toán</h4>
 								<?php
									$priceShip = $info['price_ship'];
									$total = $info['money'] - $info['price_ship'];
									?>
 								<p> <strong> Tổng tiền đơn hàng: </strong> <span style="float: right;"><?php echo number_format($total) ?> đ</span></p>
 								<p> <strong> Phí giao hàng: </strong> <span style="float: right;"><?php echo number_format($priceShip) ?> đ</span></p>
 								<?php
									if ($info['coupon'] != 0) {
										echo '<p>
							<strong>Mã giảm giá :</strong>
							<span style="float: right;">- ' . number_format($info['coupon']) . ' đ</span>
						</p>';
									}

									?>
 								<p>
 									<strong> Thành tiền:</strong>
 									<span style="float: right;"><span style="color: red; font-size: 20px;font-weight:600"><?php echo number_format($info['money']) ?> đ</span></span>
 								</p>
 							</div>
							 <button class="continue-btn text-white" style="display: block;width:100%"><a class="text-white" href="javascript:;" onclick="window.history.go(-1);"><i class='bx bx-left-arrow-alt' ></i> Trở lại trang tài khoản</a></button>
 						</div>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 </div>
 <!-- main-content-wrap end -->