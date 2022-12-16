<?php echo form_open_multipart('admin/product/insert'); ?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Quản lý sản phẩm</a></li>
				<li class="breadcrumb-item active" aria-current="page">Thêm mới sản phẩm</li>
			</ol>
		</nav>
	</div>
	<form action="<?php echo base_url() ?>admin/product/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<div class="row">
			<div class="col d-flex">
				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-header border-0">

						<div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">
								Thêm mới sản phẩm
							</h2>
							<!-- Button -->
							<button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu sản phẩm
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
									<label for="validationCustom01" class="form-label">Tên sản phẩm <span class="maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" style="width:100%" placeholder="Tên sản phẩm">
									<div class="error" id="password_error"><?php echo form_error('name') ?></div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="mb-4">
											<label for="validationCustom01" class="form-label">Mô tả ngắn</label>
											<textarea name="sortDesc" class="form-control" style="height: 124px;"></textarea>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-6">
												<div class="mb-4">
													<label for="validationCustom01" class="form-label">Giá gốc sản phẩm <span class="maudo">(*)</span></label>
													<input name="price_root" id="oldprice" class="form-control numberformat" data-type="currency" type="number" value="0" min="0" step="1" max="1000000000">
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-4">
													<label for="validationCustom01" class="form-label"><span class="maudo">%</span> Khuyến mãi </label>
													<input name="sale_of" id="discount" class="form-control" type="number">
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-4">
													<label for="validationCustom01" class="form-label">Giá bán sản phẩm <span class="maudo">(*)</span></label>
													<input name="price_buy" id="newprice" class="form-control numberformat" data-type="currency" type="number" min="0" step="1" max="1000000000">
													<div class="error" id="password_error"><?php echo form_error('price_buy') ?></div>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-4">
													<label for="validationCustom01" class="form-label">Số lượng tồn kho </label>
													<input name="number" class="form-control" type="number" value="1" min="1" step="1" max="1000">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mô tả sản phẩm </label>
									<textarea name="detail" id="detail" class="form-control"></textarea>
									<script>
										CKEDITOR.replace('detail');
									</script>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mã sản phẩm <span class="maudo">(*)</span></label>
									<input type="text" class="form-control" name="sku" style="width:100%" placeholder="Mã sản phẩm">
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Trạng thái </label>
									<select name="status" id="statusproduct" class="form-control">
										<option value="1">Xuất bản</option>
										<option value="0">Bản nháp</option>
									</select>
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Danh mục sản phẩm <span class="maudo">(*)</span></label>
									<select id="categoryproduct" name="catid" class="form-control">
										<?php
										$list = $this->Mcategory->category_list();
										$option_parentid = "";
										foreach ($list as $r) {
											$option_parentid .= "<option value='" . $r['id'] . "'>" . $r['name'] . "</option>";
										}
										echo $option_parentid;
										?>
									</select>
									<div class="error" id="password_error"><?php echo form_error('catid') ?></div>
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Nhà cung cấp <span class="maudo">(*)</span></label>
									<select id="producerproduct" name="producer" class="form-control">
										<?php
										$list = $this->Mproducer->producer_list();
										$option_parentid = "";
										foreach ($list as $r) {
											$option_parentid .= "<option value='" . $r['id'] . "'>" . $r['name'] . "</option>";
										}
										echo $option_parentid;
										?>
									</select>
									<div class="error" id="password_error"><?php echo form_error('producer') ?></div>
								</div>
								<div class="mb-4">
									<label for="formFile" class="form-label">Ảnh đại diện sản phẩm</label>
									<input class="form-control" type="file" id="image_list" name="img" style="width: 100%" required>
									<img class="uploadimgproduct" id="uploadedImage" src="<?php echo base_url() ?>public/images/admin/none.webp" alt="Uploaded Image">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="mb-4">
									<label for="formFile" class="form-label">Album hình ảnh sản phẩm</label>
									<div class="upload__box">
										<div class="upload__btn-box">
											<label class="upload__btn">
												<p>Thêm ảnh vào thư viện sản phẩm</p>
												<input type="file" id="image_list" name="image_list[]" multiple required data-max_length="20" class="upload__inputfile">
											</label>
										</div>
										<div class="upload__img-wrap"></div>
									</div>
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
	//Bắt % khuyến mãi -> giá khuyến mãi
	$(document).on("change keyup blur", "#discount", function() {
		var main = $('#oldprice').val();
		var disc = $('#discount').val();
		var dec = (disc / 100).toFixed(2);
		var mult = main * dec;
		var discont = main - mult;
		$('#newprice').val(discont);
	});
	//Bắt giá cũ -> giá khuyến mãi
	$(document).on("change keyup blur", "#oldprice", function() {
		var main = $('#oldprice').val();
		var disc = $('#discount').val();
		var dec = (disc / 100).toFixed(2);
		var mult = main * dec;
		var discont = main - mult;
		$('#newprice').val(discont);
	});

	//Select Category
	$(document).ready(function() {
		$('#categoryproduct').select2({
			width: "100%",
			allowClear: true,
			placeholder: "Chọn danh mục sản phẩm",
			"language": {
				"noResults": () => "Không tìm thấy dữ liệu"

			}
		});
	});
	$('#categoryproduct').val(null);

	//Select Producer
	$(document).ready(function() {
		$('#producerproduct').select2({
			width: "100%",
			allowClear: true,
			placeholder: "Chọn nhà cung cấp",
			"language": {
				"noResults": () => "Không tìm thấy dữ liệu"

			}
		});
	});
	$('#producerproduct').val(null);

	//Select Status
	$(document).ready(function() {
		$('#statusproduct').select2({
			width: "100%",
			placeholder: "Chọn trạng thái",
			"language": {
				"noResults": () => "Không tìm thấy dữ liệu"

			}
		});
	});

	//Xem trước ảnh đại diện
	document.getElementById('image_list').addEventListener('change', function() {
		if (this.files[0]) {
			var picture = new FileReader();
			picture.readAsDataURL(this.files[0]);
			picture.addEventListener('load', function(event) {
				document.getElementById('uploadedImage').setAttribute('src', event.target.result);
				document.getElementById('uploadedImage').style.display = 'block';
			});
		}
	});
