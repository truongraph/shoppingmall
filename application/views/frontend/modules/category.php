


<!-- shop-sidebar-wrap start -->
<div class="shop-sidebar-wrap">
            <?php
                $listcat = $this->Mcategory->category_menu(0);
                $html_menu = '<div class="item-row" >';
                foreach ($listcat as $menu) {
                    $parentid = $menu['id'];
                    $submenu = $this->Mcategory->category_menu($parentid);
                    $html_menu .= '<div class="list-category-item">';
                    $html_menu .= "<a href='san-pham/" . $menu['link'] . " ' title=' " . $menu['name'] . "'>";
                    $html_menu .= $menu['name'];
                    $html_menu .= "</a>";
                  
                    $html_menu .= "</div>";
                }
                $html_menu .= "</div>";
                echo $html_menu;
                ?>
</div>
<!-- shop-sidebar-wrap end -->