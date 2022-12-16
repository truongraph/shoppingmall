    <!-- Hero Section Start -->
    <div class="hero-slider-area">
        <div class="container">
            <div class="row">
                <!-- <div class="col-lg-3">
                    <div class="categories-menu-wrap mt-30">
                        <div class="categories_menu">
                            <div class="categories_title">
                                <h5 class="categori_toggle">Danh mục sản phẩm</h5>
                            </div>
                            <div class="categories_menu_toggle">
                                <?php
                                $limit = 9;
                                $listcat = $this->Mcategory->category_menu(0, $limit);
                                $html_menu = '<ul>';
                                foreach ($listcat as $menu) {
                                    $parentid = $menu['id'];
                                    $submenu = $this->Mcategory->category_menu($parentid);
                                    $html_menu .= '<li class="menu_item_children categorie_list">';
                                    $html_menu .= "<a href='san-pham/" . $menu['link'] . " ' title=' " . $menu['name'] . "'>";
                                    $html_menu .= $menu['name'];
                                    if (!empty($submenu)) {
                                        $html_menu .= '<i class="fa fa-angle-right">';
                                    }
                                    $html_menu .= '</i>';
                                    $html_menu .= "</a>";
                                    if (count($submenu)) {
                                        $html_menu .= '<ul class="categories_mega_menu">';
                                        foreach ($submenu as $menu1) {
                                            $html_menu .= '<li>';
                                            $html_menu .= "<a href='san-pham/" . $menu1['link'] . " ' title=' " . $menu1['name'] . " '> " . $menu1['name'] . "</a>";
                                            $html_menu .= "</li>";
                                        }
                                        $html_menu .= "</ul>";
                                    }
                                    $html_menu .= "</li>";
                                }
                                $html_menu .= "</ul>";
                                echo $html_menu;
                                ?>
                            </div>
                        </div>
                    </div>
                </div> -->
                <div class="col-lg-12">
                    <div class="hero-slider-wrapper mt-30">
                        <?php
                        $this->load->view('frontend/modules/slider');
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Section End -->
    <!-- Banner Area Start -->
    <div class="banner-area">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-3">
                    <div class="single-banner mb-30">
                        <img src="<?php echo base_url() ?>public/images/cate1.webp" alt="">
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="single-banner mb-30">
                        <img src="<?php echo base_url() ?>public/images/cate2.webp" alt="">
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="single-banner mb-30">
                        <img src="<?php echo base_url() ?>public/images/cate3.webp" alt="">
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="single-banner mb-30">
                        <img src="<?php echo base_url() ?>public/images/cate4.webp" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Area End -->
    <!-- Product Area Start -->
    <div class="product-area section-pt-30 mt-30 pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3>Sản phẩm khuyến mãi</h3>
                    </div>
                    <!-- Section Title End -->
                </div>
            </div>

            <div class="row row-8 product-two-row-4">
                <?php
                $product_sale = $this->Mproduct->product_sale(10);
                foreach ($product_sale as $row) : ?>
                    <div class="product-col col-6 col-lg-item-5 ">
                        <!-- Single Product Start -->
                        <div class="single-product-wrap mt-10">
                            <div class="product-image">
                                <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                    <img src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
                                </a>
                                <?php if ($row['sale'] > 0) : ?>
                                    <span class="onsale">-<?php echo $row['sale'] ?>%</span>
                                <?php endif; ?>

                            </div>

                            <div class="product-content">
                                <h6 class="product-name"><a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                        <?php echo $row['name'] ?></a>
                                </h6>
                                <div class="price-box">
                                    <?php if ($row['sale'] > 0) : ?>
                                        <p class="new-price">
                                            <?php echo (number_format($row['price_sale'])); ?> đ
                                        </p>
                                        <p class="old-price">
                                            <?php echo (number_format($row['price'])); ?> đ
                                        </p>
                                    <?php else : ?>
                                        <p class="new-price">
                                            <?php echo (number_format($row['price'])); ?> đ
                                        </p>
                                    <?php endif; ?>
                                </div>

                            </div>
                        </div>
                        <!-- Single Product End -->
                    </div>
                <?php endforeach; ?>
            </div>

        </div>
    </div>
    <!-- Product Area Start -->

    <!-- Banner Area Start -->
    <div class="banner-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single-banner mb-30">
                        <a href="#"><img src="<?php echo base_url() ?>public/images/bn1.webp" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6  col-md-6">
                    <div class="single-banner mb-30">
                        <a href="#"><img src="<?php echo base_url() ?>public/images/bn2.webp" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Area End -->

    <!-- Product Area Start -->
    <div class="product-area section-pt-30 mt-30 pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3>Sản phẩm mới nhất</h3>
                    </div>
                    <!-- Section Title End -->
                </div>

            </div>
            <div class="row row-8 product-two-row-4">
                <?php
                $product_new = $this->Mproduct->product_new(10);
                foreach ($product_new as $row) : ?>
                    <div class="product-col col-6 col-lg-item-5">
                        <!-- Single Product Start -->
                        <div class="single-product-wrap mt-10">
                            <div class="product-image">
                                <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                    <img src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
                                </a>
                                <?php if ($row['sale'] > 0) : ?>
                                    <span class="onsale">-<?php echo $row['sale'] ?>%</span>
                                <?php endif; ?>

                            </div>

                            <div class="product-content">
                                <h6 class="product-name"><a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                        <?php echo $row['name'] ?></a>
                                </h6>
                                <div class="price-box">
                                    <?php if ($row['sale'] > 0) : ?>
                                        <p class="new-price">
                                            <?php echo (number_format($row['price_sale'])); ?> đ
                                        </p>
                                        <p class="old-price">
                                            <?php echo (number_format($row['price'])); ?> đ
                                        </p>
                                    <?php else : ?>
                                        <p class="new-price">
                                            <?php echo (number_format($row['price'])); ?> đ
                                        </p>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <!-- Single Product End -->
                    </div>
                <?php endforeach; ?>
            </div>

        </div>
    </div>
    <!-- Product Area Start -->

    <!-- Banner Area Start -->
    <div class="banner-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single-banner mb-30">
                        <a href="#"><img src="<?php echo base_url() ?>public/images/bn3.webp" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6  col-md-6">
                    <div class="single-banner mb-30">
                        <a href="#"><img src="<?php echo base_url() ?>public/images/bn4.webp" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Area End -->

    <!-- Product Area Start -->
    <div class="product-area section-pt-30 mt-30 pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3>Sản phẩm bán chạy</h3>
                    </div>
                    <!-- Section Title End -->
                </div>

            </div>
            <div class="row row-8 product-two-row-4">
                <?php
                $product_sale = $this->Mproduct->product_selling(10);
                foreach ($product_sale as $row) : ?>
                    <div class="product-col col-6 col-lg-item-5">
                        <!-- Single Product Start -->
                        <div class="single-product-wrap mt-10">
                            <div class="product-image">
                                <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                    <img src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
                                </a>
                                <?php if ($row['sale'] > 0) : ?>
                                    <span class="onsale">-<?php echo $row['sale'] ?>%</span>
                                <?php endif; ?>

                            </div>

                            <div class="product-content">
                                <h6 class="product-name"><a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                        <?php echo $row['name'] ?></a>
                                </h6>
                                <div class="price-box">
                                    <?php if ($row['sale'] > 0) : ?>
                                        <p class="new-price">
                                            <?php echo (number_format($row['price_sale'])); ?> đ
                                        </p>
                                        <p class="old-price">
                                            <?php echo (number_format($row['price'])); ?> đ
                                        </p>
                                    <?php else : ?>
                                        <p class="new-price">
                                            <?php echo (number_format($row['price'])); ?> đ
                                        </p>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <!-- Single Product End -->
                    </div>
                <?php endforeach; ?>
            </div>

        </div>
    </div>
    <!-- Product Area Start -->



    <!-- Product Area Start -->
    <div class="product-area section-pt-30 mt-30 pb-5">
        <div class="container">
            <?php
            $listCategory = $this->Mcategory->category_list(0, '10');
            foreach ($listCategory as $rowCategory) :
                $subCategory = $this->Mcategory->category_list($rowCategory['id'], '10');
                $catId = $this->Mcategory->category_id($rowCategory['link']);
                $listCatId = $this->Mcategory->category_listcat($catId);
                $listProducts = $this->Mproduct->product_home_limit($listCatId, 10);
                if ((count($listProducts) >= 3)) : ?>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <!-- Section Title Start -->
                            <div class="section-title catehome">
                                <h3><?php echo  $rowCategory['name'] ?> nổi bật</h3>
                            </div>
                            <!-- Section Title End -->
                        </div>

                    </div>
                    <div class="row row-8 product-two-row-4">
                        <?php foreach ($listProducts as $row) : ?>
                            <div class="product-col col-6 col-lg-item-5">
                                <!-- Single Product Start -->
                                <div class="single-product-wrap mt-10">
                                    <div class="product-image">
                                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                            <img src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
                                        </a>
                                        <?php if ($sp['sale'] > 0) : ?>
                                            <span class="onsale">-<?php echo $row['sale'] ?>%</span>
                                        <?php endif; ?>

                                    </div>

                                    <div class="product-content">
                                        <h6 class="product-name"><a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                                <?php echo $row['name'] ?></a>
                                        </h6>
                                        <div class="price-box">
                                            <?php if ($row['sale'] > 0) : ?>
                                                <p class="new-price">
                                                    <?php echo (number_format($row['price_sale'])); ?> đ
                                                </p>
                                                <p class="old-price">
                                                    <?php echo (number_format($row['price'])); ?> đ
                                                </p>
                                            <?php else : ?>
                                                <p class="new-price">
                                                    <?php echo (number_format($row['price'])); ?> đ
                                                </p>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Product End -->
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </div>
    </div>
    <!-- Product Area Start -->



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