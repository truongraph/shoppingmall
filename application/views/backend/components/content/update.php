<?php echo form_open_multipart('admin/content/update/'.$row['id']); ?>
<div class="container-fluid">
	<div class="d-flex align-items-baseline justify-content-between mb-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
				<li class="breadcrumb-item"><a href="javascript: void(0);">Danh sách bài viết</a></li>
				<li class="breadcrumb-item active" aria-current="page">Chỉnh sửa bài viết</li>
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
								Chỉnh sửa bài viết
							</h2>
							<!-- Button -->
							<button  class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
								Lưu chỉnh sửa
							</button>
							<!-- Button -->
							<a type="button" class="btn btn-outline-danger ms-md-4" href="admin/content" role="button">
								Hủy bỏ
							</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-9">
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Tiêu đề bài viết</label>
									<input type="text" class="form-control" name="name" style="width:100%" placeholder="Tên bài viết" value="<?php echo $row['title'] ?>">
									<div class="error" id="password_error"><?php echo form_error('name') ?></div>
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Mô tả ngắn</label>
									<textarea name="introtext" class="form-control" placeholder="Mô tả ngắn" rows="2"><?php echo $row['introtext'] ?></textarea>
								</div>
								<div class="mb-4">
									<label for="validationCustom01" class="form-label">Chi tiết bài viết</label>
									<textarea name="fulltext" id="fulltext" class="form-control" ><?php echo $row['fulltext'] ?></textarea>
      								<script>CKEDITOR.replace('fulltext');</script>
								</div>
							</div>
							<div class="col-md-3">
							<div class="mb-4">
									<label for="validationCustom01" class="form-label">Trạng thái</label>
									<select name="status" id="statuscontent" class="form-control form-select" autocomplete="off" data-select>
										<option value="1" <?php if($row['status'] == 1) {echo 'selected';}?>>Công khai</option>
										<option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Bản nháp</option>
									</select>
								</div>
							<div class="mb-4">
								<label for="formFile" class="form-label">Hình ảnh đại diện</label>
								<input class="form-control" type="file" id="image_list" name="img">
								<img class="uploadimg" id="uploadedImage" src="public/images/posts/<?php echo $row['img'] ?>" alt="Uploaded Image">
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
		    $(document).ready(function() {
        $('#statuscontent').select2({
            width: "100%",
            placeholder: "Trạng thái",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });
	document.getElementById('image_list').addEventListener('change', function(){
  if (this.files[0] ) {
    var picture = new FileReader();
    picture.readAsDataURL(this.files[0]);
    picture.addEventListener('load', function(event) {
      document.getElementById('uploadedImage').setAttribute('src', event.target.result);
      document.getElementById('uploadedImage').style.display = 'block';
    });
  }
});
</script>