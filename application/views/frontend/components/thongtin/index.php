 <!-- breadcrumb-area start -->
 <div class="breadcrumb-area">
     <div class="container">
         <div class="row">
             <div class="col-12">
                 <!-- breadcrumb-list start -->
                 <ul class="breadcrumb-list">
                     <li class="breadcrumb-item"><a href="">Trang chủ</a></li>
                     <li class="breadcrumb-item active">Tài khoản của tôi</li>
                 </ul>
                 <!-- breadcrumb-list end -->
             </div>
         </div>
     </div>
 </div>
 <!-- breadcrumb-area end -->
  <!-- main-content-wrap start -->
  <div class="main-content-wrap section-ptb my-account-page">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="account-dashboard">
                            <div class="dashboard-upper-info">
                                <h4>Quản lý tài khoản</h4>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-3">
                                    <!-- Nav tabs -->
                                    <ul role="tablist" class="nav flex-column dashboard-list">
                                        <li><a href="#dashboard" data-bs-toggle="tab" class="nav-link active"><i class='bx bxs-user-circle' ></i> Thông tin tài khoản</a></li>
                                        <li> <a href="#orders" data-bs-toggle="tab" class="nav-link"><i class='bx bxs-package'></i> Đơn hàng chưa duyệt</a></li>
                                        <li><a href="#downloads" data-bs-toggle="tab" class="nav-link"><i class='bx bxs-data' ></i> Đơn hàng đã duyệt</a></li>
                                        <li><a href="reset_password" class="nav-link"><i class='bx bxs-key' ></i> Thay đổi mật khẩu</a></li>
                                        <li><a href="dang-xuat" class="nav-link"><i class='bx bxs-log-in-circle' ></i> Đăng xuất tài khoản</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-12 col-lg-9">
                                    <!-- Tab panes -->
                                    <div class="tab-content dashboard-content">
                                        <div class="tab-pane active" id="dashboard">
                                            <h3>Thông tin tài khoản</h3>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                <p><strong>Tên tài khoản: </strong><?php echo $info['username'] ?></p>
                                            <p><strong>Họ và tên: </strong><?php echo $info['fullname'] ?></p>
                                            <p><strong>Email: </strong><?php echo $info['email'] ?></p>
                                                </div>
                                                <div class="col-lg-6">
                                                <p><strong>Số điện thoại: </strong><?php echo $info['phone'] ?></p>
                                            <p><strong>Ngày lập tài khoản: </strong><?php echo date("d/m/Y", strtotime($info['created']));  ?></p>
                                                </div>
                                            </div>
                                          
                                            
                                        </div>
                                        <div class="tab-pane fade" id="orders">
                                            <h3>Đơn hàng chưa duyệt</h3>
                                            <div class="table-responsive">
                                                  <table class="table table-responsive table-bordered text-left my-orders-table">
                                                      <thead>
                                                          <tr class="first last">
                                                              <th class="text-center last">Mã đơn</th>
                                                              <th class="text-center last">Ngày đặt</th>
                                                              <th class="text-center last">Giá trị đơn hàng</th>
                                                              <th class="text-center last"><span class="nobr">Trạng thái</span></th>
                                                              <th class="text-center last">Thao tác</th>
                                                          </tr>
                                                      </thead>
                                                      <tbody>
                                                          <?php $order = $this->Minfocustomer->order_listorder_customerid_not($info['id']);
                                                            foreach ($order as $value) : ?>
                                                              <tr>
                                                                  <td class="text-center last"><a href="account/orders/<?php echo $value['id'] ?>" style="color: #1d6cd9;font-weight: 600;">#<?php echo $value['orderCode'] ?></a></td>
                                                                  <td class="text-center last"><?php echo date("d/m/Y  h:i:s A", strtotime($value['orderdate'])); ?></td>
                                                                  <td class="text-center last"  width="150px"><span class="price-2"><?php echo number_format($value['money']) ?> đ</span></td>
                                                                  <td class="text-center last"><span class="badge badge-pill badge-info"> <?php
                                                                                                                    switch ($value['status']) {
                                                                                                                        case '0':
                                                                                                                            echo 'Đang chờ xác nhận';
                                                                                                                            break;
                                                                                                                    }
                                                                                                                    $id = $value['id'];
                                                                                                                    ?></span></td>
                                                                  <td class="text-center last">
                                                                      
                                                                      <a href="thongtin/update/<?php echo $value['id']; ?>" onclick="return confirm('Xác nhận hủy đơn hàng này ?')" class="btn-reorder"><i class='bx bx-x-circle'></i> Hủy đơn hàng</a>
                                                                  </td>
                                                              </tr>
                                                          <?php endforeach; ?>
                                                      </tbody>
                                                  </table>
                                              </div>
                                        </div>
                                        <div class="tab-pane fade" id="downloads">
                                            <h3> Đơn hàng đã duyệt</h3>
                                            <div class="table-responsive">
                                          <table class="table table-responsive table-bordered text-left my-orders-table">
                                              <thead>
                                                  <tr class="first last">
                                                      <th class="text-center last">Mã đơn</th>
                                                      <th class="text-center last">Ngày đặt</th>
                                                      <th class="text-center last">Giá trị đơn hàng</th>
                                                      <th class="text-center last"><span class="nobr">Trạng thái</span></th>
                                                    
                                                  </tr>
                                              </thead>
                                              <tbody>
                                                  <?php $order = $this->Minfocustomer->order_listorder_customerid($info['id']);
                                                    foreach ($order as $value) : ?>
                                                      <tr>
                                                      <td class="text-center last"><a href="account/orders/<?php echo $value['id'] ?>" style="color: #1d6cd9;font-weight: 600;">#<?php echo $value['orderCode'] ?></a></td>
                                                          <td class="text-center last"><?php echo date("d/m/Y  h:i:s A", strtotime($value['orderdate'])); ?></td>
                                                          <td class="text-center last"><span class="price-2"><?php echo number_format($value['money']) ?> đ</span></td>
                                                          <td class="text-center last"><span class="badge badge-pill badge-info"> <?php
                                                                switch ($value['status']) {
                                                                    case '0':
                                                                        echo 'Đang chờ xác nhận';
                                                                        break;
                                                                    case '1':
                                                                        echo 'Đang giao hàng';
                                                                        break;
                                                                    case '2':
                                                                        echo 'Giao hàng thành công';
                                                                        break;
                                                                    case '3':
                                                                        echo 'Khách hàng đã hủy';
                                                                        break;
                                                                    case '4':
                                                                        echo 'Nhân viên đã hủy';
                                                                        break;
                                                                }
                                                                $id = $value['id'];
                                                                ?></span></td>
                                                         
                                                      </tr>
                                                  <?php endforeach; ?>
                                              </tbody>
                                          </table>
                                      </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main-content-wrap end -->