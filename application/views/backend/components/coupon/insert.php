<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Mã giảm giá</a></li>
				<li class="breadcrumb-item active" aria-current="page">Thêm mới mã giảm</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/coupon/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Thêm mới mã giãm
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu mã giảm
							</button>
							<!-- Button -->
							<a type="button" class="btn btn-outline-danger ms-md-4" href="admin/coupon" role="button">
								Hủy bỏ
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mã giảm giá</label>
									<input type="text" class="form-control" name="code" style="width:100%" placeholder="Mã giảm giá">
									<div class="error" id="password_error"><?php echo form_error('code') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Số tiền giảm giá</label>
									<input type="number" class="form-control" name="discount" style="width:100%" placeholder="Số tiền giảm giá">
									<div class="error" id="password_error"><?php echo form_error('discount') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Giới hạn số lần nhập</label>
									<input type="number" class="form-control" name="limit_number" style="width:100%" placeholder="Giới hạn số lần nhập">
									<div class="error" id="password_error"><?php echo form_error('limit_number') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Số tiền đơn hàng tối thiểu được áp dụng</label>
									<input type="number" class="form-control" name="payment_limit" style="width:100%" placeholder="Đơn hàng tối thiểu được áp dụng">
									<div class="error" id="password_error"><?php echo form_error('payment_limit') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Ngày hết hạn</label>
									<input type="text" class="form-control" id="datepicker" name="expiration_date" autocomplete="off" placeholder="Ngày hết hạn">
								</div>
							</div>
							<div class="col-md-6">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mô tả ngắn</label>
									<input type="text" class="form-control" name="description" style="width:100%" placeholder="Mô tả ngắn">
								</div>
							</div>
							<div class="col-lg-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Trạng thái</label>
									<select name="status" id="statuscontent" class="form-control form-select" autocomplete="off" data-select>
									<option value="1"  >Có hiệu lực</option>
										<option value="0">Hết hiệu lục</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat: "dd/mm/yy",
			duration: "fast"
		});
	});
	
</script>
<script>
	$(document).ready(function() {
		$('#statuscontent').select2({
			width: "100%",
			placeholder: "Trạng thái",
			"language": {
				"noResults": () => "Không tìm thấy dữ liệu"

			}
		});
	});
</script>