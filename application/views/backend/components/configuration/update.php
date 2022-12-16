<?php echo form_open_multipart('admin/configuration/update/'); ?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item active" aria-current="page">Cấu hình hệ thống</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/configuration/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Cấu hình hệ thống
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu
							</button>
							<!-- Button -->
							<a type="button" class="btn btn-info ms-md-4" href="admin" role="button">
								Trang chủ
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-4">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mail smtp <span class="maudo">(*)</span></label>
									<input type="email" class="form-control" name="mail_smtp" style="width:100%" placeholder="Mail cấu hình" value="<?php echo $row['mail_smtp'] ?>">
								</div>
							</div>
							<div class="col-lg-4">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Password mail smtp</label>
									<input type="password" class="form-control" name="mail_smtp_password" style="width:100%" placeholder=" Password Mail cấu hình" value="<?php echo $row['mail_smtp_password'] ?>">
								</div>
							</div>
							<div class="col-lg-4">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mail nhận thông tin đơn hàng</label>
									<input type="text" class="form-control" name="mail_noreply" style="width:100%" placeholder="Mail nhận thông tin đơn hàng" value="<?php echo $row['mail_noreply'] ?>">
								</div>
							</div>
							<div class="col-lg-4">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Phí ship <span class = "maudo">(*)</span></label>
									<input type="number" class="form-control" name="priceShip" style="width:100%" placeholder="Phí sip" value="<?php echo $row['priceShip'] ?>">
								</div>
							</div>
							<div class="col-lg-4">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Tiêu đề <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="title" style="width:100%" placeholder=" Tieu đề" value="<?php echo $row['title'] ?>">
								</div>
							</div>
							<div class="col-lg-4">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mô tả <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="description" style="width:100%" placeholder="Mô tả" value="<?php echo $row['description'] ?>">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>