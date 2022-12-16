<link rel="stylesheet" href="public/frontend_area/assets/css/checkout-style.css">
<?php echo form_open('info-order'); ?>
<?php
if (!$this->session->userdata('cart')) {
    redirect('gio-hang');
} else {
    $user = $this->session->userdata('sessionKhachHang');
}
?>
<form action="" enctype="multipart/form-data" method="post" accept-charset="utf-8" name='info-order' novalidate>
    <div class="content">
        <div class="wrap">
            <div class="sidebar">
                <div class="sidebar-content">
                    <div class="order-summary order-summary-is-collapsed">
                        <h2 class="visually-hidden">Thông tin đơn hàng</h2>
                        <div class="order-summary-sections">
                            <div class="order-summary-section order-summary-section-product-list" data-order-summary-section="line-items">
                                <table class="product-table">
                                    <thead>
                                        <tr>
                                            <th scope="col"><span class="visually-hidden">Hình ảnh</span></th>
                                            <th scope="col"><span class="visually-hidden">Mô tả</span></th>
                                            <th scope="col"><span class="visually-hidden">Số lượng</span></th>
                                            <th scope="col"><span class="visually-hidden">Giá</span></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($this->session->userdata('cart')) :
                                            $data = $this->session->userdata('cart');
                                            $money = 0;
                                            foreach ($data as $key => $value) :
                                                $row = $this->Mproduct->product_detail_id($key); ?>
                                                <tr class="product">
                                                    <td class="product-image">
                                                        <div class="product-thumbnail">
                                                            <div class="product-thumbnail-wrapper">
                                                                <img class="product-thumbnail-image" src="public/images/products/<?php echo $row['avatar'] ?>" alt="<?php echo $row['name'] ?>" />
                                                            </div>
                                                            <span class="product-thumbnail-quantity" aria-hidden="true"><?php echo $value ?></span>
                                                        </div>
                                                    </td>
                                                    <td class="product-description">
                                                        <span class="product-description-name order-summary-emphasis"><?php echo $row['name']; ?></span>
                                                    </td>
                                                    <td class="product-quantity visually-hidden"><?php echo $value ?></td>
                                                    <td style="display:none">
                                                        <?php
                                                        if ($row['price_sale'] > 0) {
                                                            $price_end = $row['price_sale'];
                                                        } else {
                                                            $price_end = $row['price'];
                                                        }
                                                        echo number_format($price_end) . ' đ';
                                                        ?>
                                                    </td>
                                                    <td class="product-price">
                                                        <span class="order-summary-emphasis"> <?php
                                                                                                $total = 0;
                                                                                                $total = $price_end * $value;
                                                                                                $money += $total;
                                                                                                echo number_format($total) . ' đ';
                                                                                                ?></span>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>

                            <div class="order-summary-section order-summary-section-discount">

                                <input name="utf8" type="hidden" value="✓">
                                <div class="fieldset">
                                    <div class="field  ">
                                        <div class="field-input-btn-wrapper">
                                            <div class="field-input-wrapper">

                                                <label class="field-label" for="discount.code">Mã giảm giá</label>
                                                <input id="coupon" placeholder="Mã giảm giá" class="field-input" autocomplete="false" autocapitalize="off" spellcheck="false" size="30" type="text" name="coupon" value="" />
                                            </div>
                                            <button type="button" onclick="checkCoupon()" class="field-input-btn btn-default">
                                                <span class="btn-content">Sử dụng</span>
                                            </button>
                                        </div>
                                        <div class="error" id="result_coupon" style="font-size: 13px; font-weight:500;"></div>
                                    </div>
                                </div>

                            </div>



                            <div class="order-summary-section order-summary-section-total-lines payment-lines">
                                <div class="section-header">
                                    <h2 class="section-title">Phương thức vận chuyển</h2>
                                </div>
                                <div class="section-content">

                                    <div class="content-box">

                                        <div class="content-box-row">
                                            <div class="radio-wrapper">
                                                <label class="radio-label">
                                                    <div class="radio-input">
                                                        <input class="input-radio" type="radio" checked="">
                                                    </div>
                                                    <span class="radio-label-primary">Giao hàng tiết kiệm</span>
                                                    <span class="radio-accessory content-box-emphasis">
                                                        <?php echo number_format($this->Mconfig->config_price_ship()) . ' đ'; ?>
                                                    </span>
                                                </label>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <table class="total-line-table">
                                    <thead>
                                        <tr>
                                            <th scope="col"><span class="visually-hidden">Mô tả</span></th>
                                            <th scope="col"><span class="visually-hidden">Giá</span></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="total-line total-line-subtotal">
                                            <td class="total-line-name">Tạm tính</td>
                                            <td class="total-line-price">
                                                <span class="order-summary-emphasis">
                                                    <?php echo number_format($money) ?> đ
                                                </span>
                                            </td>
                                        </tr>


                                        <tr class="total-line total-line-shipping">
                                            <td class="total-line-name">Phí vận chuyển</td>
                                            <td class="total-line-price">
                                                <span class="order-summary-emphasis">
                                                    <?php echo number_format($this->Mconfig->config_price_ship()) . ' đ'; ?>
                                                </span>
                                            </td>
                                        </tr>
                                        <?php
                                        if ($this->session->userdata('coupon_price')) {
                                            $price_coupon_money = $this->session->userdata('coupon_price');
                                            $price_coupon = number_format($this->session->userdata('coupon_price'));
                                            echo '
                                                                <tr class="total-line total-line-shipping">
                                                                <td class="total-line-name">Mã giảm giá</td>
                                                                <td class="total-line-price">
                                                                <span class="order-summary-emphasis">
                                                                 -' . $price_coupon . ' đ
                                                                 </span>
                                                                 <a style="position:relative;top: -1px;color: red;cursor: pointer;" onclick="removeCoupon()"><i class="bx bxs-trash"></i></a>
                                                                </td>
                                                                </tr>
                                                                ';
                                        }
                                        ?>
                                    </tbody>

                                    <tfoot class="total-line-table-footer">

                                        <tr class="total-line">
                                            <td class="total-line-name payment-due-label">
                                                <span class="payment-due-label-total">Tổng cộng</span>
                                            </td>
                                            <td class="total-line-name payment-due">
                                                <span class="payment-due-price">
                                                    <?php if (isset($price_coupon_money)) {
                                                        $money_pay = ($money + $this->Mconfig->config_price_ship()) - $price_coupon_money;
                                                    } else {
                                                        $money_pay = $money + $this->Mconfig->config_price_ship();
                                                    }
                                                    echo number_format($money_pay) . ' đ'; ?>
                                                </span>
                                                <span class="checkout_version" display:none data_checkout_version="1">
                                                </span>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <div class="section-content">
                                    <div class="content-box">
                                        <div class="radio-wrapper content-box-row">
                                            <label class="two-page" for="payment_method_id_1003405801">
                                                <div class="radio-input payment-method-checkbox">
                                                    <input type-id="1" id="payment_method_id_1003405801" class="input-radio" name="payment" type="radio" value="Thanh toán khi giao hàng (COD)" checked="">
                                                </div>
                                                <div class="radio-content-input">
                                                    <img class="main-img" src="<?php echo base_url() ?>public/images/cod.svg">
                                                    <div class="content-wrapper">
                                                        <span class="radio-label-primary">Thanh toán khi giao hàng (COD)</span>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="radio-wrapper content-box-row">
                                            <label class="two-page" for="payment_method_id_1003405803">
                                                <div class="radio-input payment-method-checkbox">
                                                    <input type-id="2" id="payment_method_id_1003405803" class="input-radio" name="payment" type="radio" value="Chuyển khoản qua ngân hàng">
                                                </div>
                                                <div class="radio-content-input">
                                                    <img class="main-img" src="<?php echo base_url() ?>public/images/other.svg">
                                                    <div class="content-wrapper">
                                                        <span class="radio-label-primary">Chuyển khoản qua ngân hàng</span>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                    </div>
                                    <p style="margin: 15px 0px;color:red;font-weight:500;text-align:center">*Lưu ý: Vui lòng kiểm tra kỹ thông tin trước khi nhấn đặt hàng</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main">
                <div class="main-header">

                    <a class="logo" onclick="window.location.href='trang-chu'">

                        <h1 class="logo-text">HangChinhHieu Store</h1>

                    </a>

                    <style>
                        a.logo {
                            display: block;
                            margin: 0px;
                        }

                        .logo-cus {
                            width: 100%;
                            padding: 15px 0;

                        }

                        .logo-cus img {
                            max-height: 4.2857142857em
                        }


                        @media (max-width: 767px) {
                            .banner a {
                                display: block;
                            }
                        }
                    </style>


                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a onclick="window.location.href='gio-hang'">Giỏ hàng</a>
                        </li>
                        <li class=" breadcrumb-item-current">

                            Thông tin giao hàng

                        </li>

                    </ul>

                </div>
                <div class="main-content">
                    <div class="step">
                        <div class="section">
                            <div class="section-header">
                                <h2 class="section-title">Thông tin giao hàng</h2>
                            </div>
                            <div class="section-content section-customer-information no-mb">
                                <?php
                                if (!$this->session->userdata('sessionKhachHang')) {
                                    echo ' <p class="section-content-text">
                                            Bạn có tài khoản? 
                                            <a href="dang-nhap">Ấn vào đây để đăng nhập</a>
                                            </p>';
                                }
                                ?>

                                <div class="fieldset">
                                    <div class="field">
                                        <div class="field-input-wrapper">
                                            <label class="field-label" for="name">Họ và tên</label>
                                            <input type="text" class="field-input" placeholder="Họ và tên" name="name" value="<?php echo $user['fullname'] ?>" <?php if($this->session->userdata('sessionKhachHang')) echo'readonly'?>>
                                        <div class="error"><?php echo form_error('name')?></div>
                                        </div>

                                    </div>

                                    <div class="field  field-half ">
                                        <div class="field-input-wrapper">
                                            <label class="field-label" for="checkout_user_email">Email</label>
                                            <input type="text" class="field-input" name="<?php if($this->session->userdata('sessionKhachHang')) echo 'tv'; else echo 'email'?>" value="<?php echo $user['email'] ?>" placeholder="Email" <?php if($this->session->userdata('sessionKhachHang')) echo'readonly'?>>
                                        <div class="error"><?php echo form_error('email')?></div>
                                        </div>

                                    </div>



                                    <div class="field field-required field-half  ">
                                        <div class="field-input-wrapper">
                                            <label class="field-label" for="billing_address_phone">Số điện thoại</label>
                                            <input type="text"  class="field-input" placeholder="Số điện thoại" name="phone" value="<?php echo $user['phone'] ?>" <?php if($this->session->userdata('sessionKhachHang')) echo'readonly'?>>
                                        <div class="error"><?php echo form_error('phone')?></div>
                                        </div>

                                    </div>
                                    <div class="field   ">
                                        <div class="field-input-wrapper">
                                            <label class="field-label" for="billing_address_address1">Địa chỉ</label>
                                            <input name="address" placeholder="Địa chỉ giao hàng:" class="field-input" style="height: auto !important;" value="<?php echo $user['address'] ?>" />
                                            <div class="error"><?php echo form_error('address') ?></div>
                                        </div>

                                    </div>
                                    <div class="field field-show-floating-label  field-half ">
                                        <div class="field-input-wrapper field-input-wrapper-select">

                                            <select class="field-input" name="city" id="province" onchange="renderDistrict()">

                                                <?php $list = $this->Mprovince->province_all();
                                                foreach ($list as $row) : ?>
                                                    <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <div class="error"><?php echo form_error('city') ?></div>
                                        </div>
                                    </div>
                                    <div class="field field-show-floating-label  field-half ">
                                        <div class="field-input-wrapper field-input-wrapper-select">
                                            <select class="field-input" name="DistrictId" id="district">

                                            </select>
                                            <div class="error"><?php echo form_error('DistrictId') ?></div>
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="field-input-wrapper">
                                            <label class="field-label" for="notes">Nội dung giao hàng</label>
                                            <textarea name="notes" placeholder="Ghi chú giao hàng" class="field-input" rows="4" style="height:auto !important;" value=""></textarea>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="step-footer">
                                <button type="submit" name="dathang" class="step-footer-continue-btn">
                                    <span class="btn-content">Hoàn tất đặt hàng</span>
                                </button>
                                <a class="step-footer-previous-link" onclick="window.location.href='gio-hang'">
                                    Trở về giỏ hàng
                                </a>


                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>

