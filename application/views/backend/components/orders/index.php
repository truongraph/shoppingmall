<div class="container-fluid">

	<div class="d-flex align-items-baseline justify-content-between mb-5">

		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item active" aria-current="page">Danh sách đơn hàng</li>
			</ol>
		</nav>
	</div>
	<?php if ($this->session->flashdata('success')) : ?>
		<div class="alert text-bg-success-soft" role="alert">
			<?php echo $this->session->flashdata('success'); ?>

		</div>
	<?php endif; ?>
	<?php if ($this->session->flashdata('error')) : ?>
		<div class="alert alert-error">
			<?php echo $this->session->flashdata('error'); ?>
		</div>
	<?php endif; ?>
	<div class="row">
		<div class="col d-flex">
			<!-- Card -->
			<div class="card border-0 flex-fill w-100">
				<div class="card-header border-0">

					<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">

						<!-- Title -->
						<h2 class="card-header-title h4 text-uppercase">
							Danh sách đơn hàng
						</h2>
						<!-- Button -->
						<a type="button" class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-outline-danger ms-md-4" href="admin/orders/recyclebin" role="button">
							Thùng rác <small>(<?php $total = $this->Morders->orders_trash_count();
												echo $total; ?>)</small>
						</a>
					</div>

				</div>

				<div class="table-responsive">
					<table class="table align-middle table-hover table-bordered">
						<thead class="thead-light">
							<tr>
								<th>STT</th>
								<th width="20px">Mã đơn</th>
								<th>Khách hàng</th>
								<th>Điện thoại</th>
								<th>Tổng tiền đơn hàng</th>
								<th>Ngày tạo hóa đơn</th>
								<th>Trạng thái</th>
								<th colspan="2">Hành động</th>
							</tr>
						</thead>

						<tbody class="list">
							<?php $stt = 0; foreach ($list as $val) :
								$name = $this->Mcustomer->customer_detail($val['customerid']);
							?>
								<tr>
								<td><?php $stt += 1;
												echo $stt; ?></td>
									<td><a href="<?php echo base_url() ?>admin/orders/detail/<?php echo $val['id'] ?>" class="text-danger fw-bold text-decoration-underline">#<?php echo $val['orderCode'] ?></a></td>
									<td><?php echo $val['fullname']; ?></td>
									<td><?php echo $val['phone']; ?></td>
									<td><?php echo number_format($val['money']); ?> đ</td>
									<td><?php echo date("d/m/Y  h:i:s A", strtotime($val['orderdate']));  ?></td>
									<td>
										<?php
										switch ($val['status']) {
											case '0':
												echo '<span class="badge text-bg-secondary"><i class="bx bx-loader-circle"></i> Chờ xác nhận</span>';
												break;
											case '1':
												echo '<span class="badge text-bg-primary"><i class="bx bxs-truck"></i> Đang giao hàng</span>';
												break;
											case '2':
												echo '<span class="badge text-bg-success"><i class="bx bx-check-circle" ></i> Đã giao hàng</span>';
												break;
											case '3':
												echo '<span class="badge text-bg-danger"><i class="bx bx-minus-circle"></i> Khách hàng đã hủy</span>';
												break;
											case '4':
												echo '<span class="badge text-bg-warning"><i class="bx bx-minus-circle"></i> Nhân viên đã hủy</span>';
												break;
										}
										?>
									</td>
		
									<td>
										<!-- Dropdown -->
										<div class="dropdown float-end">
											<a href="javascript: void(0);" class="dropdown-toggle no-arrow d-flex text-secondary" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" height="14" width="14">
													<g>
														<circle cx="12" cy="3.25" r="3.25" style="fill: currentColor" />
														<circle cx="12" cy="12" r="3.25" style="fill: currentColor" />
														<circle cx="12" cy="20.75" r="3.25" style="fill: currentColor" />
													</g>
												</svg>
											</a>
											<ul class="dropdown-menu">
												<li>
														<?php if ($val['status'] == 1) : ?>
															<a class="dropdown-item" href="<?php echo base_url() ?>admin/orders/status/<?php echo $val['id'] ?>" onclick="return confirm('Xác nhận đơn hàng đã giao và thanh toán thành công ?')" role="button">
															<i class='bx bx-check-square' ></i>	Xác nhận thanh toán
															</a>
															<?php endif; ?>
														<?php if ($val['status'] == 0) : ?>
															<a class="dropdown-item" href="<?php echo base_url() ?>admin/orders/status/<?php echo $val['id'] ?>" onclick="return confirm('Xác nhận gói hàng và chuẩn bị giao hàng ?')" role="button">
															<i class='bx bx-check-shield' ></i> Xác nhận đơn hàng
															</a>
														<?php endif; ?>
												</li>
												<li>
												<?php if ($val['status'] == 0 || $val['status'] == 1) : ?>
															<a class="dropdown-item" href="<?php echo base_url() ?>admin/orders/cancelorder/<?php echo $val['id'] ?>" onclick="return confirm('Xác nhận hủy đơn hàng này ?')" role="button">
															<i class='bx bx-minus-circle'></i> Hủy đơn hàng
															</a>
														<?php endif; ?>
												</li>
												<li>
													<a class="dropdown-item" href="<?php echo base_url() ?>admin/orders/detail/<?php echo $val['id'] ?>">
													<i class='bx bx-show' ></i> Xem đơn hàng
													</a>
												</li>
												<li>
													<hr class="dropdown-divider">
												</li>
												<li>
													<a class="dropdown-item text-danger" href="<?php echo base_url() ?>admin/orders/trash/<?php echo $val['id'] ?>"  onclick="return confirm('Xác nhận lưu đơn hàng này ?')" role = "button">
														<i class='bx bx-trash'></i> Bỏ vào thùng rác
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div> <!-- / .table-responsive -->
				<div class="card-footer">
					<!-- Pagination -->
					<ul class="pagination justify-content-end list-pagination mb-0">
						<?php echo $strphantrang ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>