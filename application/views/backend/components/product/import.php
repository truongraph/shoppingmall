<?php echo form_open_multipart('admin/product/import/' . $row['id']); ?>
<?php
$list = $this->Mcategory->category_list();
$option_parentid = "";
foreach ($list as $r) {
	if ($r['id'] == $row['catid']) {
		$option_parentid .= "<option selected value='" . $r['id'] . "'>" . $r['name'] . "</option>";
	} else {
		$option_parentid .= "<option value='" . $r['id'] . "'>" . $r['name'] . "</option>";
	}
}
?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Quản lý sản phẩm</a></li>
				<li class="breadcrumb-item active" aria-current="page">Nhập thêm hàng</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/product/import.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Nhập thêm hàng cho sản phẩm
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Cập nhật số lượng
							</button>
							<!-- Button -->
							<a type="button" class="btn btn-outline-danger ms-md-4" href="admin/product" role="button">
								Hủy bỏ
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-9">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Tên sản phẩm </label>
									<input type="text" class="form-control" disabled name="name" style="width:100%" placeholder="Tên sản phẩm" value="<?php echo $row['name'] ?>">
									<div class="error" id="password_error"><?php echo form_error('name') ?></div>
								</div>
								<div class="row">
									<div class="col-lg-3">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Số lượng tồn kho </label>
											<input type="number" class="form-control" name="number" placeholder="Số lượng" min="0" max="10000" value="<?php echo $row['number'] ?>" disabled>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Số lượng đã bán</label>
											<input type="number" class="form-control" name="number" placeholder="Số lượng" min="0" max="10000" value="<?php echo $row['number_buy'] ?>" disabled>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Số lượng còn lại</label>
											<input type="number" class="form-control" name="number" placeholder="Số lượng" min="0" max="10000" value="<?php echo $row['number'] - $row['number_buy'] ?>" disabled>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Nhập thêm số lượng <span class = "maudo">(*)</span></label>
											<input type="number" class="form-control" name="number" style="width:100%" placeholder="Số lượng" min="0" max="10000">
											<div class="error" id="password_error"><?php echo form_error('number') ?></div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mã sản phẩm </label>
									<input type="text" class="form-control" disabled name="sku" style="width:100%" placeholder="Mã sản phẩm" value="<?php echo $row['sku'] ?>">
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Danh mục sản phẩm </label>
									<select name="catid" class="form-control" disabled>
										<option value="0">Không có danh mục</option>
										<?php
										echo $option_parentid;
										?>
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