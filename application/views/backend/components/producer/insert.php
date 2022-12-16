<?php echo form_open_multipart('admin/producer/insert'); ?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Nhà cung cấp</a></li>
				<li class="breadcrumb-item active" aria-current="page">Thêm mới nhà cung cấp</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/producer/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Thêm mới nhà cung cấp
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu mới
							</button>
							<!-- Button -->
							<a type="button" class="btn btn-outline-danger ms-md-4" href="admin/producer" role="button">
								Hủy bỏ
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Tên nhà cung cấp <span class = "maudo">(*)</label>
									<input type="text" class="form-control" name="name" placeholder="Tên nhà cung cấp">
									<div class="error" id="password_error" style="color: red"><?php echo form_error('name')?></div>
								</div>
							</div>
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mã code <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="code" placeholder="Mã code">
									<div class="error" id="password_error" style="color: red"><?php echo form_error('code')?></div>
								</div>
							</div>
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Từ khóa <span class = "maudo">(*)</span> </label> <em>Vd: thegioididong</em>
									<input type="text" class="form-control" name="keyword" placeholder="Từ khóa">
									<div class="error" id="password_error" style="color: red"><?php echo form_error('keyword')?></div>
								</div>
							</div>
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Trạng thái</label>
									<select name="status" id="statusproducer" class="form-control form-select" autocomplete="off" data-select>
										<option value="1">Công khai</option>
										<option value="0">Bản nháp</option>
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
<script type="text/javascript">
	    $(document).ready(function() {
        $('#statusproducer').select2({
            width: "100%",
            placeholder: "Trạng thái",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });

</script>