<?php echo form_open_multipart('admin/contact/detail/' . $row['id']); ?>

<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Phản hồi khách hàng</a></li>
				<li class="breadcrumb-item active" aria-current="page">Chi tiết phản hồi</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/content/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Chi tiết phản hồi
							</h2>
							<!-- Button -->
							<a type="button" class="btn btn-outline-danger list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 ms-md-4" href="admin/contact" role="button">
								Trở về
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Họ và tên</label>
											<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['fullname'] ?></output>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Số điện thoại</label>
											<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['phone'] ?></output>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Email</label>
											<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['email'] ?></output>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Tiêu đề thư</label>
											<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['title'] ?></output>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Nội dung mail</label>
									<output type="text" class="form-control" name="SDT" style="height:125px"><?php echo $row['content'] ?></output>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>