           <!-- shop-products-wrap start -->
           <div class="shop-products-wrap" id="list-product">
                         <div class="shop-product-wrap">
                             <div class="row row-8">
                                 <?php if (count($list) == 0) : ?>
                                     <div class="col-lg-12"><p class="empty_cat">Không tìm thấy sản phẩm. Vui lòng thử lại sau</p></div>
                                 <?php else : ?>
                                     <?php foreach ($list as $sp) : ?>
                                         <div class="product-col  col-6 col-lg-item-5">
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
                     <script>

function onAddCart(id){
    
    var strurl="<?php echo base_url();?>"+'/sanpham/addcart';
    
    jQuery.ajax({
        url: strurl,
        type: 'POST',
        dataType: 'json',
        data: {id: id},
        success: function(data) {
            setTimeout(function () {
                toastr.success(
                'Bạn đã thêm 1 sản phẩm vào giỏ hàng');
                document.location.reload(true);
            }, 500);
        }
    });
}
</script>