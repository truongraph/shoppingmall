<?php echo form_open_multipart('admin/coupon/update/'.$row['id']); ?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Mã giảm giá</a></li>
				<li class="breadcrumb-item active" aria-current="page">Chỉnh sửa mã giảm</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/coupon/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Chỉnh sửa mã giãm
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu chỉnh sửa
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
									<input type="text" class="form-control" name="code" style="width:100%" placeholder="Mã giảm giá" value="<?php echo $row['code'] ?>">
									<div class="error" id="password_error"><?php echo form_error('code') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Số tiền giảm giá</label>
									<input type="number" class="form-control" name="discount" style="width:100%" placeholder="Số tiền giảm giá" value="<?php echo $row['discount'] ?>">
									<div class="error" id="password_error"><?php echo form_error('discount') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Giới hạn số lần nhập</label>
									<input type="number" class="form-control" name="limit_number" style="width:100%" placeholder="Giới hạn số lần nhập" value="<?php echo $row['limit_number'] ?>">
									<div class="error" id="password_error"><?php echo form_error('limit_number') ?></div>
								</div>
							</div>
						
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Số tiền đơn hàng tối thiểu được áp dụng</label>
									<input type="number" class="form-control" name="payment_limit" style="width:100%" placeholder="Đơn hàng tối thiểu được áp dụng" value="<?php echo $row['payment_limit'] ?>">
									<div class="error" id="password_error"><?php echo form_error('payment_limit') ?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Số lần đã nhập</label>
									<input type="number" class="form-control" name="number_used" style="width:100%" value="<?php echo $row['number_used'] ?>" disabled>
									<div class="error" id="password_error"><?php echo form_error('number_used')?></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
								<?php $number_rest = $row['limit_number'] - $row['number_used']
									?>
									<label for="validationCustom01" class="form-label">Số lần còn lại</label>
									<input type="text" class="form-control" style="width:100%" placeholder="Số lần giới hạn nhập" value="<?php echo  $number_rest ?>" disabled>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Ngày hết hạn</label>
									<input type="text" class="form-control" id="datepicker" autocomplete="off" name="expiration_date" placeholder="Ngày hết hạn" value="<?php echo date("d/m/Y", strtotime($row['expiration_date']));  ?>">
								</div>
							</div>
							<div class="col-lg-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Trạng thái</label>
									<select name="status" id="statuscontent" class="form-control form-select" autocomplete="off" data-select>
									<option value="1" <?php if($row['status'] == 1) {echo 'selected';}?> >Có hiệu lực</option>
										<option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Hết hiệu lục</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mô tả ngắn</label>
									<input type="text" class="form-control" name="description" style="width:100%" placeholder="Mô tả ngắn" value="<?php echo $row['description'] ?>">
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