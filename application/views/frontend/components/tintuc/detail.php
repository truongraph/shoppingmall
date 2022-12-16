 <!-- breadcrumb-area start -->
 <div class="breadcrumb-area">
 	<div class="container">
 		<div class="row">
 			<div class="col-12">
 				<!-- breadcrumb-list start -->
 				<ul class="breadcrumb-list">
 					<li class="breadcrumb-item"><a href="">Trang chủ</a></li>
 					<li class="breadcrumb-item active"><?php echo $row['title']; ?></li>
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
 				<div class="col-lg-12">
 					<h4 class="title-blog"><?php echo $row['title']; ?></h4>
 				</div>
 				<div class="col-lg-12">
 					<ul class="post-meta">
					 <li class="post-date"><i class='bx bx-time-five'></i> <?php echo date("d/m/Y", strtotime($row['created']));  ?></li>
 					</ul>
 					<div class="entry-content">
 						<p><?php echo $row['fulltext']; ?></p>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 </div>
 <!-- main-content-wrap end -->