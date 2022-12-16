<?php echo form_open_multipart('admin/category/update/' . $row['id']); ?>
<?php
$list = $this->Mcategory->category_list();
$option_parentid = "";
foreach ($list as $r) {
	if ($r['id'] == $row['parentid']) {
		$option_parentid .= "<option selected value='" . $r['id'] . "'>" . $r['name'] . "</option>";
	} else {
		$option_parentid .= "<option value='" . $r['id'] . "'>" . $r['name'] . "</option>";
	}
}

$option_orders = "";
$listtype = $this->Mcategory->category_list();
foreach ($listtype as $val) {

	if (is_numeric($row['orders'])) {
		if ($val['orders'] == ($row['orders'] - 1)) {
			$option_orders .= "<option selected value='" . ($val['orders'] + 1) . "'>Đứng sau: ( " . $row['name'] . " )</option>";
		} else {
			if (is_numeric($val['orders'])) {
				$option_orders .= "<option value='" . ($val['orders'] + 1) . "'>Đứng sau: ( " . $row['name'] . " )</option>";
			} else {
				echo "";
			}
		}
	} else {
		echo "";
	}
}
?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Danh sách danh mục</a></li>
				<li class="breadcrumb-item active" aria-current="page">Chỉnh sửa danh mục</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/category/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Chỉnh sửa danh mục sản phẩm
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu chỉnh sửa
							</button>
							<!-- Button -->
							<a type="button" class="btn btn-outline-danger ms-md-4" href="admin/category" role="button">
								Hủy bỏ
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Tên danh mục <span class="maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" placeholder="Tên danh mục" value="<?php echo $row['name'] ?>">
									<div class="error" id="password_error"><?php echo form_error('name') ?></div>
								</div>
							</div>
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Danh mục cha <span class = "maudo">(*)</span></label>
									<select id="parentcat" name="parentid" class="form-control">
									<option value = "0">Chính</option>
									<?php echo $option_parentid;?>
								</select>
								</div>
							</div>
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Vị trí danh mục <span class = "maudo">(*)</span></label>
									<select id="orderscat" name="orders" class="form-control">
										<option value = "0">Đứng đầu</option>
											<?php  
												echo $option_orders;
											?>
									</select>
								</div>
							</div>
							<div class="col-lg-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Trạng thái </label>
									<select name="status" id="statuscat" class="form-control">
										<option value="1" <?php if($row['status'] == 1) {echo 'selected';}?> >Đang kinh doanh</option>
										<option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Ngưng kinh doanh</option>
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
        $('#parentcat').select2({
            width: "100%",
            placeholder: "Danh mục cha",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });


	$(document).ready(function() {
        $('#orderscat').select2({
            width: "100%",
            placeholder: "Vị trí",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });

	$(document).ready(function() {
        $('#statuscat').select2({
            width: "100%",
            placeholder: "Trạng thái",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });

</script>