</form>


<script type="text/javascript">
    $(document).ready(function() {
        $('#province').select2({
            width: "100%",
            allowClear: true,
            placeholder: "Tỉnh / thành",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });
    $('#province').val(null);
    $(document).ready(function() {
        $('#district').select2({
            width: "100%",
            allowClear: true,
            placeholder: "Quận / huyện",
            "language": {
                "noResults": () => "Không tìm thấy dữ liệu"

            }
        });
    });
</script>
<script>
    function renderDistrict() {
        var provinceid = $("#province").val();
        var strurl = "<?php echo base_url(); ?>" + 'giohang/district';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {
                'provinceid': provinceid
            },
            success: function(data) {
                $('#district').html(data);
            }
        });
    };

    function checkCoupon() {
        var code = $("input[name='coupon']").val();
        var strurl = "<?php echo base_url(); ?>" + 'giohang/coupon';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {
                code: code
            },
            success: function(data) {
                $('#result_coupon').html(data);
            }
        });
    }

    function removeCoupon() {
        swal({
                text: "Bạn có chắc chắn muốn gỡ bỏ mã giảm này ?",
                icon: false,
                buttons: true,
                dangerMode: true,
                buttons: ["Hủy bỏ", "Xóa mã"],
            })
            .then((willDelete) => {
                if (willDelete) {
                    var strurl = "<?php echo base_url(); ?>" + '/giohang/removecoupon';
                    jQuery.ajax({
                        url: strurl,
                        type: 'POST',
                        dataType: 'json',
                        success: function(data) {

                            $('#result_coupon').html(data);
                            document.location.reload(true);
                        }
                    });
                } else {
                    return
                }
            });

    }
</script>