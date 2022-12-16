<div class="container-fluid">

	<div class="d-flex align-items-baseline justify-content-between mb-5">


		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item">Danh mục sản phẩm</li>
				<li class="breadcrumb-item active" aria-current="page">Thùng rác</li>
			</ol>
		</nav>
	</div>
	<?php if ($this->session->flashdata('success')) : ?>
		<div class="row">
			<div class="col-lg-12">
				<div class="alert text-bg-success-soft" role="alert">
					<?php echo $this->session->flashdata('success'); ?>

				</div>
			</div>
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
							Thùng rác
						</h2>
						<!-- Button -->
						<a type="button" class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-primary ms-md-4" href="<?php echo base_url() ?>/admin/category/insert" role="button">
							Tạo mới danh mục sản phẩm
						</a>
						<!-- Button -->
						<a type="button" class="btn btn-outline-danger ms-md-4" href="admin/category" role="button">
							Trở về
						</a>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table align-middle table-hover table-bordered">
						<thead class="thead-light">
							<tr>
							<th>STT</th>
								<th>Tên loại sản phẩm</th>
								<th>Sản phẩm đang có</th>
								<th>Danh mục cha</th>
								<th>Ngày tạo</th>
								<th>Trạng thái</th>
								<th colspan="2">Thao tác</th>
							</tr>
						</thead>

						<tbody class="list">
							<?php $stt = 0; foreach ($list as $row) : ?>
								<tr>
								<td><?php $stt += 1;
												echo $stt; ?></td>
									<td>
										<?php echo $row['name'] ?>
									</td>
									<td class="name"><?php $total = $this->Mproduct->product_count_parentid($row['id']);
														echo $total; ?>
									</td>
									<td>
										<?php
										$catid = $this->Mcategory->category_parentid($row['id']);
										$name = $this->Mcategory->category_name_parent($catid);
										if ($catid == 0) {
											echo '';
										} else {
											echo $name;
										}
										?>
									</td>
									<td class="created"><?php echo date("d/m/Y  h:i:s A", strtotime($row['created_at']));  ?></td>
									<td class="status">
										<?php if ($row['status'] == 1) : ?>
											<span class="legend-circle bg-success"></span> Kích hoạt
										<?php else : ?>
											<span class="legend-circle bg-warning"></span> Ngừng kích hoạt
										<?php endif; ?>
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
													<a class="dropdown-item" href="admin/category/restore/<?php echo $row['id'] ?>" role = "button">
													<i class='bx bx-revision'></i> Khôi phục danh mục
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
													<a class="dropdown-item text-danger" href="admin/category/delete/'.$row['id'].'" role = "button">
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