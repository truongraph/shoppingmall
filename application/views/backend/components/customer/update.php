<?php echo form_open('admin/customer/update/' . $row['id']); ?>
<div class="container-fluid">
    <div class="d-flex align-items-baseline justify-content-between mb-5">
        <!-- Breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript: void(0);">Bảng điều khiển</a></li>
                <li class="breadcrumb-item"><a href="javascript: void(0);">Danh sách khách hàng</a></li>
                <li class="breadcrumb-item active" aria-current="page">Thông tin khách hàng</li>
            </ol>
        </nav>
    </div>
    <form action="<?php echo base_url() ?>admin/customer/update.html" method="post" accept-charset="utf-8">
        <div class="row">
            <div class="col d-flex">
                <!-- Card -->
                <div class="card border-0 flex-fill w-100">
                    <div class="card-header border-0">

                        <div class="d-flex flex-column flex-md-row align-items-md-center justify-content-end">
                            <!-- Title -->
                            <h2 class="card-header-title h4 text-uppercase">
                                Thông tin khách hàng
                            </h2>
                            <!-- Button -->
                            <a type="button" class="list-fuzzy-search mw-md-300px ms-md-auto mt-5 mt-md-0 mb-3 mb-md-0  btn btn-outline-danger ms-md-4" href="admin/customer" role="button">
                                Trở về
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Họ và tên</label>
                                    <input type="text" name="fullname" class="form-control" value="<?php echo $row['fullname'] ?>" disabled> 
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Điện thoại</label>
                                    <input type="text" name="phone" class="form-control" value="<?php echo $row['phone'] ?>" disabled>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Email</label>
                                    <input type="email" name="email" class="form-control" value="<?php echo $row['email'] ?>" disabled>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-4">
                                    <label for="validationCustom01" class="form-label">Email</label>
                                    <select name="status" class="form-control" disabled>
                                        <option value="1" <?php if($row['status'] == 1) {echo 'selected';}?> >Đang hoạt động</option>
                                        <option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Ngừng hoạt động</option>
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