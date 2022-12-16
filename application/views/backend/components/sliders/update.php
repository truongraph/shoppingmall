<?php echo form_open_multipart('admin/sliders/update/'.$row['id']); ?>
<div class="container-fluid">
    <div class="d-flex align-items-baseline justify-content-between mb-5">
        <!-- Breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
                <li class="breadcrumb-item"><a href="javascript: void(0);">Quản lý slider</a></li>
                <li class="breadcrumb-item active" aria-current="page">Chỉnh sửa slider</li>
            </ol>
        </nav>
    </div>
    <form action="<?php echo base_url() ?>admin/sliders/update.html" enctype="multipart/form-data" method="post" accept-charset="utf-8">
        <div class="row">
            <div class="col d-flex">
                <!-- Card -->
                <div class="card border-0 flex-fill w-100">
                    <div class="card-header border-0">

                        <div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
                            <!-- Title -->
                            <h2 class="card-header-title h4 text-uppercase">
                               Chỉnh sửa slider
                            </h2>
                            <!-- Button -->
                            <button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
                                Lưu chỉnh sửa
                            </button>
                            <!-- Button -->
                            <a type="button" class="btn btn-outline-danger ms-md-4" href="admin/sliders" role="button">
                                Hủy bỏ
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Tên sliders<span class="maudo">(*)</span></label>
                                    <input type="text" name="name" placeholder="Tên sliders" class="form-control" value="<?php echo $row['name'] ?>">
                                    <div class="error" id="password_error"><?php echo form_error('name') ?></div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Liên kết<span class="maudo">(*)</span></label>
                                    <input type="text" name="link" class="form-control" placeholder="http://link.com" value="<?php echo $row['link'] ?>">
                                <div class="error" id="password_error"><?php echo form_error('link')?></div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                            <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Trạng thái</label>
                                    <select name="status" id="statuscontent" class="form-control form-select" autocomplete="off" data-select>
                                        <option value="1" <?php if($row['status'] == 1) {echo 'selected';}?>>Công khai</option>
                                        <option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Bản nháp</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-8">
                            <div class="mb-4">
								<label for="formFile" class="form-label">Hình ảnh đại diện</label>
								<input class="form-control" type="file" id="image_list" name="img" style="width: 100%" required>
                                <div class="error" id="password_error"><?php echo form_error('img')?></div>
								<img class="uploadimg" id="uploadedImage" src="public/images/banners/<?php echo $row['img'] ?>" alt="Uploaded Image">
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