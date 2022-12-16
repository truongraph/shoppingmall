   <!-- HEADER -->
   <header class="container-fluid d-flex py-6 mb-4" id="headermain">

       <!-- Top buttons -->
       <div class="d-flex align-items-center ms-auto me-n1 me-lg-n2">

           <!-- Dropdown -->
           <div class="dropdown" id="themeSwitcher">
               <a href="javascript: void(0);" class="dropdown-toggle no-arrow d-flex align-items-center justify-content-center bg-white rounded-circle shadow-sm mx-1 mx-lg-2 w-40px h-40px link-secondary" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-bs-offset="0,10">
                   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" height="18" width="18">
                       <g>
                           <path d="M12,4.64A7.36,7.36,0,1,0,19.36,12,7.37,7.37,0,0,0,12,4.64Zm0,12.72A5.36,5.36,0,1,1,17.36,12,5.37,5.37,0,0,1,12,17.36Z" style="fill: currentColor" />
                           <path d="M12,3.47a1,1,0,0,0,1-1V1a1,1,0,0,0-2,0V2.47A1,1,0,0,0,12,3.47Z" style="fill: currentColor" />
                           <path d="M4.55,6a1,1,0,0,0,.71.29A1,1,0,0,0,6,6,1,1,0,0,0,6,4.55l-1-1A1,1,0,0,0,3.51,4.93Z" style="fill: currentColor" />
                           <path d="M2.47,11H1a1,1,0,0,0,0,2H2.47a1,1,0,1,0,0-2Z" style="fill: currentColor" />
                           <path d="M4.55,18l-1,1a1,1,0,0,0,0,1.42,1,1,0,0,0,.71.29,1,1,0,0,0,.71-.29l1-1A1,1,0,0,0,4.55,18Z" style="fill: currentColor" />
                           <path d="M12,20.53a1,1,0,0,0-1,1V23a1,1,0,0,0,2,0V21.53A1,1,0,0,0,12,20.53Z" style="fill: currentColor" />
                           <path d="M19.45,18A1,1,0,0,0,18,19.45l1,1a1,1,0,0,0,.71.29,1,1,0,0,0,.71-.29,1,1,0,0,0,0-1.42Z" style="fill: currentColor" />
                           <path d="M23,11H21.53a1,1,0,0,0,0,2H23a1,1,0,0,0,0-2Z" style="fill: currentColor" />
                           <path d="M18.74,6.26A1,1,0,0,0,19.45,6l1-1a1,1,0,1,0-1.42-1.42l-1,1A1,1,0,0,0,18,6,1,1,0,0,0,18.74,6.26Z" style="fill: currentColor" />
                       </g>
                   </svg>
               </a>

               <ul class="dropdown-menu dropdown-menu-end">
                   <li>
                       <button type="button" class="dropdown-item active" data-theme-value="light">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="me-2" height="18" width="18">
                               <g>
                                   <path d="M12,4.64A7.36,7.36,0,1,0,19.36,12,7.37,7.37,0,0,0,12,4.64Zm0,12.72A5.36,5.36,0,1,1,17.36,12,5.37,5.37,0,0,1,12,17.36Z" style="fill: currentColor" />
                                   <path d="M12,3.47a1,1,0,0,0,1-1V1a1,1,0,0,0-2,0V2.47A1,1,0,0,0,12,3.47Z" style="fill: currentColor" />
                                   <path d="M4.55,6a1,1,0,0,0,.71.29A1,1,0,0,0,6,6,1,1,0,0,0,6,4.55l-1-1A1,1,0,0,0,3.51,4.93Z" style="fill: currentColor" />
                                   <path d="M2.47,11H1a1,1,0,0,0,0,2H2.47a1,1,0,1,0,0-2Z" style="fill: currentColor" />
                                   <path d="M4.55,18l-1,1a1,1,0,0,0,0,1.42,1,1,0,0,0,.71.29,1,1,0,0,0,.71-.29l1-1A1,1,0,0,0,4.55,18Z" style="fill: currentColor" />
                                   <path d="M12,20.53a1,1,0,0,0-1,1V23a1,1,0,0,0,2,0V21.53A1,1,0,0,0,12,20.53Z" style="fill: currentColor" />
                                   <path d="M19.45,18A1,1,0,0,0,18,19.45l1,1a1,1,0,0,0,.71.29,1,1,0,0,0,.71-.29,1,1,0,0,0,0-1.42Z" style="fill: currentColor" />
                                   <path d="M23,11H21.53a1,1,0,0,0,0,2H23a1,1,0,0,0,0-2Z" style="fill: currentColor" />
                                   <path d="M18.74,6.26A1,1,0,0,0,19.45,6l1-1a1,1,0,1,0-1.42-1.42l-1,1A1,1,0,0,0,18,6,1,1,0,0,0,18.74,6.26Z" style="fill: currentColor" />
                               </g>
                           </svg>
                           Chế độ sáng
                       </button>
                   </li>
                   <li>
                       <button type="button" class="dropdown-item" data-theme-value="dark">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="me-2" height="18" width="18">
                               <path d="M19.57,23.34a1,1,0,0,0,0-1.9,9.94,9.94,0,0,1,0-18.88,1,1,0,0,0,.68-.94,1,1,0,0,0-.68-.95A11.58,11.58,0,0,0,8.88,2.18,12.33,12.33,0,0,0,3.75,12a12.31,12.31,0,0,0,5.11,9.79A11.49,11.49,0,0,0,15.61,24,12.55,12.55,0,0,0,19.57,23.34ZM10,20.17A10.29,10.29,0,0,1,5.75,12a10.32,10.32,0,0,1,4.3-8.19A9.34,9.34,0,0,1,15.59,2a.17.17,0,0,1,.17.13.18.18,0,0,1-.07.2,11.94,11.94,0,0,0-.18,19.21.25.25,0,0,1-.16.45A9.5,9.5,0,0,1,10,20.17Z" style="fill: currentColor" />
                           </svg>
                           Chế độ tối
                       </button>
                   </li>
                   <li>
                       <button type="button" class="dropdown-item" data-theme-value="auto">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="me-2" height="18" width="18">
                               <path d="M24,12a1,1,0,0,0-1-1H19.09a.51.51,0,0,1-.49-.4,6.83,6.83,0,0,0-.94-2.28.5.5,0,0,1,.06-.63l2.77-2.76a1,1,0,1,0-1.42-1.42L16.31,6.28a.5.5,0,0,1-.63.06A6.83,6.83,0,0,0,13.4,5.4a.5.5,0,0,1-.4-.49V1a1,1,0,0,0-2,0V4.91a.51.51,0,0,1-.4.49,6.83,6.83,0,0,0-2.28.94.5.5,0,0,1-.63-.06L4.93,3.51A1,1,0,0,0,3.51,4.93L6.28,7.69a.5.5,0,0,1,.06.63A6.83,6.83,0,0,0,5.4,10.6a.5.5,0,0,1-.49.4H1a1,1,0,0,0,0,2H4.91a.51.51,0,0,1,.49.4,6.83,6.83,0,0,0,.94,2.28.5.5,0,0,1-.06.63L3.51,19.07a1,1,0,1,0,1.42,1.42l2.76-2.77a.5.5,0,0,1,.63-.06,6.83,6.83,0,0,0,2.28.94.5.5,0,0,1,.4.49V23a1,1,0,0,0,2,0V19.09a.51.51,0,0,1,.4-.49,6.83,6.83,0,0,0,2.28-.94.5.5,0,0,1,.63.06l2.76,2.77a1,1,0,1,0,1.42-1.42l-2.77-2.76a.5.5,0,0,1-.06-.63,6.83,6.83,0,0,0,.94-2.28.5.5,0,0,1,.49-.4H23A1,1,0,0,0,24,12Zm-8.74,2.5A5.76,5.76,0,0,1,9.5,8.74a5.66,5.66,0,0,1,.16-1.31A.49.49,0,0,1,10,7.07a5.36,5.36,0,0,1,1.8-.31,5.47,5.47,0,0,1,5.46,5.46,5.36,5.36,0,0,1-.31,1.8.49.49,0,0,1-.35.32A5.53,5.53,0,0,1,15.26,14.5Z" style="fill: currentColor" />
                           </svg>
                           Tự động
                       </button>
                   </li>
               </ul>
           </div>



           <!-- Separator -->
           <div class="vr bg-gray-700 mx-2 mx-lg-3"></div>

           <!-- Button -->
           <a class="d-flex align-items-center justify-content-center bg-white rounded-circle shadow-sm mx-1 mx-lg-2 w-40px h-40px position-relative link-secondary" data-bs-toggle="offcanvas" href="#offcanvasNotifications" role="button" aria-controls="offcanvasNotifications">
               <svg viewBox="0 0 24 24" height="18" width="18" xmlns="http://www.w3.org/2000/svg">
                   <path d="M10,21.75a2.087,2.087,0,0,0,4.005,0" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" />
                   <path d="M12 3L12 0.75" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" />
                   <path d="M12,3a7.5,7.5,0,0,1,7.5,7.5c0,7.046,1.5,8.25,1.5,8.25H3s1.5-1.916,1.5-8.25A7.5,7.5,0,0,1,12,3Z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" />
               </svg>
               <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill text-bg-danger">
                   <?php
                    $approved = $this->Morders->orders_count_header();
                    $not_approved = $this->Morders->orders_count_header_not();
                    echo  $approved + $not_approved;
                    ?><span class="visually-hidden">thông báo</span>
               </span>
           </a>

           <!-- Notifications offcanvas -->
           <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNotifications" aria-labelledby="offcanvasNotificationsLabel">
               <div class="offcanvas-header px-5">
                   <h3 class="offcanvas-title" id="offcanvasNotificationsLabel">Thông báo hệ thống</h3>

                   <div class="d-flex align-items-start">
                       <!-- Button -->
                       <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                   </div>
               </div>

               <div class="offcanvas-body p-0">
                   <div class="list-group list-group-flush">
                       <a href="<?php echo base_url() ?>admin/orders" class="list-group-item list-group-item-action">
                           <div class="d-flex">
                               <div class="d-flex flex-column flex-grow-1">
                                   <div class="d-flex w-100 justify-content-between">
                                       <h5 class="mb-1">Thông báo đơn hàng mới</h5>
                                   </div>
                                   <div class="d-flex flex-column">
                                       <p class="mb-1"> <?php echo $this->Morders->orders_count_header_not(); ?> đơn hàng mới</p>
                                       <small class="text-secondary">Thông báo tới bạn. Hiện đang có <?php echo $this->Morders->orders_count_header_not(); ?> đang đợi bạn duyệt. Hãy đến danh mục đơn hàng để duyệt</small>
                                   </div>
                               </div>
                           </div>
                       </a>
                       <a href="<?php echo base_url() ?>admin/orders" class="list-group-item list-group-item-action">
                           <div class="d-flex">
                               <div class="d-flex flex-column flex-grow-1">
                                   <div class="d-flex w-100 justify-content-between">
                                       <h5 class="mb-1">Thông báo đơn hàng đang giao</h5>
                                   </div>
                                   <div class="d-flex flex-column">
                                       <p class="mb-1"> <?php echo $this->Morders->orders_count_header(); ?> đơn hàng đang được giao</p>
                                       <small class="text-secondary">Thông báo tới bạn. Hiện đang có <?php echo $this->Morders->orders_count_header_not(); ?> đang được giao hàng. Hãy đến danh mục đơn hàng để duyệt</small>
                                   </div>
                               </div>
                           </div>
                       </a>
                   </div>
               </div>
           </div>


           <!-- Separator -->
           <div class="vr bg-gray-700 mx-2 mx-lg-3"></div>

           <!-- Dropdown -->
           <div class="dropdown">
               <?php
                $image = '';
                if ($user['img']) {
                    $image = $user['img'];
                } else {
                    $image = 'user.png';
                }
                ?>
               <a href="javascript: void(0);" class="dropdown-toggle no-arrow d-flex align-items-center justify-content-center bg-white rounded-circle shadow-sm mx-1 mx-lg-2 w-40px h-40px" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false" data-bs-offset="0,10">
                   <div class="avatar avatar-circle avatar-sm avatar-online">
                       <img src="public/images/admin/<?php echo $image ?>" alt="..." class="avatar-img" width="40" height="40">
                   </div>
               </a>

               <div class="dropdown-menu">
                   <div class="dropdown-item-text">
                       <div class="d-flex align-items-center">
                           <div class="avatar avatar-sm avatar-circle">
                               <img src="public/images/admin/<?php echo $image ?>" alt="..." class="avatar-img" width="40" height="40">
                           </div>
                           <div class="flex-grow-1 ms-3">
                               <h4 class="mb-0 card-text"><?php echo $user['username'] ?></h4>
                               <p class="card-text"><?php echo $user['email'] ?></p>
                           </div>
                       </div>
                   </div>

                   <hr class="dropdown-divider">

                   <a class="dropdown-item"  href="<?php echo base_url()?>admin/useradmin/update/<?php echo $user['id'] ?>" >Chi tiết tài khoản</a>
                   <a class="dropdown-item" target="_blank" href="<?php echo base_url(); ?>">Xem website</a>

                   <hr class="dropdown-divider">

                   <a class="dropdown-item"  href="admin/user/logout.html">Đăng xuất tài khoản</a>
               </div>
           </div>
       </div>
   </header>