<link rel="stylesheet" href="public/frontend_area/assets/css/checkout-style.css">
<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
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
                                    <?php
                                    $data = $this->Morderdetail->orderdetail_order($get['id']);
                                    $money = 0;
                                    $total2 = 0;
                                    foreach ($data as $value) :
                                        $row = $this->Mproduct->product_detail_id($value['productid']);
                                    ?>
                                        <tr class="product">
                                            <td class="product-image">
                                                <div class="product-thumbnail">
                                                    <div class="product-thumbnail-wrapper">
                                                        <img class="product-thumbnail-image" src="public/images/products/<?php echo $row['avatar'] ?>" alt="<?php echo $row['name'] ?>" />
                                                    </div>
                                                    <span class="product-thumbnail-quantity" aria-hidden="true"><?php echo $value['count']; ?></span>
                                                </div>
                                            </td>
                                            <td class="product-description">
                                                <span class="product-description-name order-summary-emphasis"><?php echo $row['name']; ?></span>
                                            </td>
                                            <td class="product-quantity visually-hidden"><?php echo $value['count']; ?></td>
                                            <td class="text-center" style="display: none;">
                                                <?php echo number_format($value['price']); ?>
                                            </td>
                                            <td class="product-price">
                                                <span class="order-summary-emphasis"><?php echo number_format($value['count'] * $value['price']); ?> đ</span>
                                            </td>
                                            <?php $total = $value['count'] * $value['price'];
                                            $total2 += $total; ?>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>

                        <div class="order-summary-section order-summary-section-total-lines payment-lines">

                            <table class="total-line-table">
                                <thead>
                                    <tr>
                                        <th scope="col"><span class="visually-hidden">Mô tả</span></th>
                                        <th scope="col"><span class="visually-hidden">Giá</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="total-line total-line-subtotal">
                                        <td class="total-line-name">Tổng cộng</td>
                                        <td class="total-line-price">
                                            <span class="order-summary-emphasis">
                                                <?php
                                                echo number_format($total2);
                                                ?> đ
                                            </span>
                                        </td>
                                    </tr>


                                    <tr class="total-line total-line-shipping">
                                        <td class="total-line-name">Phí vận chuyển</td>
                                        <td class="total-line-price">
                                            <span class="order-summary-emphasis">
                                                <?php echo number_format($get['price_ship']) . ' đ'; ?>
                                            </span>
                                        </td>
                                    </tr>
                                    <?php
                                    if ($get['coupon'] != 0) {
                                        echo '<tr class="total-line total-line-shipping">
                                        <td class="total-line-name">Mã giảm giá</td>
                                        <td colspan="2" class="text-center"></td>
                                        <td class="total-line-price">
                                        <span class="order-summary-emphasis">
                                         -' . number_format(-$get['coupon']) . 'đ
                                         </span>
                                        </td>
                                        </tr>';
                                    }
                                    ?>
                                </tbody>

                                <tfoot class="total-line-table-footer">

                                    <tr class="total-line">
                                        <td class="total-line-name payment-due-label">
                                            <span class="payment-due-label-total">Tổng tiền thanh toán</span>
                                        </td>
                                        <td class="total-line-name payment-due">
                                            <span class="payment-due-price">
                                                <?php echo number_format($get['money']) . ' đ'; ?>
                                            </span>
                                            <span class="checkout_version" display:none data_checkout_version="1">
                                            </span>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                            <?php if ($get['payment'] == "Chuyển khoản qua ngân hàng") : ?>
                                <hr style="border: 1px dashed rgb(131, 131, 131); margin: 25px auto">
                                <div class="mb-3">
                                    <h2 class="title-cart mb-2">Tài khoản ngân hàng</h2>
                                    <p class="mb-2" style="color: #000;"><strong style="color:red">*Nội dung chuyển khoản:</strong> Mã đơn hàng va Số điện thoại</p>
                                    <span class="mb-2" style="color: #000;"><i class='bx bx-copy' ></i> Copy nội dung chuyển khoản: <a href="" style="color:green"><strong><?php echo $get['orderCode'] ?>va<?php echo $get['phone'] ?></strong></a></span>
                                    <p class="mt-2">- Trước hoặc sau khi chuyển khoản. Vui lòng chụp lại thông tin chuyển khoản và liên hệ cho cửa hàng qua số hotline để được xác nhân đơn hàng</p>
                                </div>
                                <table class="table table-bordered p-10 bg-white">
                                    <tr>
                                        <th class="px-2" style="width: 100px;">Ngân hàng</th>
                                        <th style="width: 200px;">Tên ngân hàng</th>
                                        <th style="width: 100px;">Số tài khoản</th>
                                    </tr>
                                    <tr>
                                        <td class="px-2"><img src="public/images/vcb.jpg" alt="" style="width: 70px;height:70px"></td>
                                        <td>
                                            <p>Ngân Hàng TMCP Ngoại Thương Việt Nam</p>
                                            <strong style="margin-top: 7px;">Chi nhánh: Bắc sài gòn</strong>
                                        </td>
                                        <td>1018660781</td>
                                    </tr>
                                    <tr>
                                        <td class="px-2"><img src="public/images/momo.png" alt="" style="width: 70px;height:70px"></td>
                                        <td>
                                            <p>Momo</p>
                                        </td>
                                        <td>0768484671</td>
                                    </tr>
                                </table>
                            <?php else : ?>

                            <?php endif; ?>
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

                        Hoàn tất đặt hàng

                    </li>

                </ul>

            </div>
            <div class="main-content">
                <div class="step">
                    <div class="section">
                        <div class="section-header">
                            <h2 class="section-title"><i class='bx bx-check-circle'></i> Đặt hàng thành công</h2>

                        </div>
                        <div class="tks-header">
                            <p>Mã đơn hàng #<?php echo $get['orderCode'] ?></p>
                            <p>Cám ơn bạn đã mua hàng!</p>
                            <h3> Chúng tôi đã gởi thông tin đơn hàng đến
                                <?php
                                if ($this->session->userdata('info-customer')) {
                                    $data = $this->session->userdata('info-customer');
                                    echo $data['email'];
                                    $this->session->unset_userdata('info-customer');
                                } else {
                                    if ($this->session->userdata('sessionKhachHang')) {
                                        $data = $this->session->userdata('sessionKhachHang');
                                        echo $data['email'];
                                    }
                                }
                                ?>
                                . Vui lòng theo dõi đơn hàng của bạn tại email.
                            </h3>
                        </div>
                        <div class="section-content section-customer-information no-mb">
                            <table class="table tks-tabele-info-cus">
                                <thead>
                                    <tr>
                                        <th colspan="2">
                                            <h2 class="title-cart">THÔNG TIN ĐẶT HÀNG</h2>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td width="200px"><strong>Ngày đặt hàng :</strong></td>
                                        <td> <?php echo date("d/m/Y  h:i:s A", strtotime($get['orderdate']));  ?></td>
                                    </tr>
                                    <tr>
                                        <td width="200px"><strong>Tên khách hàng :</strong></td>
                                        <td><?php echo $get['fullname'] ?></td>
                                    </tr>
                                    <tr>
                                        <td width="200px"><strong>Số điện thoại :</strong></td>
                                        <td><?php echo $get['phone'] ?></td>
                                    </tr>
                                    <tr>
                                        <td width="200px"><strong>Địa chỉ nhận hàng :</strong></td>
                                        <td><?php echo $get['address'] ?>, <?php echo $this->Mdistrict->district_name($get['district']) ?>, <?php echo $this->Mprovince->province_name($get['province']) ?></td>
                                    </tr>
                                    <tr>
                                        <td width="200px"><strong>Phương thức thanh toán :</strong></td>
                                        <td><?php echo $get['payment'] ?></td>
                                    </tr>
                                    <tr>
                                        <td width="200px"><strong>Ghi chú giao hàng :</strong></td>
                                        <td><?php echo $get['notes'] ?></td>
                                    </tr>
                                </tbody>
                            </table>
                           

                        </div>
                        <div class="step-footer">
                            <button onclick="window.location.href='san-pham'" class="step-footer-continue-btn">
                                <span class="btn-content">Tiếp tục mua hàng</span>
                            </button>
                            <a class="step-footer-previous-link" onclick="window.location.href='lien-he'">
                                <i class='bx bx-headphone'></i> Liên hệ hỗ trợ
                            </a>


                        </div>
                    </div>

                </div>

            </div>
        </div>

    </div>
</div>

