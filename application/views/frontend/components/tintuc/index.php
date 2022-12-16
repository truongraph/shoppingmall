 <!-- breadcrumb-area start -->
 <div class="breadcrumb-area">
     <div class="container">
         <div class="row">
             <div class="col-12">
                 <!-- breadcrumb-list start -->
                 <ul class="breadcrumb-list">
                     <li class="breadcrumb-item"><a href="">Trang chủ</a></li>
                     <li class="breadcrumb-item active">Tin tức nổi bật</li>
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
         <div class="blog-wrapper">
             <div class="row">
                <div class="col-lg-12"><h4 class="title-blog">Tin tức nổi bật</h4></div>
                 <?php foreach ($list as $item) : ?>
                     <div class="col-lg-3 mb-4">
                         <!-- single-blog-wrap Start -->
                         <div class="single-blog-wrap">
                             <div class="latest-blog-image">
                                 <a href="tin-tuc/<?php echo $item['alias']; ?>"><img src="public/images/posts/<?php echo $item['img']; ?>" alt=""></a>
                             </div>
                             <div class="latest-blog-content mt-20">
                                 <h4><a  href="tin-tuc/<?php echo $item['alias']; ?>" title=""><?php echo $item['title']; ?></a></h4>
                                 <ul class="post-meta">
                                     <li class="post-date"><i class='bx bx-time-five'></i> <?php echo date("d/m/Y", strtotime($item['created']));  ?></li>
                                 </ul>
                                 <p class="secon-desc"><?php echo $item['introtext']; ?></p>
                                
                             </div>
                         </div>
                         <!-- single-blog-wrap End -->
                     </div>
                 <?php endforeach; ?>
             </div>
         </div>
     </div>
 </div>
 <!-- main-content-wrap end -->