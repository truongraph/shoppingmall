<?php echo form_open_multipart('admin/useradmin/insert'); ?>
<div class="container-fluid">
    <div class="d-flex align-items-baseline justify-content-between mb-5">
        <!-- Breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
                <li class="breadcrumb-item"><a href="javascript: void(0);">Danh sách nhân viên</a></li>
                <li class="breadcrumb-item active" aria-current="page">Thêm mới nhân viên</li>
            </ol>
        </nav>
    </div>
    <form action="<?php echo base_url() ?>admin/useradmin/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
        <div class="row">
            <div class="col d-flex">
                <!-- Card -->
                <div class="card border-0 flex-fill w-100">
                    <div class="card-header border-0">

                        <div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
                            <!-- Title -->
                            <h2 class="card-header-title h4 text-uppercase">
                                Thêm mới nhân viên
                            </h2>
                            <!-- Button -->
                            <button class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0 btn btn-success ms-md-4" type="submit">
                                Lưu nhân viên
                            </button>
                            <!-- Button -->
                            <a type="button" class="btn btn-outline-danger ms-md-4" href="admin/useradmin" role="button">
                                Hủy bỏ
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Họ và tên<span class="maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="fullname">
                                    <div class="error" id="password_error" style="color: red;"><?php echo form_error('fullname') ?></div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Email<span class="maudo">(*)</span></label>
                                    <input type="email" class="form-control" name="email">
                                    <div class="error" id="password_error" style="color: red;"><?php echo form_error('email') ?></div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Số điện thoại<span class="maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="phone">
                                    <div class="error" id="password_error" style="color: red;"><?php echo form_error('phone') ?></div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Địa chỉ<span class="maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="address">
                                    <div class="error" id="password_error" style="color: red;"><?php echo form_error('address') ?></div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Tên đăng nhập <span class="maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="username" >
                                    <div class="error" id="password_error"  style="color: red;"><?php echo form_error('username')?></div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Mật khẩu <span class="maudo">(*)</span></label>
                                    <input type="password" class="form-control" name="password" >
                                    <div class="error" id="password_error"  style="color: red;"><?php echo form_error('password')?></div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                            <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Phân quyền user</label>
                                    <select name="role" id="roleadmin" class="form-control form-select" autocomplete="off" data-select>
                                    <?php  
                                                $list=$this->Muser->groupadmin_list();
                                                $option_parentid="";
                                                foreach ($list as $row) {
                                                    $option_parentid.="<option value='".$row['id']."'>".$row['name']."</option>";
                                                }
                                                echo $option_parentid;
                                            ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-3">
                            <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Trạng thái</label>
                                    <select name="status" id="statuscontent" class="form-control form-select" autocomplete="off" data-select>
                                        <option value="1">Kích hoạt</option>
                                        <option value="0">Chưa kích hoạt</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-3">
                            <div class="mb-4">
								<label for="formFile" class="form-label">Hình ảnh đại diện</label>
								<input class="form-control" type="file" id="image_list" name="img" style="width: 100%" required>
                                <div class="error" id="password_error"><?php echo form_error('img')?></div>
								<img class="uploadimg" id="uploadedImage" src="<?php echo base_url() ?>public/images/admin/none.webp" alt="Uploaded Image">
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
        $('#roleadmin').select2({
            width: "100%",
            placeholder: "Phân quyền",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });
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