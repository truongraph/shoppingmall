<div class="container-fluid">


	<div class="d-flex align-items-baseline justify-content-between">

		<!-- Title -->
		<h1 class="h2 d-flex">
			Chi tiết hóa đơn hàng
		</h1>

		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item active" aria-current="page">Chi tiết đơn hàng</li>
			</ol>
		</nav>
	</div>
	<!-- Card -->
	<div class="card border-0">
		<div class="card-body">
			<form action="admin/orders/detail/<?php echo $id; ?>" enctype="multipart/form-data" method="post" accept-charset="utf-8">
								<?php

					$order = $this->Morders->orders_detail_save($id);
					$customer = $this->Mcustomer->customer_detail($order['customerid']);
					$data = $this->Morderdetail->orderdetail_orderid($id);
					?>
				<div class="row justify-content-between">
					<div class="col-md-7 col-xl-6 col-xxl-5">
						<h3 class="mb-0">Thông tin đơn đặt hàng số: #<?php echo $order['orderCode']; ?></h3>
					</div>

				</div> <!-- / .row -->
				<!-- Divider -->
				<hr>

				<div class="row justify-content-between">
					<div class="col col-lg-auto fw-semibold mb-5">
						<div class="row">
							<div class="col-auto w-150px">
								<p class="mb-3 mb-md-5"><span class="text-secondary">Tên khách hàng:</span></p>
							</div>
							<div class="col-auto">
								<p class="mb-3"><?php echo $order['fullname']; ?></p>
							</div>
						</div> <!-- / .row -->

						<div class="row">
							<div class="col-auto w-150px">
								<p class="mb-3 mb-md-5"><span class="text-secondary">Số điện thoại:</span></p>
							</div>

							<div class="col-auto">
								<p class="mb-5"><?php echo $order['phone']; ?></p>
							</div>
						</div> <!-- / .row -->

						<div class="row">
							<div class="col-auto w-150px">
								<p class="mb-3 mb-md-5"><span class="text-secondary">Ngày đặt hàng:</span></p>
							</div>

							<div class="col-auto">
								<p class="mb-5"><?php echo date("d/m/Y  h:i:s A", strtotime($order['orderdate']));  ?></p>
							</div>
						</div> <!-- / .row -->

						

						<div class="row">
							<div class="col-auto w-150px">
								<p class="mb-3 mb-md-5"><span class="text-secondary">Địa chỉ:</span></p>
							</div>

							<div class="col-auto">
								<p class="mb-5"><?php echo $order['address']; ?>,
									<?php echo $this->Mdistrict->district_name($order['district']); ?>,
									<?php echo $this->Mprovince->province_name($order['province']); ?></p>
							</div>
						</div> <!-- / .row -->
					</div>

					<div class="col col-lg-auto text-end">
						<span class="text-dark">Đơn vị tính (đ)</span>
						<h4 class="display-4 mb-6 text-danger"><?php echo number_format($order['money']); ?> đ</h4>

						<div class=" mb-3"><span class="text-dark">Tình trạng đơn hàng</span></div>
						<?php
						switch ($order['status']) {
							case '0':
								echo '<span class="badge text-bg-dark-soft fs-6 fw-bold mb-6"> Đang chờ duyệt</span>';
								break;
							case '1':
								echo '<span class="badge text-bg-primary-soft fs-6 fw-bold mb-6"> Đang giao hàng</span>';
								break;
							case '2':
								echo '<span class="badge text-bg-success-soft fs-6 fw-bold mb-6"> Đã giao hàng</span>';
								break;
							case '3':
								echo '<span class="badge text-bg-danger-soft fs-6 fw-bold mb-6">Khách hàng đã hủy</span>';
								break;
							case '4':
								echo '<span class="badge text-bg-warning-soft fs-6 fw-bold mb-6">Nhân viên đã hủy</span>';
								break;
						}
						?>
					</div>
				</div> <!-- / .row -->

				<div class="row">
					<div class="col">

						<!-- Table -->
						<div class="table-responsive">
							<table class="table align-middle table-nowrap mb-0">
								<thead class="thead-light">
									<tr>
										<th scope="col" class="w-60px">STT</th>
										<th scope="col">Hình ảnh</th>
										<th scope="col">Tên sản phẩm</th>
										<th scope="col">Số lượng</th>
										<th scope="col">Giá bán</th>
										<th>Thành tiền</th>
									</tr>
								</thead>
								<tbody>

									<?php
									$stt = 0;
									$total = 0;
									foreach ($data as $row) :
										$product = $this->Mproduct->product_detail($row['productid']);												?>
										<tr>
											<td><?php $stt += 1;
												echo $stt; ?></td>
											<td>
												<img width="50px" height="50px" style="object-fit: contain;" src="public/images/products/<?php echo $product['avatar'] ?>" alt="<?php echo $product['name'] ?>" class="img-responsive">
											</td>
											<td><?php echo $product['name']; ?></td>
											<td><?php echo $row['count']; ?></td>
											<td><?php echo number_format($row['price']); ?> đ</td>
											<td>
												<?php
												$price = $row['price'] * $row['count'];
												echo number_format($price);
												$total += $price;
												$price_ship = $order['price_ship'];;
												$coupon = $order['coupon'];
												?> đ
											</td>
										</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
							<div class="col col-lg-auto text-end mt-3">
								<div class=" mb-3"><span class="text-dark fw-bold">Tổng cộng: <span class="text-danger m-lg-2"><?php echo number_format($total); ?> đ</span></span></div>
								<?php
								if ($coupon != 0) {
									echo '
												<div class=" mb-3"><span class="text-dark fw-normals">Tổng cộng: <span class="m-lg-2">' . number_format($coupon) . ' đ</span></span></div>
												';
								}
								?>
								<div class=" mb-3"><span class="text-dark fw-normal">Phí vận chuyển: <span class=" m-lg-2"><?php echo number_format($price_ship); ?> đ</span></span></div>
								<div class=" mb-3"><span class="text-dark fw-bold">Thành tiền đơn hàng: <span class="text-danger display-6 m-lg-2"><?php echo number_format($total + $price_ship - $coupon); ?> đ</span></span></div>
							</div>
						</div> <!-- / .table-responsive -->
					</div>
				</div> <!-- / .row -->
				<closeform></closeform>
			</form>
		</div>

		<div class="card-footer">
			<div class="row align-items-end">
				<div class="col mb-5 mb-md-0">
					<small class="text-secondary">Nếu bạn đang có thắc mắc gì về đơn hàng, xin vui lòng liên hệ ngay cho chúng tôi</small>
				</div>

				<div class="col-md-auto">
					<!-- Button -->
					<a type="button" class="btn btn-light" role="button" href="admin/orders">Trở về</a>
				</div>
			</div> <!-- / .row -->
		</div>
	</div>
</div>