</script>
<script>
	jQuery(document).ready(function() {
		ImgUpload();
	});

	function ImgUpload() {
		var imgWrap = "";
		var imgArray = [];

		$('.upload__inputfile').each(function() {
			$(this).on('change', function(e) {
				imgWrap = $(this).closest('.upload__box').find('.upload__img-wrap');
				var maxLength = $(this).attr('data-max_length');

				var files = e.target.files;
				var filesArr = Array.prototype.slice.call(files);
				var iterator = 0;
				filesArr.forEach(function(f, index) {

					if (!f.type.match('image.*')) {
						return;
					}

					if (imgArray.length > maxLength) {
						return false
					} else {
						var len = 0;
						for (var i = 0; i < imgArray.length; i++) {
							if (imgArray[i] !== undefined) {
								len++;
							}
						}
						if (len > maxLength) {
							return false;
						} else {
							imgArray.push(f);

							var reader = new FileReader();
							reader.onload = function(e) {
								var html = "<div class='upload__img-box'><div style='background-image: url(" + e.target.result + ")' data-number='" + $(".upload__img-close").length + "' data-file='" + f.name + "' class='img-bg'><div class='upload__img-close'></div></div></div>";
								imgWrap.append(html);
								iterator++;
							}
							reader.readAsDataURL(f);
						}
					}
				});
			});
		});

		$('body').on('click', ".upload__img-close", function(e) {
			var file = $(this).parent().data("file");
			for (var i = 0; i < imgArray.length; i++) {
				if (imgArray[i].name === file) {
					imgArray.splice(i, 1);
					break;
				}
			}
			$(this).parent().parent().remove();
		});
	}
</script>