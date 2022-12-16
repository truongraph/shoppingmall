
<!-- Swiper -->
<div class="hero-slider-area hero-slider-one swiper mySwiper">
        <div class="swiper-wrapper gallery-top">
            <?php
            $list_banner = $this->Mslider->list_img_banner();
            foreach ($list_banner as $value) : ?>
                <div data-hash="" class="swiper-slide"><img class="swiper-slide" src="<?php echo base_url() ?>public/images/banners/<?php echo $value['img']; ?>" alt=""></div>
            <?php endforeach; ?>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>

</div>