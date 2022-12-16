
    <?php
    $list = $this->Mproduct->product_sale('20');
    $html_menu = '<div class="row row-8 product-two-row-4">';
    foreach ($list as $menu) {
        if ($menu['sale'] > 0) {
            $html_menu .= "<div class = 'product-col col-6 col-lg-item-5'>";
            $html_menu .= "<div class='single-product-wrap mt-10'>";
            $html_menu .= "<a href=" . $menu['alias'] . " title=' " . $menu['name'] . "'>";
            $html_menu .= "<img src='public/images/products/" . $menu['img'] . "'>";
            $html_menu .= "</a>";
            $html_menu .= '</div>';
            $html_menu .= '<div class="entry-c" style="width:194px;">';
            $html_menu .= '<div class="entry-title">';
            $html_menu .= "<a class='ws-nw overflow ellipsis' href=" . $menu['alias'] . " title=' " . $menu['name'] . "'>";
            $html_menu .= $menu['name'];
            $html_menu .= "</a>";
            $html_menu .= '</div>';
            $html_menu .= '<ul class="entry-meta">';
            $html_menu .= '<li class="color">';
            $html_menu .= "<ins>" . number_format($menu['price_sale']) . '₫' . "</ins>";
            $html_menu .= "<del>" . number_format($menu['price']) . '₫' . "</del>";
            $html_menu .= '</li>';
            $html_menu .= '</ul>';
            $html_menu .= '</div>';
            $html_menu .= "</div>";
        }
    }
    $html_menu .= "</div>";
    echo $html_menu;
    ?>
