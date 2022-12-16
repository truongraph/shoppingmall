<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item">Phản hồi khách hàng</li>
				<li class="breadcrumb-item active" aria-current="page">Thùng rác</li>
			</ol>
		</nav>
	</div>
	<?php if ($this->session->flashdata('success')) : ?>
		<div class="alert text-bg-success-soft" role="alert">
			<?php echo $this->session->flashdata('success'); ?>
		</div>
	<?php endif; ?>
	<div class="row">
		<div class="col d-flex">
			<!-- Card -->
			<div class="card border-0 flex-fill w-100">
				<div class="card-header border-0">

					<div class="d-flex flex-column flex-md-row align-items-md-center">

						<!-- Title -->
						<h2 class="card-header-title h4 text-uppercase justify-content-start">
							Thùng rác
						</h2>
						<!-- Button -->
						<a type="button" class="btn btn-outline-danger list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0  ms-md-4 " href="<?php echo base_url() ?>admin/contact" role="button">
							Trở về
						</a>
					</div>

				</div>

				<!-- Table -->
				<div class="table-responsive">
					<table class="table align-middle table-hover table-bordered">
						<thead class="thead-light">
							<tr>
								<th style="width:20px">STT</th>
								<th>Tên</th>
								<th>Ngày gửi</th>
								<th>Địa chỉ mail</th>
								<th>Tiêu đề</th>
								<th class="w-150px">Hành động</th>
							</tr>
						</thead>

						<tbody class="list">
							<?php $stt = 0; foreach ($list as $row) : ?>
								<tr>
								<td><?php $stt += 1;
												echo $stt; ?></td>
									<td>
										<a href="<?php echo base_url() ?>admin/contact/detail/<?php echo $row['id'] ?>"><?php echo $row['fullname'] ?>
										</a>
									</td>
									<td><?php echo date("d/m/Y", strtotime($row['created_at']));  ?></td>
									<td><?php echo $row['email'] ?></td>
									<td><?php echo $row['title'] ?></td>
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
													<a class="dropdown-item" href="admin/contact/restore/<?php echo $row['id'] ?>" role = "button">
													<i class='bx bx-revision'></i> Khôi phục phản hồi
													</a>
												</li>
												<?php  
													$quyen='';
													if($user['role']==1){
														$quyen.='
														<li>
													<hr class="dropdown-divider">
												</li>
												<li>
													<a class="dropdown-item text-danger" href="admin/contact/delete/'.$row['id'].'" role = "button">
														<i class="bx bx-trash"></i> Xóa vĩnh viễn
													</a>
												</li>
														';

													}else{
														$quyen.='
														';
													}
													echo $quyen;
													?>
												
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