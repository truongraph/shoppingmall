     <!-- breadcrumb-area start -->
     <div class="breadcrumb-area">
         <div class="container">
             <div class="row">
                 <div class="col-12">
                     <!-- breadcrumb-list start -->
                     <ul class="breadcrumb-list">
                         <li class="breadcrumb-item"><a href="">Trang chủ</a></li>
                         <li class="breadcrumb-item active">Sản phẩm</li>
                     </ul>
                     <!-- breadcrumb-list end -->
                 </div>
             </div>
         </div>
     </div>
     <!-- breadcrumb-area end -->
     <!-- main-content-wrap start -->
     <div class="main-content-wrap shop-page section-ptb">
         <div class="container">
            
             <div class="row">
                 <div class="col-lg-12">
                 <?php $this->load->view('frontend/modules/category'); ?>
                 </div>
                 <div class="col-lg-12">
                     <!-- shop-product-wrapper start -->
                     <div class="shop-product-wrapper">
                         <div class="row align-itmes-center">
                         <div class="col"><span class="title-shop">Sản phẩm</span></div>
                             <div class="col">
                                 <!-- product-short start -->
                                 <div class="product-short">
                                     <?php
                                        $html_list = "";
                                        $html_list .= '<select id ="sortControl" class="nice-select" onchange="sortby(this.value)">';
                                        if ($this->session->userdata('sortby')) {
                                            $data = $this->session->userdata('sortby');
                                            $sort = $data[0] . '-' . $data[1];
                                            if ($sort == 'number_buy-desc') {
                                                $html_list .= '<option value="number_buy-desc" selected>Bán chạy nhất</option>';
                                            } else {
                                                $html_list .= '<option value="number_buy-desc">Bán chạy nhất</option>';
                                            }
                                            if ($sort == 'name-asc') {
                                                $html_list .= '<option value="name-asc" selected>A → Z</option>';
                                            } else {
                                                $html_list .= '<option value="name-asc" >A → Z</option>';
                                            }
                                            if ($sort == 'name-desc') {
                                                $html_list .= '<option value="name-desc" selected>Z → A</option>';
                                            } else {
                                                $html_list .= '<option value="name-desc">Z → A</option>';
                                            }
                                            if ($sort == 'price-asc') {
                                                $html_list .= '<option value="price-asc" selected>Giá tăng dần</option>';
                                            } else {
                                                $html_list .= '<option value="price-asc">Giá tăng dần</option>';
                                            }
                                            if ($sort == 'price-desc') {
                                                $html_list .= '<option value="price-desc" selected>Giá giảm dần</option>';
                                            } else {
                                                $html_list .= '<option value="price-desc">Giá giảm dần</option>';
                                            }
                                            if ($sort == 'created-desc') {
                                                $html_list .= '<option value="created-desc" selected>Hàng mới nhất</option>';
                                            } else {
                                                $html_list .= '<option value="created-desc">Hàng mới nhất</option>';
                                            }
                                            if ($sort == 'created-asc') {
                                                $html_list .= '<option value="created-asc" selected>Hàng cũ nhất</option>';
                                            } else {
                                                $html_list .= '<option value="created-asc">Hàng cũ nhất</option>';
                                            }
                                        } else {
                                            $html_list .= '<option value="number_buy-desc">Bán chạy nhất</option>';
                                            $html_list .= '<option value="name-asc">A → Z</option>';
                                            $html_list .= '<option value="name-desc">Z → A</option>';
                                            $html_list .= '<option value="price-asc">Giá tăng dần</option>';
                                            $html_list .= '<option value="price-desc">Giá giảm dần</option>';
                                            $html_list .= '<option value="created-desc">Hàng mới nhất</option>';
                                            $html_list .= '<option value="created-desc">Hàng cũ nhất</option>';
                                        }
                                        $html_list .= '</select>';
                                        echo $html_list;
                                        ?>
                                 </div>
                                 <!-- product-short end -->
                             </div>
                         </div>
                     </div>
                     <!-- shop-products-wrap start -->
                     <div class="shop-products-wrap" id="list-product">
                         <div class="shop-product-wrap">
                             <div class="row row-8">
                                 <?php if (count($list) == 0) : ?>
                                     <div class="col-lg-12"><p class="empty_cat">Không tìm thấy sản phẩm. Vui lòng thử lại sau</p></div>
                                 <?php else : ?>
                                     <?php foreach ($list as $sp) : ?>
                                         <div class="product-col col-6 col-lg-item-5">
                                             <!-- Single Product Start -->
                                             <div class="single-product-wrap mt-10">
                                                 <div class="product-image">
                                                     <a href="<?php echo $sp['alias'] ?>" title="<?php echo $sp['name'] ?>"><img src="public/images/products/<?php echo $sp['avatar'] ?>" alt=""></a>
                                                     <?php if ($sp['sale'] > 0) : ?>
                                                         <span class="onsale">-<?php echo $sp['sale'] ?>%</span>
                                                     <?php endif; ?>
                                                 </div>
                                                 <div class="product-content">
                                                     <div class="price-box">
                                                         <?php if ($sp['sale'] > 0) : ?>
                                                             <p class="new-price">
                                                                 <span class="price"><?php echo (number_format($sp['price_sale'])); ?> đ</span>
                                                             </p>
                                                             <p class="old-price">
                                                                 <span class="price"><?php echo (number_format($sp['price'])); ?> đ</span>
                                                             </p>
                                                         <?php else : ?>
                                                             <p class="new-price">
                                                                 <span class="price"><?php echo (number_format($sp['price'])); ?> đ</span>
                                                             </p>
                                                         <?php endif; ?>
                                                     </div>
                                                     <h6 class="product-name"><a href="<?php echo $sp['alias'] ?>" title="<?php echo $sp['name'] ?>"><?php echo $sp['name'] ?></a></h6>

                                                 </div>
                                             </div>
                                             <!-- Single Product End -->
                                         </div>
                                     <?php endforeach; ?>
                                     <!-- paginatoin-area start -->
                                     <div class="paginatoin-area">
                                         <div class="row">
                                             <div class="col-lg-12 col-md-12">
                                                 <ul class="pagination-box">
                                                     <?php echo $strphantrang; ?>
                                                 </ul>
                                             </div>
                                         </div>
                                     </div>
                                     <!-- paginatoin-area end -->
                                 <?php endif; ?>
                             </div>
                         </div>
                     </div>
                     <!-- shop-products-wrap end -->



                 </div>
             </div>
         </div>
     </div>
     <!-- main-content-wrap end -->














     <script type="text/javascript">
         function sortby(option) {
             var strurl = "<?php echo base_url(); ?>" + '/sanpham/index';
             jQuery.ajax({
                 url: strurl,
                 type: 'POST',
                 dataType: 'json',
                 data: {
                     'sapxep': option
                 },
                 success: function(data) {
                     $('#list-product').html(data);
                 }
             });
         }
     </script>
     <script>
         function onAddCart(id) {

             var strurl = "<?php echo base_url(); ?>" + '/sanpham/addcart';

             jQuery.ajax({
                 url: strurl,
                 type: 'POST',
                 dataType: 'json',
                 data: {
                     id: id
                 },
                 success: function(data) {
                     setTimeout(function() {
                         toastr.success(
                             'Bạn đã thêm 1 sản phẩm vào giỏ hàng');
                         document.location.reload(true);
                     }, 500);
                 }
             });
         }
     </script>