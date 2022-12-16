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

				$order = $this->Morders->orders_detail($id);
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
						<div class="row">
							<div class="col-auto w-150px">
								<p class="mb-3 mb-md-5"><span class="text-secondary">Ghi chú:</span></p>
							</div>

							<div class="col-auto">
								<p class="mb-5"><?php echo $order['notes']; ?></p>
							</div>
						</div> <!-- / .row -->
						<div class="row">
							<div class="col-auto w-150px">
								<p class="mb-3 mb-md-5"><span class="text-secondary">Loại thanh toán:</span></p>
							</div>

							<div class="col-auto">
								<p class="mb-5"><?php echo $order['payment']; ?></p>
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
								echo '<span class="badge text-bg-dark-soft fs-6 fw-bold mb-6"> Chờ xác nhận</span>';
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
					<a type="button" class="btn btn-secondary" role="button" href="admin/orders">Trở về</a>

					<!-- Button -->
					<a type="button" class="btn btn-primary ms-2" onclick="myPrint('detailorder')"><i class='bx bx-printer'></i> In hóa đơn</a>
				</div>
			</div> <!-- / .row -->
		</div>
	</div>
</div>



<!--  IN ĐƠN HÀNG  -->
<section class="main-pd-wrapper" style="width: 500px; margin: auto;display:none">

	<form id="detailorder" action="admin/orders/detail/<?php echo $id; ?>" enctype="multipart/form-data" method="post" accept-charset="utf-8">

		<?php
		$order = $this->Morders->orders_detail($id);
		$customer = $this->Mcustomer->customer_detail($order['customerid']);
		$data = $this->Morderdetail->orderdetail_orderid($id);
		?>
		<div style="
                  font-size: 13px;
                  color: #000;
                ">
			<div style="display:flex">
				<span style="margin-left: auto;">
						<?php echo date("d/m/Y h:i:s A");  ?>
				</span>

			</div>
			<p style="font-weight: bold; color: #000; margin-top: 30px; font-size: 18px; text-align:center">
				PHIẾU MUA HÀNG
			</p>
			<div style="margin: 5px auto 30px auto; text-align:center">
				<p><b>Hóa đơn: </b> #<?php echo $order['orderCode']; ?></p>
			</div>

			<p>
				<b>Khách hàng:</b> <?php echo $order['fullname']; ?>
			</p>
			<p>
				<b>Số điện thoại:</b> <?php echo $order['phone']; ?>
			</p>
			<p>
				<b>Thời gian đặt: </b> <?php echo date("d/m/Y h:i:s A", strtotime($order['orderdate']));  ?>
			</p>
			
			<p>
				<b>Địa chỉ: </b> <?php echo $order['address']; ?>,
				<?php echo $this->Mdistrict->district_name($order['district']); ?>,
				<?php echo $this->Mprovince->province_name($order['province']); ?>
			</p>
			<hr style="border: 1px dashed rgb(131, 131, 131); margin: 25px auto">
		</div>
		<table style="width: 100%; table-layout: fixed; font-size:13px">
			<thead>
				<tr>
					<th width="200px">Đơn giá/Giảm</th>
					<th class="text-center">SL</th>
					<th class="text-center"></th>
					<th width="200px" style="text-align: end;">Thành tiền</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$stt = 0;
				$total = 0;
				foreach ($data as $row) :
					$product = $this->Mproduct->product_detail($row['productid']);		?>
					<tr>
					<tr class="invoice-items">
					<tr>
						<td colspan="4" style="padding: 10px 0px;"><?php echo $product['name']; ?></td>

					</tr>

					<td>

						<?php if ($row['sale'] > 0) : ?>
							<p><?php echo (number_format($row['price_sale'])); ?> đ</p>
							<p><?php echo (number_format($row['price'])); ?> đ</p>
						<?php else : ?>
							<?php echo number_format($row['price']); ?> đ
						<?php endif; ?>
					</td>
					<td class="text-center">x<?php echo $row['count']; ?></td>
					<td></td>
					<td style="text-align: end;"><?php
													$price = $row['price'] * $row['count'];
													echo number_format($price);
													$total += $price;
													$price_ship = $order['price_ship'];;
													$coupon = $order['coupon'];
													?> đ</td>
					</tr>

				<?php endforeach; ?>

			</tbody>
		</table>
		<hr style="border: 1px dashed rgb(131, 131, 131); margin: 10px auto">
		<table>
			<thead>
				<tr>
					<td><b>Thành tiền đơn hàng:</b> </td>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<td style="text-align: right;"><?php echo number_format($total); ?> đ</td>
				</tr>

				<?php
				if ($coupon != 0) {
					echo '
												<tr>
					<td><b>Mã giảm giá:</b> </td>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<td style="text-align: right;">' . number_format($coupon) . ' đ</td>
				</tr>
												';
				}
				?>
				<tr>
					<td><b>Phí vận chuyển:</b> </td>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<td style="text-align: right;"><?php echo number_format($price_ship); ?> đ</td>
				</tr>
				<tr>
					<th>Tổng tiền thanh toán: </th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<th style="text-align: right;"><?php echo number_format($total + $price_ship - $coupon); ?> đ</th>
				</tr>
				<tr>
					<th>Phương thức thanh toán: </th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<td style="text-align: right;"><?php echo $order['payment']; ?></td>
				</tr>
				<tr>
					<th>Ghi chú: </th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<td style="text-align: right;"><?php echo $order['notes']; ?></td>
				</tr>
			</thead>

		</table>
		<div style="font-size: 11px;text-align:center;margin-top:50px;">
			<p><i>Xin cảm ơn quý khách, hạn gặp lại !</i></p>
			<p><i>Mọi chi tiết thắc mắc xin vui lòng liên hệ về hotline: 0768484671</i></p>
			<p><i>396 - 398 Nguyễn Kiệm, P. 3, Q. Phú Nhuận, HCM</i></p>
			
			<p>Thiết kế bởi - <span>Võ Trường</span></p>

			<div style="font-size: 11px;text-align:center;margin-top:30px;">
				<span style="margin-right: auto;">
					<p style="margin-bottom:0px"><strong>Hangchinhhieu.vn</strong></p>
				</span>

			</div>
		</div>
		<style>
			* {
				box-sizing: border-box;
				font-family: 'Inter', sans-serif;
			}

			@import url('https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap');

			.table-bordered td,
			.table-bordered th {
				border: 1px solid #ddd;
				padding: 10px;
				word-break: break-all;
			}

			.h4-14 h4 {
				font-size: 12px;
				margin-top: 0;
				margin-bottom: 5px;
			}

			.img {
				margin-left: "auto";
				margin-top: "auto";
				height: 30px;
			}

			pre,
			p {
				/* width: 99%; */
				/* overflow: auto; */
				/* bpicklist: 1px solid #aaa; */
				padding: 0;
				margin: 0;
				line-height: 23px;
				margin-bottom: 3px;
			}

			table {
				width: 100%;
				border-collapse: collapse;
				padding: 1px;
			}

			.hm-p p {
				text-align: left;
				padding: 1px;
				padding: 5px 4px;
			}

			td,
			th {
				text-align: left;
				padding: 5px 0px;
				font-size: 11px;
			}

			.table-b td,
			.table-b th {
				border: 1px solid #ddd;
			}

			th {
				/* background-color: #ddd; */
			}

			.hm-p td,
			.hm-p th {
				padding: 3px 0px;
			}

			.cropped {
				float: right;
				margin-bottom: 20px;
				height: 100px;
				/* height of container */
				overflow: hidden;
			}

			.cropped img {
				width: 400px;
				margin: 8px 0px 0px 80px;
			}

			.main-pd-wrapper {
				background-color: #fff;
				border-radius: 10px;
				padding: 15px;
			}

			.table-bordered td,
			.table-bordered th {
				border: 1px solid #ddd;
				padding: 10px;
				font-size: 14px;
			}

			.invoice-items {
				font-size: 14px;
				border-top: 1px dashed #ddd;
			}
		</style>
	</form>

</section>
<script>
	function myPrint(detailorder) {
		var printdata = document.getElementById(detailorder);
		newwin = window.open("");
		newwin.document.write(printdata.outerHTML);
		newwin.print();
		newwin.close();
	}
</script>