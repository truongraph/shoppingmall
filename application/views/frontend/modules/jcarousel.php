
<!-- Product Details Left -->
<div class="stick-gallery">
<?php if ($row['price_sale'] > 0 && $row['sale'] > 0) : ?>
       									<span class="sale-flag">Giảm giá <?php echo $row['sale'] ?>%</span>
       								<?php endif; ?>
<div class="product-large-slider">
<?php 
   $img = $row['img'];
   $mang = explode('#', $img);
   foreach ($mang as $value) :?>
   
  <div class="pro-large-img img-zoom">

    <img src="public/images/products/<?php echo $value; ?>" alt="product-details" />
    <a href="public/images/products/<?php echo $value; ?>" data-fancybox="images" ><i class='bx bx-zoom-in' ></i></a>
  </div>
  <?php endforeach; ?>
</div>
<div class="product-nav">
<?php 
   $img = $row['img'];
   $mang = explode('#', $img);
   foreach ($mang as $value) :?>
  <div class="pro-nav-thumb">
    <img src="public/images/products/<?php echo $value; ?>" alt="product-details" />
  </div>
  <?php endforeach; ?>
</div>
</div>
<!--// Product Details Left -->